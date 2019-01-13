data = dlmread('file.txt', '\n');
data2 = nonzeros(data);
time = 0:1:25;
time2 = time.*0.2;

h=figure;
plot(time2,data2,'r');

title("Luminescence Detected by Sensors");
xlabel("Time (s)");
ylabel("Luminescence (lx)");
ylim([0 1000]);
xlim([0 5]);
grid on;

saveas(h, 'Graph', 'jpg');