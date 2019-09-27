%logaritmic transform of an image
%log transform is s = c*log(1+r)
a = imread('C:\Users\bengisu\Desktop\cicek.jpg');
a = rgb2gray(a); %renkli bir resim ise griye cevirmeliyiz
adouble = im2double(a);
s = adouble;
[r,m] = size(adouble);
c=5; %if this value becomes larger, the color of the image becomes lighter
for i=1:r
    for j=1:m
        s(i,j) = c*log(1+adouble(i,j));
    end
end
subplot(1,2,1);
imshow(adouble);
title('original');

subplot(1,2,2);
imshow(s);
title('after logaritmic transform');