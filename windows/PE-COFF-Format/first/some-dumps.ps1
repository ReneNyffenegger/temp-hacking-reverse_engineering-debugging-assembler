$objConsts = get-objDump -path consts.obj

$objConsts.SectionHeaders[1].Name           # expected: .data
$objConsts.SectionHeaders[1].Relocations


$data_ = $objConsts.SectionHeaders[1].RawData

($data_[0x0 .. 0x07] | foreach-object { $_ }) -join ' '

#
#  Is it 42?
#
($data_[0x08 .. 0x10] | foreach-object { $_ -as [char] }) -join ''

($data_[0x12 .. 0x17] | foreach-object { $_ }) -join ' '

($data_[0x18 .. 0x1f] | foreach-object { $_ }) -join ' '

#
#  Hello world
#
($data_[0x20 .. 0x2b] | foreach-object { $_ -as [char] }) -join ''

#
#  buttons: 0x24 = 36
#   ( 
#     System.BitConverter casts a
#     byte array to a int, See
#     https://stackoverflow.com/a/60102935/180275
#   )
#
[System.BitConverter]::ToInt32($data_[0x30 .. 0x33], 0)

$objFunc = get-objDump -path consts.obj
$objFunc = get-objDump -path consts.obj
