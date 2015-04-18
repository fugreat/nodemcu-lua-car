function timer_wait(n_us)
    tmr.alarm(0, n_us, 1, function() --check if router is contected
        tmr.stop(0)
        end
    )
end


function moto_right(speed)
print("[moto]Right")
gpio.write(1, gpio.HIGH)
gpio.write(2, gpio.HIGH)
gpio.write(5, gpio.HIGH)
gpio.write(6, gpio.LOW)
gpio.write(7, gpio.HIGH)
gpio.write(8, gpio.LOW)
end

function moto_left(speed)
print("[moto]left")
gpio.write(1, gpio.HIGH)
gpio.write(2, gpio.HIGH)
gpio.write(6, gpio.HIGH)
gpio.write(5, gpio.LOW)
gpio.write(8, gpio.HIGH)
gpio.write(7, gpio.LOW)
end

function moto_back(speed)
print("[moto]back")
gpio.write(1, gpio.HIGH)
gpio.write(2, gpio.HIGH)
gpio.write(5, gpio.HIGH)
gpio.write(6, gpio.LOW)
gpio.write(7, gpio.LOW)
gpio.write(8, gpio.HIGH)
end 

function moto_go(speed)
print("[moto]go")
gpio.write(1, gpio.HIGH)
gpio.write(2, gpio.HIGH)
gpio.write(5, gpio.LOW)
gpio.write(6, gpio.HIGH)
gpio.write(7, gpio.HIGH)
gpio.write(8, gpio.LOW)
end

function moto_stop(speed)
print("[moto]stop")
gpio.write(1, gpio.LOW)
gpio.write(2, gpio.LOW)
end

function moto_init()
-- gpio init
print("[moto]init")
gpio.mode(1, gpio.OUTPUT)
gpio.mode(2, gpio.OUTPUT)
gpio.mode(5, gpio.OUTPUT)
gpio.mode(6, gpio.OUTPUT)
gpio.mode(7, gpio.OUTPUT)
gpio.mode(8, gpio.OUTPUT)
gpio.write(1, gpio.LOW)
gpio.write(2, gpio.LOW)
gpio.write(5, gpio.HIGH)
gpio.write(6, gpio.HIGH)
gpio.write(7, gpio.HIGH)
gpio.write(8, gpio.HIGH)

end

function moto_test(speed)
end
moto_init()