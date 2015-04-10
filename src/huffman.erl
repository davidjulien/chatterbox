-module(huffman).

-export([to_binary/1]).

to_binary(Bin) ->
    to_binary(Bin, []).

to_binary(<<    16#1ff8:13,Bits/bits>>, Acc) -> to_binary(Bits, [  0|Acc]);
to_binary(<<  16#7fffd8:23,Bits/bits>>, Acc) -> to_binary(Bits, [  1|Acc]);
to_binary(<< 16#fffffe2:28,Bits/bits>>, Acc) -> to_binary(Bits, [  2|Acc]);
to_binary(<< 16#fffffe3:28,Bits/bits>>, Acc) -> to_binary(Bits, [  3|Acc]);
to_binary(<< 16#fffffe4:28,Bits/bits>>, Acc) -> to_binary(Bits, [  4|Acc]);
to_binary(<< 16#fffffe5:28,Bits/bits>>, Acc) -> to_binary(Bits, [  5|Acc]);
to_binary(<< 16#fffffe6:28,Bits/bits>>, Acc) -> to_binary(Bits, [  6|Acc]);
to_binary(<< 16#fffffe7:28,Bits/bits>>, Acc) -> to_binary(Bits, [  7|Acc]);
to_binary(<< 16#fffffe8:28,Bits/bits>>, Acc) -> to_binary(Bits, [  8|Acc]);
to_binary(<<  16#ffffea:24,Bits/bits>>, Acc) -> to_binary(Bits, [  9|Acc]);
to_binary(<<16#3ffffffc:30,Bits/bits>>, Acc) -> to_binary(Bits, [ 10|Acc]);
to_binary(<< 16#fffffe9:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 11|Acc]);
to_binary(<< 16#fffffea:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 12|Acc]);
to_binary(<<16#3ffffffd:30,Bits/bits>>, Acc) -> to_binary(Bits, [ 13|Acc]);
to_binary(<< 16#fffffeb:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 14|Acc]);
to_binary(<< 16#fffffec:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 15|Acc]);
to_binary(<< 16#fffffed:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 16|Acc]);
to_binary(<< 16#fffffee:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 17|Acc]);
to_binary(<< 16#fffffef:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 18|Acc]);
to_binary(<< 16#ffffff0:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 19|Acc]);
to_binary(<< 16#ffffff1:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 20|Acc]);
to_binary(<< 16#ffffff2:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 21|Acc]);
to_binary(<<16#3ffffffe:30,Bits/bits>>, Acc) -> to_binary(Bits, [ 22|Acc]);
to_binary(<< 16#ffffff3:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 23|Acc]);
to_binary(<< 16#ffffff4:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 24|Acc]);
to_binary(<< 16#ffffff5:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 25|Acc]);
to_binary(<< 16#ffffff6:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 26|Acc]);
to_binary(<< 16#ffffff7:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 27|Acc]);
to_binary(<< 16#ffffff8:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 28|Acc]);
to_binary(<< 16#ffffff9:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 29|Acc]);
to_binary(<< 16#ffffffa:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 30|Acc]);
to_binary(<< 16#ffffffb:28,Bits/bits>>, Acc) -> to_binary(Bits, [ 31|Acc]);
to_binary(<<       16#14:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 32|Acc]);
to_binary(<<     16#3f8:10,Bits/bits>>, Acc) -> to_binary(Bits, [ 33|Acc]);
to_binary(<<     16#3f9:10,Bits/bits>>, Acc) -> to_binary(Bits, [ 34|Acc]);
to_binary(<<     16#ffa:12,Bits/bits>>, Acc) -> to_binary(Bits, [ 35|Acc]);
to_binary(<<    16#1ff9:13,Bits/bits>>, Acc) -> to_binary(Bits, [ 36|Acc]);
to_binary(<<       16#15:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 37|Acc]);
to_binary(<<       16#f8:8,Bits/bits>>, Acc) -> to_binary(Bits, [ 38|Acc]);
to_binary(<<     16#7fa:11,Bits/bits>>, Acc) -> to_binary(Bits, [ 39|Acc]);
to_binary(<<     16#3fa:10,Bits/bits>>, Acc) -> to_binary(Bits, [ 40|Acc]);
to_binary(<<     16#3fb:10,Bits/bits>>, Acc) -> to_binary(Bits, [ 41|Acc]);
to_binary(<<       16#f9:8,Bits/bits>>, Acc) -> to_binary(Bits, [ 42|Acc]);
to_binary(<<     16#7fb:11,Bits/bits>>, Acc) -> to_binary(Bits, [ 43|Acc]);
to_binary(<<       16#fa:8,Bits/bits>>, Acc) -> to_binary(Bits, [ 44|Acc]);
to_binary(<<       16#16:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 45|Acc]);
to_binary(<<       16#17:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 46|Acc]);
to_binary(<<       16#18:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 47|Acc]);
to_binary(<<        16#0:5,Bits/bits>>, Acc) -> to_binary(Bits, [ 48|Acc]);
to_binary(<<        16#1:5,Bits/bits>>, Acc) -> to_binary(Bits, [ 49|Acc]);
to_binary(<<        16#2:5,Bits/bits>>, Acc) -> to_binary(Bits, [ 50|Acc]);
to_binary(<<       16#19:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 51|Acc]);
to_binary(<<       16#1a:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 52|Acc]);
to_binary(<<       16#1b:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 53|Acc]);
to_binary(<<       16#1c:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 54|Acc]);
to_binary(<<       16#1d:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 55|Acc]);
to_binary(<<       16#1e:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 56|Acc]);
to_binary(<<       16#1f:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 57|Acc]);
to_binary(<<       16#5c:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 58|Acc]);
to_binary(<<       16#fb:8,Bits/bits>>, Acc) -> to_binary(Bits, [ 59|Acc]);
to_binary(<<    16#7ffc:15,Bits/bits>>, Acc) -> to_binary(Bits, [ 60|Acc]);
to_binary(<<       16#20:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 61|Acc]);
to_binary(<<     16#ffb:12,Bits/bits>>, Acc) -> to_binary(Bits, [ 62|Acc]);
to_binary(<<     16#3fc:10,Bits/bits>>, Acc) -> to_binary(Bits, [ 63|Acc]);
to_binary(<<    16#1ffa:13,Bits/bits>>, Acc) -> to_binary(Bits, [ 64|Acc]);
to_binary(<<       16#21:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 65|Acc]);
to_binary(<<       16#5d:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 66|Acc]);
to_binary(<<       16#5e:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 67|Acc]);
to_binary(<<       16#5f:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 68|Acc]);
to_binary(<<       16#60:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 69|Acc]);
to_binary(<<       16#61:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 70|Acc]);
to_binary(<<       16#62:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 71|Acc]);
to_binary(<<       16#63:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 72|Acc]);
to_binary(<<       16#64:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 73|Acc]);
to_binary(<<       16#65:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 74|Acc]);
to_binary(<<       16#66:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 75|Acc]);
to_binary(<<       16#67:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 76|Acc]);
to_binary(<<       16#68:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 77|Acc]);
to_binary(<<       16#69:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 78|Acc]);
to_binary(<<       16#6a:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 79|Acc]);
to_binary(<<       16#6b:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 80|Acc]);
to_binary(<<       16#6c:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 81|Acc]);
to_binary(<<       16#6d:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 82|Acc]);
to_binary(<<       16#6e:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 83|Acc]);
to_binary(<<       16#6f:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 84|Acc]);
to_binary(<<       16#70:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 85|Acc]);
to_binary(<<       16#71:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 86|Acc]);
to_binary(<<       16#72:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 87|Acc]);
to_binary(<<       16#fc:8,Bits/bits>>, Acc) -> to_binary(Bits, [ 88|Acc]);
to_binary(<<       16#73:7,Bits/bits>>, Acc) -> to_binary(Bits, [ 89|Acc]);
to_binary(<<       16#fd:8,Bits/bits>>, Acc) -> to_binary(Bits, [ 90|Acc]);
to_binary(<<    16#1ffb:13,Bits/bits>>, Acc) -> to_binary(Bits, [ 91|Acc]);
to_binary(<<   16#7fff0:19,Bits/bits>>, Acc) -> to_binary(Bits, [ 92|Acc]);
to_binary(<<    16#1ffc:13,Bits/bits>>, Acc) -> to_binary(Bits, [ 93|Acc]);
to_binary(<<    16#3ffc:14,Bits/bits>>, Acc) -> to_binary(Bits, [ 94|Acc]);
to_binary(<<       16#22:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 95|Acc]);
to_binary(<<    16#7ffd:15,Bits/bits>>, Acc) -> to_binary(Bits, [ 96|Acc]);
to_binary(<<        16#3:5,Bits/bits>>, Acc) -> to_binary(Bits, [ 97|Acc]);
to_binary(<<       16#23:6,Bits/bits>>, Acc) -> to_binary(Bits, [ 98|Acc]);
to_binary(<<        16#4:5,Bits/bits>>, Acc) -> to_binary(Bits, [ 99|Acc]);
to_binary(<<       16#24:6,Bits/bits>>, Acc) -> to_binary(Bits, [100|Acc]);
to_binary(<<        16#5:5,Bits/bits>>, Acc) -> to_binary(Bits, [101|Acc]);
to_binary(<<       16#25:6,Bits/bits>>, Acc) -> to_binary(Bits, [102|Acc]);
to_binary(<<       16#26:6,Bits/bits>>, Acc) -> to_binary(Bits, [103|Acc]);
to_binary(<<       16#27:6,Bits/bits>>, Acc) -> to_binary(Bits, [104|Acc]);
to_binary(<<        16#6:5,Bits/bits>>, Acc) -> to_binary(Bits, [105|Acc]);
to_binary(<<       16#74:7,Bits/bits>>, Acc) -> to_binary(Bits, [106|Acc]);
to_binary(<<       16#75:7,Bits/bits>>, Acc) -> to_binary(Bits, [107|Acc]);
to_binary(<<       16#28:6,Bits/bits>>, Acc) -> to_binary(Bits, [108|Acc]);
to_binary(<<       16#29:6,Bits/bits>>, Acc) -> to_binary(Bits, [109|Acc]);
to_binary(<<       16#2a:6,Bits/bits>>, Acc) -> to_binary(Bits, [110|Acc]);
to_binary(<<        16#7:5,Bits/bits>>, Acc) -> to_binary(Bits, [111|Acc]);
to_binary(<<       16#2b:6,Bits/bits>>, Acc) -> to_binary(Bits, [112|Acc]);
to_binary(<<       16#76:7,Bits/bits>>, Acc) -> to_binary(Bits, [113|Acc]);
to_binary(<<       16#2c:6,Bits/bits>>, Acc) -> to_binary(Bits, [114|Acc]);
to_binary(<<        16#8:5,Bits/bits>>, Acc) -> to_binary(Bits, [115|Acc]);
to_binary(<<        16#9:5,Bits/bits>>, Acc) -> to_binary(Bits, [116|Acc]);
to_binary(<<       16#2d:6,Bits/bits>>, Acc) -> to_binary(Bits, [117|Acc]);
to_binary(<<       16#77:7,Bits/bits>>, Acc) -> to_binary(Bits, [118|Acc]);
to_binary(<<       16#78:7,Bits/bits>>, Acc) -> to_binary(Bits, [119|Acc]);
to_binary(<<       16#79:7,Bits/bits>>, Acc) -> to_binary(Bits, [120|Acc]);
to_binary(<<       16#7a:7,Bits/bits>>, Acc) -> to_binary(Bits, [121|Acc]);
to_binary(<<       16#7b:7,Bits/bits>>, Acc) -> to_binary(Bits, [122|Acc]);
to_binary(<<    16#7ffe:15,Bits/bits>>, Acc) -> to_binary(Bits, [123|Acc]);
to_binary(<<     16#7fc:11,Bits/bits>>, Acc) -> to_binary(Bits, [124|Acc]);
to_binary(<<    16#3ffd:14,Bits/bits>>, Acc) -> to_binary(Bits, [125|Acc]);
to_binary(<<    16#1ffd:13,Bits/bits>>, Acc) -> to_binary(Bits, [126|Acc]);
to_binary(<< 16#ffffffc:28,Bits/bits>>, Acc) -> to_binary(Bits, [127|Acc]);
to_binary(<<   16#fffe6:20,Bits/bits>>, Acc) -> to_binary(Bits, [128|Acc]);
to_binary(<<  16#3fffd2:22,Bits/bits>>, Acc) -> to_binary(Bits, [129|Acc]);
to_binary(<<   16#fffe7:20,Bits/bits>>, Acc) -> to_binary(Bits, [130|Acc]);
to_binary(<<   16#fffe8:20,Bits/bits>>, Acc) -> to_binary(Bits, [131|Acc]);
to_binary(<<  16#3fffd3:22,Bits/bits>>, Acc) -> to_binary(Bits, [132|Acc]);
to_binary(<<  16#3fffd4:22,Bits/bits>>, Acc) -> to_binary(Bits, [133|Acc]);
to_binary(<<  16#3fffd5:22,Bits/bits>>, Acc) -> to_binary(Bits, [134|Acc]);
to_binary(<<  16#7fffd9:23,Bits/bits>>, Acc) -> to_binary(Bits, [135|Acc]);
to_binary(<<  16#3fffd6:22,Bits/bits>>, Acc) -> to_binary(Bits, [136|Acc]);
to_binary(<<  16#7fffda:23,Bits/bits>>, Acc) -> to_binary(Bits, [137|Acc]);
to_binary(<<  16#7fffdb:23,Bits/bits>>, Acc) -> to_binary(Bits, [138|Acc]);
to_binary(<<  16#7fffdc:23,Bits/bits>>, Acc) -> to_binary(Bits, [139|Acc]);
to_binary(<<  16#7fffdd:23,Bits/bits>>, Acc) -> to_binary(Bits, [140|Acc]);
to_binary(<<  16#7fffde:23,Bits/bits>>, Acc) -> to_binary(Bits, [141|Acc]);
to_binary(<<  16#ffffeb:24,Bits/bits>>, Acc) -> to_binary(Bits, [142|Acc]);
to_binary(<<  16#7fffdf:23,Bits/bits>>, Acc) -> to_binary(Bits, [143|Acc]);
to_binary(<<  16#ffffec:24,Bits/bits>>, Acc) -> to_binary(Bits, [144|Acc]);
to_binary(<<  16#ffffed:24,Bits/bits>>, Acc) -> to_binary(Bits, [145|Acc]);
to_binary(<<  16#3fffd7:22,Bits/bits>>, Acc) -> to_binary(Bits, [146|Acc]);
to_binary(<<  16#7fffe0:23,Bits/bits>>, Acc) -> to_binary(Bits, [147|Acc]);
to_binary(<<  16#ffffee:24,Bits/bits>>, Acc) -> to_binary(Bits, [148|Acc]);
to_binary(<<  16#7fffe1:23,Bits/bits>>, Acc) -> to_binary(Bits, [149|Acc]);
to_binary(<<  16#7fffe2:23,Bits/bits>>, Acc) -> to_binary(Bits, [150|Acc]);
to_binary(<<  16#7fffe3:23,Bits/bits>>, Acc) -> to_binary(Bits, [151|Acc]);
to_binary(<<  16#7fffe4:23,Bits/bits>>, Acc) -> to_binary(Bits, [152|Acc]);
to_binary(<<  16#1fffdc:21,Bits/bits>>, Acc) -> to_binary(Bits, [153|Acc]);
to_binary(<<  16#3fffd8:22,Bits/bits>>, Acc) -> to_binary(Bits, [154|Acc]);
to_binary(<<  16#7fffe5:23,Bits/bits>>, Acc) -> to_binary(Bits, [155|Acc]);
to_binary(<<  16#3fffd9:22,Bits/bits>>, Acc) -> to_binary(Bits, [156|Acc]);
to_binary(<<  16#7fffe6:23,Bits/bits>>, Acc) -> to_binary(Bits, [157|Acc]);
to_binary(<<  16#7fffe7:23,Bits/bits>>, Acc) -> to_binary(Bits, [158|Acc]);
to_binary(<<  16#ffffef:24,Bits/bits>>, Acc) -> to_binary(Bits, [159|Acc]);
to_binary(<<  16#3fffda:22,Bits/bits>>, Acc) -> to_binary(Bits, [160|Acc]);
to_binary(<<  16#1fffdd:21,Bits/bits>>, Acc) -> to_binary(Bits, [161|Acc]);
to_binary(<<   16#fffe9:20,Bits/bits>>, Acc) -> to_binary(Bits, [162|Acc]);
to_binary(<<  16#3fffdb:22,Bits/bits>>, Acc) -> to_binary(Bits, [163|Acc]);
to_binary(<<  16#3fffdc:22,Bits/bits>>, Acc) -> to_binary(Bits, [164|Acc]);
to_binary(<<  16#7fffe8:23,Bits/bits>>, Acc) -> to_binary(Bits, [165|Acc]);
to_binary(<<  16#7fffe9:23,Bits/bits>>, Acc) -> to_binary(Bits, [166|Acc]);
to_binary(<<  16#1fffde:21,Bits/bits>>, Acc) -> to_binary(Bits, [167|Acc]);
to_binary(<<  16#7fffea:23,Bits/bits>>, Acc) -> to_binary(Bits, [168|Acc]);
to_binary(<<  16#3fffdd:22,Bits/bits>>, Acc) -> to_binary(Bits, [169|Acc]);
to_binary(<<  16#3fffde:22,Bits/bits>>, Acc) -> to_binary(Bits, [170|Acc]);
to_binary(<<  16#fffff0:24,Bits/bits>>, Acc) -> to_binary(Bits, [171|Acc]);
to_binary(<<  16#1fffdf:21,Bits/bits>>, Acc) -> to_binary(Bits, [172|Acc]);
to_binary(<<  16#3fffdf:22,Bits/bits>>, Acc) -> to_binary(Bits, [173|Acc]);
to_binary(<<  16#7fffeb:23,Bits/bits>>, Acc) -> to_binary(Bits, [174|Acc]);
to_binary(<<  16#7fffec:23,Bits/bits>>, Acc) -> to_binary(Bits, [175|Acc]);
to_binary(<<  16#1fffe0:21,Bits/bits>>, Acc) -> to_binary(Bits, [176|Acc]);
to_binary(<<  16#1fffe1:21,Bits/bits>>, Acc) -> to_binary(Bits, [177|Acc]);
to_binary(<<  16#3fffe0:22,Bits/bits>>, Acc) -> to_binary(Bits, [178|Acc]);
to_binary(<<  16#1fffe2:21,Bits/bits>>, Acc) -> to_binary(Bits, [179|Acc]);
to_binary(<<  16#7fffed:23,Bits/bits>>, Acc) -> to_binary(Bits, [180|Acc]);
to_binary(<<  16#3fffe1:22,Bits/bits>>, Acc) -> to_binary(Bits, [181|Acc]);
to_binary(<<  16#7fffee:23,Bits/bits>>, Acc) -> to_binary(Bits, [182|Acc]);
to_binary(<<  16#7fffef:23,Bits/bits>>, Acc) -> to_binary(Bits, [183|Acc]);
to_binary(<<   16#fffea:20,Bits/bits>>, Acc) -> to_binary(Bits, [184|Acc]);
to_binary(<<  16#3fffe2:22,Bits/bits>>, Acc) -> to_binary(Bits, [185|Acc]);
to_binary(<<  16#3fffe3:22,Bits/bits>>, Acc) -> to_binary(Bits, [186|Acc]);
to_binary(<<  16#3fffe4:22,Bits/bits>>, Acc) -> to_binary(Bits, [187|Acc]);
to_binary(<<  16#7ffff0:23,Bits/bits>>, Acc) -> to_binary(Bits, [188|Acc]);
to_binary(<<  16#3fffe5:22,Bits/bits>>, Acc) -> to_binary(Bits, [189|Acc]);
to_binary(<<  16#3fffe6:22,Bits/bits>>, Acc) -> to_binary(Bits, [190|Acc]);
to_binary(<<  16#7ffff1:23,Bits/bits>>, Acc) -> to_binary(Bits, [191|Acc]);
to_binary(<< 16#3ffffe0:26,Bits/bits>>, Acc) -> to_binary(Bits, [192|Acc]);
to_binary(<< 16#3ffffe1:26,Bits/bits>>, Acc) -> to_binary(Bits, [193|Acc]);
to_binary(<<   16#fffeb:20,Bits/bits>>, Acc) -> to_binary(Bits, [194|Acc]);
to_binary(<<   16#7fff1:19,Bits/bits>>, Acc) -> to_binary(Bits, [195|Acc]);
to_binary(<<  16#3fffe7:22,Bits/bits>>, Acc) -> to_binary(Bits, [196|Acc]);
to_binary(<<  16#7ffff2:23,Bits/bits>>, Acc) -> to_binary(Bits, [197|Acc]);
to_binary(<<  16#3fffe8:22,Bits/bits>>, Acc) -> to_binary(Bits, [198|Acc]);
to_binary(<< 16#1ffffec:25,Bits/bits>>, Acc) -> to_binary(Bits, [199|Acc]);
to_binary(<< 16#3ffffe2:26,Bits/bits>>, Acc) -> to_binary(Bits, [200|Acc]);
to_binary(<< 16#3ffffe3:26,Bits/bits>>, Acc) -> to_binary(Bits, [201|Acc]);
to_binary(<< 16#3ffffe4:26,Bits/bits>>, Acc) -> to_binary(Bits, [202|Acc]);
to_binary(<< 16#7ffffde:27,Bits/bits>>, Acc) -> to_binary(Bits, [203|Acc]);
to_binary(<< 16#7ffffdf:27,Bits/bits>>, Acc) -> to_binary(Bits, [204|Acc]);
to_binary(<< 16#3ffffe5:26,Bits/bits>>, Acc) -> to_binary(Bits, [205|Acc]);
to_binary(<<  16#fffff1:24,Bits/bits>>, Acc) -> to_binary(Bits, [206|Acc]);
to_binary(<< 16#1ffffed:25,Bits/bits>>, Acc) -> to_binary(Bits, [207|Acc]);
to_binary(<<   16#7fff2:19,Bits/bits>>, Acc) -> to_binary(Bits, [208|Acc]);
to_binary(<<  16#1fffe3:21,Bits/bits>>, Acc) -> to_binary(Bits, [209|Acc]);
to_binary(<< 16#3ffffe6:26,Bits/bits>>, Acc) -> to_binary(Bits, [210|Acc]);
to_binary(<< 16#7ffffe0:27,Bits/bits>>, Acc) -> to_binary(Bits, [211|Acc]);
to_binary(<< 16#7ffffe1:27,Bits/bits>>, Acc) -> to_binary(Bits, [212|Acc]);
to_binary(<< 16#3ffffe7:26,Bits/bits>>, Acc) -> to_binary(Bits, [213|Acc]);
to_binary(<< 16#7ffffe2:27,Bits/bits>>, Acc) -> to_binary(Bits, [214|Acc]);
to_binary(<<  16#fffff2:24,Bits/bits>>, Acc) -> to_binary(Bits, [215|Acc]);
to_binary(<<  16#1fffe4:21,Bits/bits>>, Acc) -> to_binary(Bits, [216|Acc]);
to_binary(<<  16#1fffe5:21,Bits/bits>>, Acc) -> to_binary(Bits, [217|Acc]);
to_binary(<< 16#3ffffe8:26,Bits/bits>>, Acc) -> to_binary(Bits, [218|Acc]);
to_binary(<< 16#3ffffe9:26,Bits/bits>>, Acc) -> to_binary(Bits, [219|Acc]);
to_binary(<< 16#ffffffd:28,Bits/bits>>, Acc) -> to_binary(Bits, [220|Acc]);
to_binary(<< 16#7ffffe3:27,Bits/bits>>, Acc) -> to_binary(Bits, [221|Acc]);
to_binary(<< 16#7ffffe4:27,Bits/bits>>, Acc) -> to_binary(Bits, [222|Acc]);
to_binary(<< 16#7ffffe5:27,Bits/bits>>, Acc) -> to_binary(Bits, [223|Acc]);
to_binary(<<   16#fffec:20,Bits/bits>>, Acc) -> to_binary(Bits, [224|Acc]);
to_binary(<<  16#fffff3:24,Bits/bits>>, Acc) -> to_binary(Bits, [225|Acc]);
to_binary(<<   16#fffed:20,Bits/bits>>, Acc) -> to_binary(Bits, [226|Acc]);
to_binary(<<  16#1fffe6:21,Bits/bits>>, Acc) -> to_binary(Bits, [227|Acc]);
to_binary(<<  16#3fffe9:22,Bits/bits>>, Acc) -> to_binary(Bits, [228|Acc]);
to_binary(<<  16#1fffe7:21,Bits/bits>>, Acc) -> to_binary(Bits, [229|Acc]);
to_binary(<<  16#1fffe8:21,Bits/bits>>, Acc) -> to_binary(Bits, [230|Acc]);
to_binary(<<  16#7ffff3:23,Bits/bits>>, Acc) -> to_binary(Bits, [231|Acc]);
to_binary(<<  16#3fffea:22,Bits/bits>>, Acc) -> to_binary(Bits, [232|Acc]);
to_binary(<<  16#3fffeb:22,Bits/bits>>, Acc) -> to_binary(Bits, [233|Acc]);
to_binary(<< 16#1ffffee:25,Bits/bits>>, Acc) -> to_binary(Bits, [234|Acc]);
to_binary(<< 16#1ffffef:25,Bits/bits>>, Acc) -> to_binary(Bits, [235|Acc]);
to_binary(<<  16#fffff4:24,Bits/bits>>, Acc) -> to_binary(Bits, [236|Acc]);
to_binary(<<  16#fffff5:24,Bits/bits>>, Acc) -> to_binary(Bits, [237|Acc]);
to_binary(<< 16#3ffffea:26,Bits/bits>>, Acc) -> to_binary(Bits, [238|Acc]);
to_binary(<<  16#7ffff4:23,Bits/bits>>, Acc) -> to_binary(Bits, [239|Acc]);
to_binary(<< 16#3ffffeb:26,Bits/bits>>, Acc) -> to_binary(Bits, [240|Acc]);
to_binary(<< 16#7ffffe6:27,Bits/bits>>, Acc) -> to_binary(Bits, [241|Acc]);
to_binary(<< 16#3ffffec:26,Bits/bits>>, Acc) -> to_binary(Bits, [242|Acc]);
to_binary(<< 16#3ffffed:26,Bits/bits>>, Acc) -> to_binary(Bits, [243|Acc]);
to_binary(<< 16#7ffffe7:27,Bits/bits>>, Acc) -> to_binary(Bits, [244|Acc]);
to_binary(<< 16#7ffffe8:27,Bits/bits>>, Acc) -> to_binary(Bits, [245|Acc]);
to_binary(<< 16#7ffffe9:27,Bits/bits>>, Acc) -> to_binary(Bits, [246|Acc]);
to_binary(<< 16#7ffffea:27,Bits/bits>>, Acc) -> to_binary(Bits, [247|Acc]);
to_binary(<< 16#7ffffeb:27,Bits/bits>>, Acc) -> to_binary(Bits, [248|Acc]);
to_binary(<< 16#ffffffe:28,Bits/bits>>, Acc) -> to_binary(Bits, [249|Acc]);
to_binary(<< 16#7ffffec:27,Bits/bits>>, Acc) -> to_binary(Bits, [250|Acc]);
to_binary(<< 16#7ffffed:27,Bits/bits>>, Acc) -> to_binary(Bits, [251|Acc]);
to_binary(<< 16#7ffffee:27,Bits/bits>>, Acc) -> to_binary(Bits, [252|Acc]);
to_binary(<< 16#7ffffef:27,Bits/bits>>, Acc) -> to_binary(Bits, [253|Acc]);
to_binary(<< 16#7fffff0:27,Bits/bits>>, Acc) -> to_binary(Bits, [254|Acc]);
to_binary(<< 16#3ffffee:26,Bits/bits>>, Acc) -> to_binary(Bits, [255|Acc]);
to_binary(<<16#3fffffff:30,Bits/bits>>, Acc) -> to_binary(Bits, [256|Acc]);
to_binary(_, Acc) ->
    list_to_binary(lists:reverse(Acc)).