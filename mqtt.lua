m=mqtt.Client()
m:connect("iot.eclipse.org",1883)
m:on("connect", function(conn)
    print("[mqtt]online")
    m:subscribe("/jx",0,function(m) print("[mqtt][subscribe]sub done") end)
end)
m:on("offline", function(con) 
    print ("[mqtt]offline")
    m:connect("iot.eclipse.org",1883)
end)

m:on("message", function(conn, topic, data)
    if data then
        if data == 'go' then
            moto_go()
        end
        if data == 'back' then
            moto_back()
        end
        if data == 'left' then
            moto_left()
        end
        if data == 'right' then
            moto_right()
        end
        if data == 'stop' then
            moto_stop()
        end        
    end
end)