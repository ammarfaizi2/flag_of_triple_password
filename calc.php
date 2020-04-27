<?php

$a = str_split("TeaInside1994");

foreach ($a as $v) {
  echo dechex(ord($v))." ";
}