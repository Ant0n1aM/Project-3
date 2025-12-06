% Changing colors in a logo
logo = imread('Pepsi_Logo_New.jpg');
%Save the three layers of the array to three different
%  two-dimensional arrays: "red", "green", and "blue"
red = logo(:,:,1);
green = logo(:,:,2);
blue = logo(:,:,3);
% Use subplot to show the original image
subplot(1,2,1)
imshow("Pepsi_Logo_New.jpg")
% Modify the image so the black pixels are lime green
black = red < 50 & green < 50 & blue < 50;
red(black) = 0;
green(black) = 255;
blue(black) = 0;
logo(:,:,1) = red;
logo(:,:,2) = green;
logo(:,:,3) = blue;
% Modify the image so the white pixels are purple
white = red > 240 & green > 240 & blue > 240;
red(white) = 153;
green(white) = 51;
blue(white) = 255;
logo(:,:,1) = red;
logo(:,:,2) = green;
logo(:,:,3) = blue;
% Modify the image so the blue pixels are pink
blue1 = red < 50 & green < 50 & blue > 100;
red(blue1) = 255;
green(blue1) = 0;
blue(blue1) = 127;
logo(:,:,1) = red;
logo(:,:,2) = green;
logo(:,:,3) = blue;
% % Modify the image so the red pixels are aqua
% red = red > 200 & green < 100 & blue < 100;
% red(blue1) = 0;
% green(blue1) = 255;
% blue(blue1) = 255;
% logo(:,:,1) = red;
% logo(:,:,2) = green;
% logo(:,:,3) = blue;
subplot(2,2,2)
imshow(logo)