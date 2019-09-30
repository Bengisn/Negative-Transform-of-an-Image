%imadjust degerleri 0-1 arasina ceviriyor
%imhist, imadjust, im2bw
a = imread('C:\Users\bengisu\Desktop\cicek.jpg');
a = rgb2gray(a); %renkli bir resim ise griye cevirmeliyiz
imhist(a);
b = imadjust(a, [0.5,0.9],[0.3,0.4]);
% b = imadjust(a, [0,1],[1,0]); %aslinda resmi negatife cevirmis oluyor
figure;
imshow(b);
k = imadjust(a,[],[],1); %[] = default values, gama value = 1
% k1 = imadjust(a,[],[],4);
% k2 = imadjust(a,[],[],0.5);
figure
imshow(k);
figure
imshow(k1);
figure
imshow(k2);
d = im2bw(a);
imshow(d);

 
