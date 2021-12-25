function plot_line(time, data1, ylabeltext)

LABEL_FONT_SIZE = 16;

hold on
grid on
box on
h1 = plot(time, data1, 'lineWidth', 2);
hold off

max1 = max(data1);
max2 = max1;

min1 = min(data1);
min2 = 0;
min3 = -0.1*max([max1 max2]);
min4 = -1;

ylim([1.2*min([min1 min2 min3 min4]), 1.2*max([max1 max2])]);

%% Plot settings
set(gcf,'Color','white')
set(gcf,'Units','Pixels');
set(gcf, 'Position', [100, 100, 500, 400]);
set(gca,'fontsize',12)

%% axes config
ax = gca;
xlabel('$t$, s','Interpreter','latex')
set(get(ax,'XLabel'),'fontsize',LABEL_FONT_SIZE)
ylabel(ylabeltext,'Interpreter','latex')
set(get(ax,'YLabel'),'fontsize',LABEL_FONT_SIZE)