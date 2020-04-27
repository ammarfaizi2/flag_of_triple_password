<?php

// $a = str_split("TeaInside1994");

// foreach ($a as $v) {
//   echo dechex(ord($v))." ";
// }

// $f1 = bin2hex("TeaInside__1994{");
// $b = str_split($f1, 16);

// $a = "6dd7e59a96833361e16765ca9ec7b467";
// $a = str_split($a, 16);

// foreach ($a as &$v) {
//   $v = implode("", array_reverse(str_split($v, 2)));
// }
// unset($v);

// foreach ($b as &$v) {
//  $v = implode("", array_reverse(str_split($v, 2))); 
// }
// unset($v);

// var_dump($a);
// var_dump($b);

// /*
// k1 = 0x335efd7ae7b8de7
// k2 = 0x137f719a66f9f784
// */


// $f1 = bin2hex("1t_1s_n0T_Th4t_h4rd");
// $b = str_split($f1, 16);

// $a = "63a7626c40556f5971107f668e471086696f6e";
// $a = str_split($a, 16);

// foreach ($a as &$v) {
//   $v = implode("", array_reverse(str_split($v, 2)));
// }
// unset($v);

// foreach ($b as &$v) {
//  $v = implode("", array_reverse(str_split($v, 2))); 
// }
// unset($v);

// var_dump($a);
// var_dump($b);

// /*
// k1 = 0x335efd7ae7b8de7
// k2 = 0x137f719a66f9f784
// */



$f1 = bin2hex("_779d5e_h3He_!}\n");
$b = str_split($f1, 16);

$a = "457d77613781d15d87a7657569908740";
$a = str_split($a, 16);

foreach ($a as &$v) {
  $v = implode("", array_reverse(str_split($v, 2)));
}
unset($v);

foreach ($b as &$v) {
 $v = implode("", array_reverse(str_split($v, 2))); 
}
unset($v);

var_dump($a);
var_dump($b);

/*
k1 = 0x335efd7ae7b8de7
k2 = 0x137f719a66f9f784
*/