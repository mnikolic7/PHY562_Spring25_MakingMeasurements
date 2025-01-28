%% load pair-rule expression data
load('pair_rule_expression_data.mat');

%% inspect data
figure(1)
subplot(3,1,1)
pcolor(profiles_eve);
shading flat
xlabel('Embryo #');
ylabel('x_{AP}')
title('Eve');
subplot(3,1,2)
pcolor(profiles_run);
shading flat
xlabel('Embryo #');
ylabel('x_{AP}')
title('Run');
subplot(3,1,3)
pcolor(profiles_prd);
shading flat
xlabel('Embryo #');
ylabel('x_{AP}')
title('Prd');
