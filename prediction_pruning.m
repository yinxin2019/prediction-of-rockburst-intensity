clear all;
close all;
clc;
datatraining=xlsread('C:\Users\WH\Desktop\论文资料2\训练集70%.xlsx',1,'A1:F210');
dataprediction=xlsread('C:\Users\WH\Desktop\论文资料2\测试集30%.xlsx',1,'A1:E90');
label=zeros(1,90);
count=zeros(1,210);
for i=1:210
    for j=1:210
        if datatraining(i,1)==datatraining(j,1)&&datatraining(i,2)==datatraining(j,2)&&datatraining(i,3)==datatraining(j,3)&&datatraining(i,4)==datatraining(j,4)&&datatraining(i,5)==datatraining(j,5)
            count(1,i)=count(1,i)+1;
        end
    end
end
for i=1:90
    for j=1:210
        if count(1,j)~=1
            if dataprediction(i,1)==datatraining(j,1)&&dataprediction(i,2)==datatraining(j,2)&&dataprediction(i,3)==datatraining(j,3)&&dataprediction(i,4)==datatraining(j,4)&&dataprediction(i,5)==datatraining(j,5)
                label(1,i)=datatraining(j,6);
            end
        end
        if count(1,j)==1
            if dataprediction(i,1)==datatraining(j,1)&&dataprediction(i,2)==datatraining(j,2)&&dataprediction(i,3)==datatraining(j,3)&&dataprediction(i,4)==datatraining(j,4)
                label(1,i)=datatraining(j,6);
            end
        end
    end
end

    
        
            


        
        
    