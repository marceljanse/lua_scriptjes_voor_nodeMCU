ledpin = 0
start = tmr.now()
gpio.mode(ledpin, gpio.OUTPUT)

tmr.alarm(0,1000, tmr.ALARM_AUTO, function()
    print(tostring(adc.read(0)))
    
    if (adc.read(0)) > 100 then
    gpio.write(ledpin, gpio.LOW)
    else
    gpio.write(ledpin, gpio.HIGH)
   end
end)  