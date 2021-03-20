myData(:,1)=[726792 726793 726794 726796 726799 726800 726801 726802 ];
myData(:,2)=[1 1 1 -1 -1 1 1 -1];
plot (myData(:,1),myData(:,2))
axis([min(myData(:,1)) max(myData(:,1)) -2 2])
datetick('x','mmmyyyy')
 ax = gca;
 ax.YTick      = [-1,1];
 ax.YTickLabel = {'contango','backwardation'};