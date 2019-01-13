import serial #module used for working with serial inputs/outputs

serialport = "/dev/ttyACM0" #the serial port
baudrate = 9600 #serial ports rate
filename = "file.txt" #name of file

outputfile = open(filename, "w+") #opens a file
ser = serial.Serial(serialport, baudrate) #opens serial port

for x in range (0, 27): #loop that will read data
    line = ser.readline() #reads input from usb
    line = line.decode("utf-8") #decodes the data
    print(line); #prints it
    outputfile.write(line) #writes the data
