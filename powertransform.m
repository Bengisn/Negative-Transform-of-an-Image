%power transform of an image
%power transform is s = c*r^(gama)
a = imread('C:\Users\bengisu\Desktop\cicek.jpg');
a = rgb2gray(a); %renkli bir resim ise griye cevirmeliyiz
adouble = im2double(a);
s = adouble;
[r,m] = size(adouble);
gama =25;
c=5; %if this value becomes lower, the color of the image becomes lighter
for i=1:r
    for j=1:m
        y(i,j) = c*adouble(i,j)^gama;
    end
end
imshow(y);
