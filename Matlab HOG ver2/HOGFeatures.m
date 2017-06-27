%Class: Put feature vectors. 
%Class_label: the number of image * 1 matrix. You need this Matrix for labeling in the fuction "SVMtrain"
%ima_file: The address for file that has image datas.
%label: labeling "1" or "0"
function [Class,Class_label] = HOGFeatures(ima_file,label)
dinfo = dir(strcat(ima_file,'*.BMP'));
for K = 1 : length(dinfo)
  thisfilename = dinfo(K).name;  %just the name
  Rena=imread(strcat(ima_file,thisfilename));  
  I1 = rgb2gray(imresize(Rena,[120 80]));  
  features =extractHOGFeatures(I1);
  if(K >1)
  Class_temp=cat(1,Class_temp,features);%concatnating vectors 
  else
  Class_temp=cat(1,features);%concatnating vectors 
  end
end
if(label==0)
Class_label=zeros(length(dinfo),1);
elseif(label==1)
  Class_label=ones(length(dinfo),1);  
 end
Class=Class_temp.';%transverse for svmtrain dataset
end

