function [darkchannel] = DarkCh_VanHerk(I,patch_size)

[height, width , ~] = size(I) ;
darkchannel = zeros(height,width);

% local minima for each patch in RGB channel
darkchannel_r = MinFilt(I(:,:,1),[patch_size patch_size]);
darkchannel_g = MinFilt(I(:,:,2),[patch_size patch_size]);
darkchannel_b = MinFilt(I(:,:,3),[patch_size patch_size]);

for index1 = 1:height
    for index2 = 1:width
        darkchannel(index1,index2) = min([darkchannel_r(index1,index2) darkchannel_g(index1,index2) darkchannel_b(index1,index2)]);
    end
end

darkchannel = double(darkchannel);

end