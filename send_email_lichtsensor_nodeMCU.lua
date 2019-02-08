--wifi.setmode(wifi.STATION)
--station_cfg = {}
--station_cfg.ssid = "mercure"
--station_cfg.pwd = ""
--station_cfg.save = true
--wifi.sta.config(station_cfg)
--wifi.sta.connect()
URL="insert IFTTT-url"
ledpin = 0
start = tmr.now()
gpio.mode(ledpin, gpio.OUTPUT)

tmr.alarm(0,1000, tmr.ALARM_AUTO, function()
    print(tostring(adc.read(0)))
    
    if (adc.read(0)) < 100 then
        if stuur_mail == 1 then
        gpio.write(ledpin, gpio.LOW)
        http.get(URL)
        end
        stuur_mail = 0
    else
    stuur_mail = 1
    gpio.write(ledpin, gpio.HIGH)
   end 
end)    
 