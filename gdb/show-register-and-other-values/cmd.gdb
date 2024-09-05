b main
command
   p "argv = "
   p $rdi
   x/4g $rsi

   x/s *(char**)$rsi
   p   *(char**)$rsi

   p  *(( (char**)$rsi ) + 0)
   p  *(( (char**)$rsi ) + 1)
   p  *(( (char**)$rsi ) + 2)
   p  *(( (char**)$rsi ) + 3)

   c
end

b func
command
   x/s $rdi
   c
end

r
