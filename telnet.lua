-- a simple telnet server  
    s=net.createServer(net.TCP) 
    s:listen(2323,function(c) 
       con_std = c 
       function s_output(str) 
          if(con_std~=nil) 
             then con_std:send(str) 
          end 
       end 
       node.output(s_output, 0)   -- re-direct output to function s_ouput.
       c:on("receive",function(c,l) 
          node.input(l)           -- works like pcall(loadstring(l)) but support multiple separate line
       end) 
       c:on("disconnection",function(c) 
          con_std = nil 
          node.output(nil)        -- un-regist the redirect output function, output goes to serial
       end) 

       print("Telnet Server "..wifi.sta.getip().." starts, running at port 2323")
    end)
