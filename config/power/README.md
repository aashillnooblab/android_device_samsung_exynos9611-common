# Scaling Available Frequencies (Exynos9611)

See https://www.kernel.org/doc/Documentation/power/pm_qos_interface.txt

> Alternatively the user mode program could write a hex
> string for the value using 10 char long format e.g. "0x12345678".

## CPU Little Cluster (CPU0)

               0x12345678

   1742000 -> 0x001a94b0
   1638000 -> 0x0018fe70
   1534000 -> 0x00176830
   1456000 -> 0x00163780
   1326000 -> 0x00143bb0
   1222000 -> 0x0012a570
   1118000 -> 0x00110f30
   1053000 -> 0x00101148
    910000 -> 0x000de2b0
    806000 -> 0x000c4c70
    702000 -> 0x000ab630
    598000 -> 0x00091ff0
    403000 -> 0x00062638

## CPU Big Cluster (CPU4)

    2314000 -> 0x00234f10
    2210000 -> 0x0021b8d0
    2184000 -> 0x00215340
    2080000 -> 0x001fbd00
    1976000 -> 0x00qe26c0
    1898000 -> 0x001cf610
    1768000 -> 0x001afa40
    1664000 -> 0x00196400
    1508000 -> 0x001702a0
    1456000 -> 0x00163780
    1352000 -> 0x0014a140
    1248000 -> 0x00130b00
    1144000 -> 0x001174c0
    1040000 -> 0x000fde80
     936000 -> 0x000e4840

## GPU Scaling

    1053000 -> 0x00101148
     949000 -> 0x000e7b08
     839000 -> 0x000ccd58
     764000 -> 0x000ba860
     683000 -> 0x000a6bf8
     572000 -> 0x0008ba60
     546000 -> 0x000854d0
     455000 -> 0x0006f158
     385000 -> 0x0005dfe8
     338000 -> 0x00052850
     260000 -> 0x0003f7a0
