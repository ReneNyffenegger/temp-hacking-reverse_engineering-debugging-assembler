b func_X if $_caller_is("func_Y")
commands
  silent
  p "breakpoint is triggered"
  c
end

r
