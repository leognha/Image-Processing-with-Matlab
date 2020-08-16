# Image-Processing-with-Matlab
使用Matlab來進行影像處理

# HW1
Spatial Image Enhancement

1.Power-law (gamma) transformation 目的：調整照片的明亮度，讓過曝的照片暗一點，讓曝光度不足的照片亮一點

2.Histogram equalization 目的：這種方法通常用來增加許多圖像的全局對比度，尤其是當圖像的有用數據的對比度相當接近的時候。通過這種方法，亮度可以更好地在直方圖上分布。這樣就可以用於增強局部的對比度而不影響整體的對比度，直方圖均衡化通過有效地擴展常用的亮度來實現這種功能

3.Image sharpening using the Laplacian 目的：進行圖片銳化

![image](https://github.com/leognha/Image-Processing-with-Matlab/blob/master/result/HW1.png)



# HW2
Image Sharpening

1.Laplacian 

2.Unsharp masking

3.High-boost filtering

相較於原圖，High-boost filtering還有Laplacian operator做出來的比較偏亮，blurry_moon圖經過Unsharp masking之後，影像看起來更為銳利，相比之下skeleton_orig圖做完Unsharp masking沒有預期的跟blurry_moon圖做過之後一樣銳利。
相較於spatial空間，frequency domains中做出來的圖都更為偏亮

![image](https://github.com/leognha/Image-Processing-with-Matlab/blob/master/result/HW2-1.png)
![image](https://github.com/leognha/Image-Processing-with-Matlab/blob/master/result/HW2-2.png)

# HW3
Color Image Enhancement

1.RGB

2.HSI

3.Lab

比較不同色彩空間的gamma值設定

![image](https://github.com/leognha/Image-Processing-with-Matlab/blob/master/result/HW3.png)

# HW4
Edge Detection

1.Sobel 0

2.Sobel 90

3.LOG

Sobel mask為0度，用來偵測水平的邊緣會很明顯
Sobel mask為90度，用來偵測垂直的邊緣會很明顯
當影像灰階變化 不明顯時，用Laplacian 不如用 Sobel，因為Sobel雜訊比較少

![image](https://github.com/leognha/Image-Processing-with-Matlab/blob/master/result/HW4.png)

