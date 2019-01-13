data = dlmread('file.txt', '\n');
data2 = nonzeros(data);
time = 0:1:25;

h=figure;
plot(time,data2,'r');

title("Luminescence Detected by Sensors");
xlabel("Time (s)");
ylabel("Luminescence (lx)");
ylim([0 1000]);
xlim([0 25]);
grid on;

saveas(h, 'Graph', 'jpg');