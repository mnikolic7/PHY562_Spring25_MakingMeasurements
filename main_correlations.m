% The dataset includes measurements of gene expression in the fruit fly
% embryo during the period between 2 and 3 hours post-fertilization.
%
% During this period, the embryo consists of approximately 6,000 identical nuclei,
% arranged in a 2D lattice along the embryo surface. The cell membrane
% begins to form during nuclear cycle 14, taking 60 minutes to fully develop
% between all nuclei.
%
% Gene expression is measured by fixing the embryos (hence, the data
% represents a single snapshot for each embryo) and performing
% immunofluorescence staining of three proteins: Even-skipped, Runt, and
% Paired. All three proteins are imaged in the same embryo using three
% different fluorescence channels, and multiple embryos (N=109) are analyzed.
%
% For each embryo, we examine a single optical section through the middle
% of the embryo (midsagittal plane), which cuts through the 2D array of nuclei.
% We focus on the dorsal side, which appears as a straight line in our images,
% with fluorescence intensity varying in the characteristic patterns of the
% three proteins studied.
%
% An image processing protocol was used to extract fluorescence
% intensity along the dorsal side of the embryo. We analyze the
% fluorescence intensity of all three proteins as a function of the scaled
% position in the embryo, where 0 corresponds to the anterior and 1 to the
% posterior.
%
% The variables profiles_'gene' are 1000×109 arrays, where the i^th column
% represents the fluorescence intensity as a function of the scaled position
% (1000 positions from 0 to 1) in the i^th embryo. Each column corresponds to
% one embryo.
%
% The "age" of the embryo is defined as the time within nuclear cycle 14
% (following 13 synchronized divisions post-fertilization). Nuclear cycle 14
% is the longest, lasting approximately 60 minutes. The variable 'age'
% contains the experimentally determined time within nuclear cycle 14, which
% we estimate for each embryo by measuring the progress of cell membrane
% formation.

%% load pair-rule expression data
load('pair_rule_expression_data.mat');

x=(1:1000)./1000;
%% inspect data
figure(1)
subplot(3,1,1)
pcolor(age,x,profiles_eve);
shading flat
xlabel('Embryo #');
ylabel('x_{AP}')
title('Eve');

axis([0 60 0.3 0.85])
subplot(3,1,2)
pcolor(age,x,profiles_run);
shading flat
xlabel('Embryo #');
ylabel('x_{AP}')
title('Run');

axis([0 60 0.3 0.85])
subplot(3,1,3)
pcolor(age,x,profiles_prd);
shading flat
xlabel('Embryo #');
ylabel('x_{AP}')
title('Prd');
axis([0 60 0.3 0.85])

% Assignment:
% 1. Fit the 1D expression profiles, and find the center of each of the 
%    seven stripes for all three genes.
% 
% 2. Correct the position of each stripe to a position that it was at some 
%    reference point.
% 
% 3. Calculate the correlations in the (corrected) positions. Plot the
%    correlations as a function of the distance in their positions? 
%    How far are the fluctuations in stripe position correlated?
% 
% Note 1:
% for the rest of the exercise, it is recommended to use only the relevant 
% portion of the profiles where the stripes are visible: ~0.3 - 0.85 x.
% Note 2: 
% The expression of eve, run and prd genes takes time. By ~30 min in n.c.14
% the expression of eve is high enough so that we can clearly see the 7
% striped pattern of Eve protein. This happens a bit later for Run and Prd,
% and you will have to decide in which Run and Prd profiles you are able to
% use for the process of localizing the position of the 7 stripes. 
% Note 3:
% Paired (Prd) has an additional but distinguishable small expression
% stripe/peak appearing between the first and the second stripe in the very
% late embryos. You can (and should) ignore it in your analysis, but you
% should be careful about how it might affect your analysis protocol.


