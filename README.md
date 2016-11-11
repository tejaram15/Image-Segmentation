# Image-Segmentation

This Project is Based On Image Segmentation Using K-th Mean Paths And Cuckoo Optimization

Consists of Two Steps : 1. Segment The Image Using LAB field
                        2. Apply Cuckoo Optimization On the Fields Of a* and b*
                        
Let's Start.....

What is Segmentation??

In computer vision, image segmentation is the process of partitioning a digital image into multiple segments (sets of pixels, also known as super-pixels). The goal of segmentation is to simplify and/or change the representation of an image into something that is more meaningful and easier to analyze. Image segmentation is typically used to locate objects and boundaries (lines, curves, etc.) in images. More precisely, image segmentation is the process of assigning a label to every pixel in an image such that pixels with the same label share certain characteristics.
The result of image segmentation is a set of segments that collectively cover the entire image, or a set of contours extracted from the image (see edge detection). Each of the pixels in a region are similar with respect to some characteristic or computed property, such as color, intensity, or texture.

What Have I Done??

The Tutorial For Image Segmentation Is present in the following link  
https://in.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.html

I used The segmentation Technique implemented in there and used it to extract out nucleus out of a nornmal image which is very difficult for a human to recognize.

What is Optimization For??

The rest Two Segments That I have extracted Are Still in a* an b* layers and still Need filtering. Hence The Optimization.
Segmented Images 2 and 3 are used in this Process.
Initially, They are converted into Gray Scale for further conversion into a Binary Image. Next A Thresholding Function Is made to extract the Binary Image Out of the Gray Scale Image by a Thresholding Limit (set Manually). Next A centre of mass of matrix is Assumed where image can be compared with all the centre matrix values.
Next after all the images Have been extracted i Used The mean of the image to exactly rank these images into their respective clarity.
i.e. rank 1  implies maximum clarity and clear object detection and so on.

Thank You!!!
