#ifndef SRC_LENET_HW
#define SRC_LENET_HW
#include "lenet5.hpp"

void lenet5(const float input_layer[1024],float* output){
    
			// C1 layer
            int init;
            float hconv1[4704];
            //const float Wconv1[5*6*6];
            const float bconv1[6] = {0.34925276041030884, 0.058789052069187164,-0.22481143474578857,
            0.45725134015083313, 0.10920273512601852, -0.08921370655298233};
			//c1_start=clock();
			CONVOLUTION_LAYER_1(input_layer,Wconv1,bconv1,hconv1, init);
			//c1_stop = clock();
			//v_c1.push_back(c1_stop-c1_start);
			// S1 layer
            //float Wpool1[24];
            float bpool1[6] = {-0.016235975548624992, 0.050331335514783859, -0.064159378409385681,
            0.0054508396424353123, -0.0061744539998471737, -0.11107345670461655};
            float pool1[1176];

			POOLING_LAYER_1(hconv1,Wpool1,bpool1,pool1);

			// C2 layer
			//c2_start=clock();
            
            //float Wconv2[2400];
            float bconv2[16] = {0.17642463743686676025390625000000000000,0.01271331496536731719970703125000000000,0.10632470250129699707031250000000000000,-0.01368130743503570556640625000000000000,
0.00646363152191042900085449218750000000,0.08483800292015075683593750000000000000,0.05432325974106788635253906250000000000,-0.02306069061160087585449218750000000000,
0.07255654036998748779296875000000000000,-0.06974497437477111816406250000000000000,0.11515636742115020751953125000000000000,-0.04564343392848968505859375000000000000,
0.20582877099514007568359375000000000000,0.13690567016601562500000000000000000000,-0.09070850163698196411132812500000000000,-0.10302059352397918701171875000000000000};
            float hconv2[1600];

			CONVOLUTION_LAYER_2(pool1,Wconv2,bconv2,hconv2,init);
			//c2_stop = clock();
			//v_c2.push_back(c2_stop-c2_start);
			// S2 layer
            //float Wpool2[80];
            float bpool2[16]= {0.13005301356315613, 0.089463308453559875, 0.11745183169841766, -0.17674651741981506,
            0.18649780750274658, -0.063754260540008545,-0.094259373843669891,-0.0069458158686757088,
            0.05779566615819931,0.14066022634506226, 0.023619139567017555, -0.036502178758382797,
            0.12824559211730957, 0.08956446498632431, -0.086513273417949677,0.24082745611667633};
            float pool2[400];
            
			POOLING_LAYER_2(hconv2,Wpool2,bpool2,pool2);

			// C3 layer
			//c3_start=clock();
            
            //float Wconv3[48000];
            //float bconv3[120];
            float hconv3[120];
			CONVOLUTION_LAYER_3(pool2,Wconv3,bconv3,hconv3,init);
			//c3_stop=clock();
			//v_c3.push_back(c3_stop-c3_start);
			// FC1 layer
            //float *Wfc1;
            //float *bfc1; 
            float *hfc1;

			FULLY_CONNECTED_LAYER_1(hconv3,Wfc1,bfc1,hfc1);
            //float *Wfc2;
            //float *bfc2; 

			// FC2 layer
			FULLY_CONNECTED_LAYER_2(hfc1,Wfc2,bfc2,output);
  
}



#endif