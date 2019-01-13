data = dlmread('file.txt', '\n');
time = 0:1:25;

h=figure;
plot(time,data,'r');

title("Luminescence Detected by Sensors");
xlabel("Time (s)");
ylabel("Luminescence (lx)");
ylim([0 200]);
xlim([0 25]);
grid on;

saveas(h, 'Graph', 'jpg');