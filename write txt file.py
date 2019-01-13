import serial #module used for working with serial inputs/outputs

serialport = "com13" #the serial port
baudrate = 9600 #serial ports rate
filename = "file.txt" #name of file

outputfile = open(filename, "w") #opens a file
ser = serial.Serial(serialport, baudrate) #opens serial port

for x in range (0, 26): #loop that will read data
    data = ser.readline() #reads input from usb
    decodedData = data.decode("utf-8") #decodes the data
    print(decodedData);
    outputfile.write(decodedData) #writes the data
outputfile.close()
