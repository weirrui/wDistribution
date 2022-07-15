y=[0.3703,0.5819,0.7130,0.7985,0.3737,0.5892,0.7225,0.8088,0.3751,0.5921,0.7263,0.8128,0.3762,0.5947,0.7296,0.8163];
x=[0.3682,0.5773,0.7070,0.7921,0.3741,0.5900,0.7235,0.8098,0.3759,0.5939,0.7286,0.8152,0.3773,0.5969,0.7324,0.8193];

plot(x,y,'go','LineWidth',0.5,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',4);
hold on;
plot(y,x,'cs','LineWidth',0.5,'MarkerEdgeColor','g','MarkerFaceColor','w','MarkerSize',4);
hold on;
axis([0 1 0 1]);
grid on;
hold on;
x=0:1;
y=x;
plot(x,y);
T=legend('meanGA','midGA');
set(T,'Fontsize',10); 