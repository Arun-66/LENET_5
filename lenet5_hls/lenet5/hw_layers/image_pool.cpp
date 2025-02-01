/*
 * image_pool.cpp
 *s
 *  Created on: 2017. 7. 12.
 *      Author: woobes
 */


#include "image_pool.hpp"
void POOLING_LAYER_1(float src[POOL_1_TYPE * image_Batch*POOL_1_INPUT_WH * POOL_1_INPUT_WH],
					float pool_kernel[80],
					float pool_bias[POOL_1_TYPE],
					float dst[POOL_1_TYPE * image_Batch*POOL_1_OUTPUT_WH * POOL_1_OUTPUT_WH])
{
	int row, col, row_sub, col_sub, batch_cnt, depth;
	float value;
	for (batch_cnt = 0; batch_cnt < image_Batch; batch_cnt++)
	{
		for (depth = 0; depth < POOL_1_TYPE; depth++)
		{
			for (row = 0; row < POOL_1_OUTPUT_WH; row++)
			{
				for (col = 0; col < POOL_1_OUTPUT_WH; col++)
				{
					// Computation of Pooling
					value = src[(depth + POOL_1_TYPE * batch_cnt)*POOL_1_INPUT_SIZE + (row * 2) * POOL_1_INPUT_WH + (col * 2)] * pool_kernel[depth*POOL_1_SIZE+0]
						+ src[(depth + POOL_1_TYPE * batch_cnt)*POOL_1_INPUT_SIZE + (row * 2) * POOL_1_INPUT_WH + (col * 2 + 1)] * pool_kernel[depth*POOL_1_SIZE+1]
						+ src[(depth + POOL_1_TYPE * batch_cnt)*POOL_1_INPUT_SIZE + (row * 2 + 1) * POOL_1_INPUT_WH + (col * 2)] * pool_kernel[depth*POOL_1_SIZE+2]
						+ src[(depth + POOL_1_TYPE * batch_cnt)*POOL_1_INPUT_SIZE + (row * 2 + 1) * POOL_1_INPUT_WH + (col * 2 + 1)] * pool_kernel[depth*POOL_1_SIZE+3];

					value *= 2.7;

					// Activation function
					dst[(batch_cnt * POOL_1_TYPE + depth)*POOL_1_OUTPUT_SIZE + row * POOL_1_OUTPUT_WH + col] = (value + pool_bias[depth]);
				}
			}
		}
	}
}

void POOLING_LAYER_2(float src[POOL_2_TYPE * image_Batch*POOL_2_INPUT_WH * POOL_2_INPUT_WH],
					float pool_kernel[POOL_2_TYPE*POOL_2_SIZE],
					float pool_bias[POOL_2_TYPE],
					float dst[POOL_2_TYPE * image_Batch *POOL_2_OUTPUT_WH * POOL_2_OUTPUT_WH])
{
	int row, col, row_sub, col_sub, batch_cnt, depth;
	float value;
	for (batch_cnt = 0; batch_cnt < image_Batch; batch_cnt++)
	{
		for (depth = 0; depth < POOL_2_TYPE; depth++)
		{
			for (row = 0; row < POOL_2_OUTPUT_WH; row++)
			{
				for (col = 0; col < POOL_2_OUTPUT_WH; col++)
				{
					// Computation of Pooling
					value = src[(depth + POOL_2_TYPE * batch_cnt)*POOL_2_INPUT_SIZE + (row * 2) * POOL_2_INPUT_WH + (col * 2)] * pool_kernel[depth*POOL_2_SIZE+0]
						+ src[(depth + POOL_2_TYPE * batch_cnt)*POOL_2_INPUT_SIZE + (row * 2) * POOL_2_INPUT_WH + (col * 2 + 1)] * pool_kernel[depth*POOL_2_SIZE+1]
						+ src[(depth + POOL_2_TYPE * batch_cnt)*POOL_2_INPUT_SIZE + (row * 2 + 1) * POOL_2_INPUT_WH + (col * 2)] * pool_kernel[depth*POOL_2_SIZE+2]
						+ src[(depth + POOL_2_TYPE * batch_cnt)*POOL_2_INPUT_SIZE + (row * 2 + 1) * POOL_2_INPUT_WH + (col * 2 + 1)] * pool_kernel[depth*POOL_2_SIZE+3];

					value *= 2.7;

					// Activation function
					dst[(batch_cnt * POOL_2_TYPE + depth)*POOL_2_OUTPUT_SIZE + row * POOL_2_OUTPUT_WH + col] = (value + pool_bias[depth]);
				}
			}
		}
	}
}


/*
void MAXPOOL_1(float OutputBuffer[image_Batch][6][28*28], float dst[image_Batch*6*14*14]){
	#pragma HLS INLINE
	for(int batch=0;batch<image_Batch;batch++){
		for(int depth=0;depth<POOL_1_TYPE;depth++){
			for(int row=0;row<POOL_1_OUTPUT_WH;row++){
				for(int col=0;col<POOL_1_OUTPUT_WH;col++){
					#pragma HLS pipeline
					float max1, max2, max;
					float a00, a01, a10, a11;
					int rr = row<<1;
					int cc = col<<1;
					a00 = OutputBuffer[batch][depth][rr*28+cc];
					a01 = OutputBuffer[batch][depth][rr*28+cc+1];
					a10 = OutputBuffer[batch][depth][(rr+1)*28+cc];
					a11 = OutputBuffer[batch][depth][(rr+1)*28+cc+1];
					max1 = a00 > a01 ? a00 : a01;
					max2 = a10 > a11 ? a10 : a11;
					max  = max1 > max2 ? max1 : max2;

					
					for(int row_w=0;row_w<2;row_w++){
						for(int col_w=0;col_w<2;col_w++){
							if(src[batch*POOL_1_TYPE*POOL_1_INPUT_SIZE + depth*POOL_1_INPUT_SIZE +
								(2*row+row_w)*POOL_1_INPUT_WH + col*2+col_w]>max){
								max = src[batch*POOL_1_TYPE*POOL_1_INPUT_SIZE + depth*POOL_1_INPUT_SIZE +
											(2*row+row_w)*POOL_1_INPUT_WH + col*2+col_w];
							}
						}
					}
					dst[batch*POOL_1_TYPE*POOL_1_OUTPUT_SIZE + depth*POOL_1_OUTPUT_SIZE + row*POOL_1_OUTPUT_WH + col] = _tanh(max);
				}
			}
		}
	}
}
void MAXPOOL_2(float OutputBuffer[image_Batch][16][10*10], float dst[image_Batch*16*5*5]){
	#pragma HLS INLINE
	for(int batch=0;batch<image_Batch;batch++){
		for(int depth=0;depth<POOL_2_TYPE;depth++){
			for(int row=0;row<POOL_2_OUTPUT_WH;row++){
				for(int col=0;col<POOL_2_OUTPUT_WH;col++){
					#pragma HLS pipeline

					float max1, max2, max;
					float a00, a01, a10, a11;
					int rr = row<<1;
					int cc = col<<1;
					a00 = OutputBuffer[batch][depth][rr*10+cc];
					a01 = OutputBuffer[batch][depth][rr*10+cc+1];
					a10 = OutputBuffer[batch][depth][(rr+1)*10+cc];
					a11 = OutputBuffer[batch][depth][(rr+1)*10+cc+1];
					max1 = a00 > a01 ? a00 : a01;
					max2 = a10 > a11 ? a10 : a11;
					max  = max1 > max2 ? max1 : max2;

					
					for(int row_w=0;row_w<2;row_w++){
						for(int col_w=0;col_w<2;col_w++){
							if(src[batch*POOL_1_TYPE*POOL_1_INPUT_SIZE + depth*POOL_1_INPUT_SIZE +
								(2*row+row_w)*POOL_1_INPUT_WH + col*2+col_w]>max){
								max = src[batch*POOL_1_TYPE*POOL_1_INPUT_SIZE + depth*POOL_1_INPUT_SIZE +
											(2*row+row_w)*POOL_1_INPUT_WH + col*2+col_w];
							}
						}
					}
					dst[batch*POOL_2_TYPE*POOL_2_OUTPUT_SIZE + depth*POOL_2_OUTPUT_SIZE + row*POOL_2_OUTPUT_WH + col] = _tanh(max);
					max=-FLT_MAX;
					for(int row_w=0;row_w<2;row_w++){
						for(int col_w=0;col_w<2;col_w++){
							if(src[batch*POOL_2_TYPE*POOL_2_INPUT_SIZE + depth*POOL_2_INPUT_SIZE +
								(2*row+row_w)*POOL_2_INPUT_WH + col*2+col_w]>max){
								max = src[batch*POOL_2_TYPE*POOL_2_INPUT_SIZE + depth*POOL_2_INPUT_SIZE +
											(2*row+row_w)*POOL_2_INPUT_WH + col*2+col_w];
							}
						}
					}
					dst[batch*POOL_2_TYPE*POOL_2_OUTPUT_SIZE + depth*POOL_2_OUTPUT_SIZE + row*POOL_2_OUTPUT_WH + col] = max;
				}
			}
		}
	}
}
*/
