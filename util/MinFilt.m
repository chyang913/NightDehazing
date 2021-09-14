function Y = MinFilt(X,N)
% 2-D minimum filter using van-Herk algorithm
% M. van Herk. A fast algorithm for local minimum and maximum filters on rectangular and
% octagonal kernels. Pattern Recognition Letters, 13:517–521, 1992.
% Source code is from https://github.com/CharlesThaCat/Image-Haze-Removal-using-Dark-Channel-Prior

% X is the input 2-D array
% N is the 2-D patch size
% Y is the minimum
Y = VanHerkMin(X,N(1),'row');
Y = VanHerkMin(Y,N(2),'column');
    
end