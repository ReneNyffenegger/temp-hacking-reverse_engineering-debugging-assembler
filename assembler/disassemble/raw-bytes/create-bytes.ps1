[byte[]] $bytes = 0xb8, 0x01, 0x00, 0x00, 0x00,
                  0xbb, 0x02, 0x00, 0x00, 0x00,
                  0xcd, 0x80

[System.IO.File]::WriteAllBytes("$pwd\assembly.bin", $bytes)
