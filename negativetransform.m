%code of taking negative transform of an image
img = imread('C:\Users\hakagunduz\Desktop\cicek.jpg');
img = rgb2gray(img); %renkli bir resim ise griye cevirmeliyiz
x = im2double(img); %0-255 arasinda olan degerler 0-1 arasina tasinmis olur
img2 = 1-x; %degerlerin tersi alinir
%img2 = 255-img de yapilabilir
figure;
subplot(1,2,1); 
imshow(img);
title('original');

subplot(1,2,2); 
imshow(img2);
title('after negative transform');

