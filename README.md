# Jeson-nano
study for jetson-nano


# Use run build with cuda comfiler

'''
nvcc file_name.cu

'''


# see gpu state

'''
sudo ./tegrastats

'''

# see gpu monitor

'''
cat /sys/devices/gpu.o/load

'''


# device info



# nvida jet-pack info 

'''
Package: nvidia-jetpack
Version: 4.6-b199
Architecture: arm64
Maintainer: NVIDIA Corporation
Installed-Size: 194
Depends: nvidia-cuda (= 4.6-b199), nvidia-opencv (= 4.6-b199), nvidia-cudnn8 (= 4.6-b199), nvidia-tensorrt (= 4.6-b199), nvidia-visionworks (= 4.6-b199), nvidia-container (= 4.6-b199), nvidia-vpi (= 4.6-b199), nvidia-l4t-jetson-multimedia-api (>> 32.6-0), nvidia-l4t-jetson-multimedia-api (<< 32.7-0)
Homepage: http://developer.nvidia.com/jetson
Priority: standard
Section: metapackages

'''
