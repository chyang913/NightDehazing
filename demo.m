clc; clear all; close all;

img = im2double(imread('data/070.jpg'));

param.gamma = 0.5 ;
param.sky = 1 ;
param.dcp = 0.95;

dh_img = dehaze_imp(img,param);   

outputDir='output/'; 
if ~exist(outputDir, 'dir')
    mkdir(outputDir)
end   
imwrite(dh_img,[outputDir 'Result_dehazed.png']); 