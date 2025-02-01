#ifndef SRC_HW_LAYERS_IMAGE_FULLYCONNECTED_H_
#define SRC_HW_LAYERS_IMAGE_FULLYCONNECTED_H_

#include "activation.h"

inline void FULLY_CONNECTED_LAYER_1(float *input_feature, float *weights, float *bias,
                             float *output_feature) {
  for (int batch = 0; batch < image_Batch; batch++) {
    for (int j = 0; j < OUTPUT_NN_1_SIZE; j++) {
      float temp = 0;
      for (int i = 0; i < INPUT_NN_1_SIZE; i++) {
        temp += input_feature[batch * INPUT_NN_1_SIZE + i] *
                weights[i * OUTPUT_NN_1_SIZE + j];
      }
      output_feature[batch * OUTPUT_NN_1_SIZE + j] = tanh(temp + bias[j]);
    }
  }
}

inline void FULLY_CONNECTED_LAYER_2(float* input_feature, float* weights, float* bias, float* output_feature) {
    for (int batch = 0; batch < image_Batch; batch++) {
        for (int j = 0; j < OUTPUT_NN_2_SIZE; j++) {
            float temp = 0;
            for (int i = 0; i < INPUT_NN_2_SIZE; i++) {
                temp += input_feature[batch * INPUT_NN_2_SIZE + i] * weights[i * OUTPUT_NN_2_SIZE + j];
            }
            output_feature[batch * OUTPUT_NN_2_SIZE + j] = tanh(temp + bias[j]);
        }
    }
}

#endif /* SRC_HW_LAYERS_IMAGE_FULLYCONNECTED_H_ */
