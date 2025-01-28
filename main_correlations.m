%% load pair-rule expression data
load('pair_rule_expression_data.mat');

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
