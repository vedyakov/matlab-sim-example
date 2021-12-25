function saveme(name)
    FOLDER = './fig/';
    print(gcf,strcat(FOLDER, name, '.png'),'-dpng');
    print(gcf,strcat(FOLDER, name, '.eps'),'-depsc');