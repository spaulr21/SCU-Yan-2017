
CellSize = 8;
BlockSize = 2;

%reading image data of class1. If you use this program in your own PC,
%you need to change the file adress.
class1 ='C:\Users\BIEO101\Desktop\test\bikes\';
[Class1,Class1_label]=HOGFeatures(class1,1);
class2 ='C:\Users\BIEO101\Desktop\test\bikes_and_persons\';
[Class2,Class2_label]=HOGFeatures(class2,0);


Class_label=cat(1,Class1_label,Class2_label); %modifing the feature matrix for svmtrain.
Class_data=cat(2,Class1,Class2);%modifing the feature matrix for svmtrain.

SVMstruct = svmtrain(Class_data,Class_label); % traing data

line(SVMstruct);



%Rena=imread('C:\Users\BIEO101\Desktop\test\else\Lenna.png'); 
%  I1 = rgb2gray(imresize(Rena,[120 80]));  
%features =extractHOGFeatures(I1);
%output the recognizing data. 1 or 0
%svmclassify(SVMstruct,features)






