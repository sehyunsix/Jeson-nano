#include <iostream>
#include <cuda_runtime.h>
#include <math.h>
#include <stdlib.h>

// Kernel function to add the elements of two arrays
__global__ void addNums(int *output, int *x, int *y, int num_iters) {
  for (int i = 0; i < num_iters; i++) {
    output[i] = x[i] + y[i];
  }
}

int main() {
  // Declare the variables
  int num_iters = 12000000;
  int *x;
  int *y;
  int *output;
  
  // Seeding the random number generator
  srand(10);

  std::cout << "Hello World, this is CUDA sample code" << std::endl;
  
  // Declare the memory size for the variables from the unified memory location accessible from CPU or GPU
  cudaMallocManaged(&x, num_iters*sizeof(int));
  cudaMallocManaged(&y, num_iters*sizeof(int));
  cudaMallocManaged(&output, num_iters*sizeof(int));

  // Initialization with random numbers
  for (unsigned int i = 0; i < num_iters; i++) {
    output[i] = 0;
    x[i] = rand();
    y[i] = rand();
  }

  // Run the kernel function on each 64 threads on 32 blocks of the GPU
  addNums<<<32, 64>>>(output, x, y, num_iters);

  // Synchronization between the CPU and GPU (CPU waiting for GPU to finish before accessing the memory)
  cudaDeviceSynchronize();

  // Releasing the memory
  cudaFree(x);
  cudaFree(y);

  std::cout << "Code Execution Completed" << std::endl;  

  return 0;
}
