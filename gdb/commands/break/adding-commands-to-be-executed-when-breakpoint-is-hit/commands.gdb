break func
  commands
  silent
  printf "[33mgdb breakpoint on func: %lld %s[0m\n", $rdi, $rsi
  backtrace
  continue
end

run
# disassemble func
