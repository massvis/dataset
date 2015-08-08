% Zoya Bylinskii, Aug.7,2015

load('targets410_metadata.mat');
% also, make sure you have the 'targets' folder with all the visualizations
% or move to that directory

%% compute different scores

hm = [allImages().hits]+[allImages().misses];
fc = [allImages().false_alarms]+[allImages().correct_rejections];

HR = [allImages().hits]./(hm); % hit rate scores
FAR = [allImages().false_alarms]./(fc); % false alarm rate scores
ACC = ([allImages().hits]+[allImages().correct_rejections])./(hm+fc); % accuracy scores

DPRIME = nan(1,length(allImages)); % dprime scores
MI = nan(1,length(allImages)); % mutual information scores
reg = 0.1; % regularization for MI calculation
for i = 1:length(allImages)
   DPRIME(i) = dprime(HR(i),FAR(i),hm(i),fc(i)); 
   pmf = [allImages(i).correct_rejections, allImages(i).misses; ...
          allImages(i).false_alarms, allImages(i).hits] + reg;
   pmf = pmf./sum(pmf(:));
   MI(i) = calcMI(pmf);
end

%% show the top N and bottom N images according to some score

score = DPRIME; % score to use (one of HR, FAR, ACC, DPRIME, or MI)
N = 30; % number of visualizations to plot

dim1 = floor(sqrt(N)); dim2 = ceil(N/dim1);

[~,ind] = sort(score,'descend'); 

% NOTE: function 'subplottight' is a function from the LabelMeToolbox: 
% http://labelme2.csail.mit.edu/Release3.0/browserTools/php/matlab_toolbox.php
% either install this toolbox, or replace 'subplottight' below with 'subplot'

figure('name','top scores');
for i = 1:N
   subplottight(dim1,dim2,i); imshow(allImages(ind(i)).impath); 
end

figure('name','bottom scores');
for i = 1:N
   subplottight(dim1,dim2,i); imshow(allImages(ind(end-i+1)).impath); 
end



