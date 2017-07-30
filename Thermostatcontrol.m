%Script written by Samuel John, verified by Elisabeth Steel

%Matlab script takes input from the sensor and controls the thermostat using a
%stepper motor and arduino

n = 0; %position values for the servo motor

%creating an object for the arduino
f = arduino('COM3', 'Mega2560', 'Libraries', 'Adafruit\MotorShieldV2');

%creating an object for the shield
shielde = addon(f, 'Adafruit\MotorShieldV2') ; %initialising the adafruit shield

%creating an object for the servo motor
thermostatcontrol = stepper(shielde, 2, 200) ;  %initialising the pins on the shield
thermostatcontrol.RPM = 10; %set the RPM for the stepper motor

%val is delivered via wi-fi transceiver coming from the wifi transceiver on
%a second Raspberry Pi
val = readDigitalPin(f,'D6'); %creating a variable for reading the sensor values



if (val == 1) %check the value 
 move(thermostatcontrol, 200); %move the stepper motor for 200 steps in the forward direction
 release(thermostatcontrol); %end the stepper motor conncetion
end

if (val == 0) %check the value
       move(thermostatcontrol, -200); %move the stepper motor for 200 steps in the opposite direction
       release(thermostatcontrol); %end the stepper motor conncetion
end
