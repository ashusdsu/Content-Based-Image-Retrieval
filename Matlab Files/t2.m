function bdip = t2(I)
%this function is used to calculate the bdip of the image.
%this will give us the feature extraction for the texture.
clc;
I = rgb2gray(I);
s=size(I);

w=1;         
bs=2;     
k = 0;
for i=w: bs : (s(1)-w)
  for j=w : bs : (s(2)-w)
        k =k +1;
       bl(:,:,k)=I((i):(i+1),(j):(j+1));
       cx(k) = mean(mean(bl(:,:,k)),2);
       mx(k) = max(max(bl(:,:,k)));
       sb(k) = sum(sum(bl(:,:,k)),2);
       di(k) = sb(k)/mx(k);
        
           d(k) = 4 - double(sb(k))/double(mx(k));
           
            bdip(i,j) = d(k)*100;
            du = cast(bdip,'uint8');
            
            
    end
end
end