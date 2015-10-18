function [  ] = plot_candle( asset )

    colors = ['g' 'b', 'r'];
    O = asset.open;
    H = asset.high;
    L = asset.low;
    C = asset.close;
    V = asset.turn;
    
    w = 0.35;
    date = (1:length(O))';
    n = length(date);
    indColor = 1 + 2*(C>O) + 1*(C==O);
    
    figure; 
    h1 = subplot(2,1,1);
    title(asset.code)
    hold on;
    for i = 1 : n
        c = colors(indColor(i));
        line([date(i) date(i)],[L(i) H(i)],'Color', c);
        x=[date(i)-w date(i)-w date(i)+w date(i)+w date(i)-w];
        y=[O(i) C(i) C(i) O(i) O(i)];
        fill(x, y, c, 'EdgeColor', c)
    end
    hold off;
    
    h2 = subplot(2,1,2);
    hold on;
    for i = 1 : n
        c = colors(indColor(i));
        x=[date(i)-w date(i)-w date(i)+w date(i)+w date(i)-w];
        y=[0 V(i) V(i) 0 0];
        fill(x, y, c, 'EdgeColor', c)
    end
    hold off;
    set(h1, 'position',[0.05 0.45 0.9 0.5], 'XTickLabel', [], 'xtick', []);
    set(h2, 'position',[0.05 0.05 0.9 0.38]);
end

