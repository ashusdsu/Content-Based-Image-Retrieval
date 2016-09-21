function bvl = bvlc(Im)
%this is to find out the BVLC of the image
clc;
B=imresize(Im,[121 134]);
B= rgb2gray(B);
I = im2double(B);

s = size(I);
I = padarray( I, [1 1]);
w=1;
c = 2;
bs=2;
k=0;
sx = 0;
m=0;
for i=2: bs : (s(1))
        for j=2: bs : (s(2))
            m = m+1;
            sx = 0;
            z = 1;
        for km = -1:1:1
            for lm = 0:1:1
                
                if ((lm == 0) && (km == -1)) || ((km == 0) && (lm == 0))
                continue ;
                end
               
                k = k +1;
            bl(:,:,m)=I((i):(i+1),(j):(j+1));
            kmi = km + i;
            lmj = lm + j;
            bx(:,:,k)=I((kmi):(kmi+1),(lmj):(lmj+1));
           for x=i:1:i+1
            for y=j:1:j+1                                   % this is for sx calculation 
                sx = sx + I(x,y)*I(x+km,y+lm);
            end 
           end
           sxa(k) = sx;
           abl = reshape(bl(:,:,m),1,4);
           abx = reshape(bx(:,:,k),1,4);
           ma(k) = mean(abl);                            %this is for mean calculation 
           mb(k) = mean(abx);
           mx(k) = ma(k)*mb(k);       
           da(k) = std(abl,0,2);  
           db(k) = std(abx,0,2);
           dx(k) = da(k)*db(k);                                     %this is for standard deviation calculation 
           px(m,z) = (sx-mx(k))/(4*dx(k));                       %this is the main eqn calculation 
           z = z + 1;
           %if (px(m,z) == Inf)
            %   px(m,z) = 0;
            %end 
            end
        end
        px(isinf(px)) = 0;
        px(isnan(px)) = 0;
    bv(m) = max(px(m,1:4))-min(px(m,1:4));
    
    end 
end
m = 1;
for ix = 1:1:(s(1)/2)
    for jy = 1:1:(s(2)/2)
    bvl(ix,jy) = bv(m);
    m = m+1;
    end 
end 
end
% dr = typecast(bv,'uint8');