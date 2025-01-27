%% load pair-rule expression data
load('pair_rule_expression_data.mat');

age=[data.age];
profiles_eve=horzcat(data.eve);
profiles_run=horzcat(data.run);
profiles_prd=horzcat(data.prd);
%% inspect data
figure(1)
subplot(3,1,1)
imagesc(profiles_eve);
xlabel('Embryo #');
ylabel('x_{AP}')
title('Eve');
subplot(3,1,2)
imagesc(profiles_run);
xlabel('Embryo #');
ylabel('x_{AP}')
title('Run');
subplot(3,1,3)
imagesc(profiles_prd);
xlabel('Embryo #');
ylabel('x_{AP}')
title('Prd');