
%test
CellSize = 8;
BlockSize = 2;

%reading image data of class1
class1 ='C:\Users\BIEO101\Desktop\test\';
dinfo = dir(strcat(class1,'*.png'));

for K = 1 : length(dinfo)
  thisfilename = dinfo(K).name;  %just the name
  Rena=imread(strcat(class1,thisfilename)); 
  I1 = rgb2gray(Rena);    
  if(K >1)
  Class1=cat(1,Class1,features);%concatnating vectors 
  else
  Class1=cat(1,features);
  end
end
Class1_label=zeros(length(dinfo),1);
Class1=Class1.';%transverse for svmtrain dataset

 
%reading image data of class1
class2 ='C:\Users\BIEO101\Desktop\test\';
dinfo = dir(strcat(class2,'*.png'));
for K = 1 : length(dinfo)
  thisfilename = dinfo(K).name;  %just the name
  Rena=imread(strcat(class2,thisfilename)); 
  I1 = rgb2gray(Rena);    
  if(K >1)
  Class2=cat(1,Class2,features);%concatnating vectors 
  else
  Class2=cat(1,features);
  end
end
Class2_label=ones(length(dinfo),1);
Class2=Class2.';%transverse for svmtrain dataset

 
Class_label=cat(1,Class1_label,Class2_label);

Class_data=cat(2,Class1,Class2);
SVMstruct = svmtrain(Class_data,Class_label);
