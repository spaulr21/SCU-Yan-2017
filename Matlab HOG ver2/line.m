function line(SVMstruct)
Rena=imread('C:\Users\BIEO101\Desktop\test\else\bike_369.bmp'); 
I1 = rgb2gray(Rena);  
HOG_WIDTH=80;
HOG_HEIGHT=120;
  display1=Rena;
display=zeros([HOG_HEIGHT,HOG_WIDTH],class(Rena));

    for jj=0:size(I1,1)/HOG_HEIGHT
        for ii=0:size(I1,2)/HOG_WIDTH
      
            if(ii*HOG_WIDTH+HOG_WIDTH<size(I1,2)&&jj*HOG_HEIGHT+HOG_HEIGHT<size(I1,2))
       display =Rena(1+jj*HOG_HEIGHT:jj*HOG_HEIGHT+HOG_HEIGHT+1,ii*HOG_WIDTH+1:ii*HOG_WIDTH+HOG_WIDTH+1,:); 
       features =extractHOGFeatures(display);
       if(svmclassify(SVMstruct,features)==1)
       display1=insertShape(display1,'Polygon',[ii*HOG_WIDTH,jj*HOG_HEIGHT,ii*HOG_WIDTH+HOG_WIDTH,jj*HOG_HEIGHT,ii*HOG_WIDTH+HOG_WIDTH,jj*HOG_HEIGHT+HOG_HEIGHT,ii*HOG_WIDTH,jj*HOG_HEIGHT+HOG_HEIGHT],'LineWidth',5,'Color','blue');
       end
    end
 imshow(display1); 
    pause(0.2);
        end
    end
end