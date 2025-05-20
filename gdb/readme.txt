
{ Breakpoints

  Use star to set a breakpoint at a given address
    b *0x101a593b

}
{ Windows

  { x86

    b LoadLibrary
      -> p *(char **)( $esp +  8 )         ; 1st parameter

    b GetProcAddress
      -> p *(char **)( $esp + 12 )         ; 2nd parameter

    b CoCreateInstance
      ->  x/16b $esp + 8                   ; 1st paramters, a guid. Format is 4 bytes - 2 bytes - 2 bytes - 2 bytes - 6 bytes
                                                                              Little Endiean              | Big Endian


0x19f278:       0x30    0x75    0x8e    0x06    0x00    0x00    0x00    0x00
0x19f280:       0x01    0x00    0x00    0x00    0x50    0x73    0x8e    0x0
   
 0x30    0x75    0x8e    0x06    0x00    0x00    0x00    0x00 0x01    0x00    0x00    0x00    0x50    0x73    0x8e    0x0

  }

}
