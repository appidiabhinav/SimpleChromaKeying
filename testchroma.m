name_  = {'copter.jpg','men.jpg','mcgregor.jpg','lion.jpg'};

for name = name_
    name = cell2mat(name);
    I=imread(name);I_=I;
    [h,s,v]=rgb2hsv(I);
    msk = (h>0.22 & h<0.45);
    I(find(msk(:))+numel(msk)*0)=0;I(find(msk(:))+numel(msk)*1)=0;I(find(msk(:))+numel(msk)*2)=0;
    imshow(cat(2,I_,I));
    pause
    % imwrite(I,[name(1:end-4) '_GRN' name(end-3:end)]);
end