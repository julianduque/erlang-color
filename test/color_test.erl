-module(color_test).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

%% Colors
black_test() ->
  ?assertEqual("\e[30mblack\e[0m", color:black("black")).

red_test() ->
  ?assertEqual("\e[31mred\e[0m", color:red("red")).

green_test() ->
  ?assertEqual("\e[32mgreen\e[0m", color:green("green")).

yellow_test() ->
  ?assertEqual("\e[33myellow\e[0m", color:yellow("yellow")).

blue_test() ->
  ?assertEqual("\e[34mblue\e[0m", color:blue("blue")).

magenta_test() ->
  ?assertEqual("\e[35mmagenta\e[0m", color:magenta("magenta")).

cyan_test() ->
  ?assertEqual("\e[36mcyan\e[0m", color:cyan("cyan")).

white_test() ->
  ?assertEqual("\e[37mwhite\e[0m", color:white("white")).

%% Bright Colors
blackb_test() ->
  ?assertEqual("\e[30;1mblack\e[0m", color:blackb("black")).

redb_test() ->
  ?assertEqual("\e[31;1mred\e[0m", color:redb("red")).

greenb_test() ->
  ?assertEqual("\e[32;1mgreen\e[0m", color:greenb("green")).

yellowb_test() ->
  ?assertEqual("\e[33;1myellow\e[0m", color:yellowb("yellow")).

blueb_test() ->
  ?assertEqual("\e[34;1mblue\e[0m", color:blueb("blue")).

magentab_test() ->
  ?assertEqual("\e[35;1mmagenta\e[0m", color:magentab("magenta")).

cyanb_test() ->
  ?assertEqual("\e[36;1mcyan\e[0m", color:cyanb("cyan")).

whiteb_test() ->
  ?assertEqual("\e[37;1mwhite\e[0m", color:whiteb("white")).

on_black_test() ->
  ?assertEqual("\e[40mon_black\e[49m", color:on_black("on_black")).

on_red_test() ->
  ?assertEqual("\e[41mon_red\e[49m", color:on_red("on_red")).

on_green_test() ->
  ?assertEqual("\e[42mon_green\e[49m", color:on_green("on_green")).

on_yellow_test() ->
  ?assertEqual("\e[43mon_yellow\e[49m", color:on_yellow("on_yellow")).

on_blue_test() ->
  ?assertEqual("\e[44mon_blue\e[49m", color:on_blue("on_blue")).

on_magenta_test() ->
  ?assertEqual("\e[45mon_magenta\e[49m", color:on_magenta("on_magenta")).

on_cyan_test() ->
  ?assertEqual("\e[46mon_cyan\e[49m", color:on_cyan("on_cyan")).

on_white_test() ->
  ?assertEqual("\e[47mon_white\e[49m", color:on_white("on_white")).

rgb_test() ->
  ?assertEqual("\e[38;5;16mrgb\e[0m", color:rgb([0, 0, 0], "rgb")),
  ?assertEqual("\e[38;5;59mrgb\e[0m", color:rgb([1, 1, 1], "rgb")),
  ?assertEqual("\e[38;5;102mrgb\e[0m", color:rgb([2, 2, 2], "rgb")),
  ?assertEqual("\e[38;5;145mrgb\e[0m", color:rgb([3, 3, 3], "rgb")),
  ?assertEqual("\e[38;5;188mrgb\e[0m", color:rgb([4, 4, 4], "rgb")),
  ?assertEqual("\e[38;5;231mrgb\e[0m", color:rgb([5, 5, 5], "rgb")).

on_rgb_test() ->
  ?assertEqual("\e[48;5;16mrgb\e[49m", color:on_rgb([0, 0, 0], "rgb")),
  ?assertEqual("\e[48;5;59mrgb\e[49m", color:on_rgb([1, 1, 1], "rgb")),
  ?assertEqual("\e[48;5;102mrgb\e[49m", color:on_rgb([2, 2, 2], "rgb")),
  ?assertEqual("\e[48;5;145mrgb\e[49m", color:on_rgb([3, 3, 3], "rgb")),
  ?assertEqual("\e[48;5;188mrgb\e[49m", color:on_rgb([4, 4, 4], "rgb")),
  ?assertEqual("\e[48;5;231mrgb\e[49m", color:on_rgb([5, 5, 5], "rgb")).

true_color_test() ->
  ?assertEqual("\e[38;2;0;0;0mtrue\e[0m", color:true([0, 0, 0], "true")),
  ?assertEqual("\e[38;2;255;255;255mtrue\e[0m", color:true([255, 255, 255], "true")),
  ?assertEqual("\e[38;2;0;0;0mtrue\e[0m", color:true("000000", "true")),
  ?assertEqual("\e[38;2;68;68;68mtrue\e[0m", color:true("444444", "true")),
  ?assertEqual("\e[38;2;136;136;136mtrue\e[0m", color:true("888888", "true")),
  ?assertEqual("\e[38;2;187;187;187mtrue\e[0m", color:true("BBBBBB", "true")),
  ?assertEqual("\e[38;2;255;255;255mtrue\e[0m", color:true("FFFFFF", "true")).

on_true_color_test() ->
  ?assertEqual("\e[48;2;0;0;0mtrue\e[0m", color:on_true([0, 0, 0], "true")),
  ?assertEqual("\e[48;2;255;255;255mtrue\e[0m", color:on_true([255, 255, 255], "true")),
  ?assertEqual("\e[48;2;0;0;0mtrue\e[0m", color:on_true("000000", "true")),
  ?assertEqual("\e[48;2;68;68;68mtrue\e[0m", color:on_true("444444", "true")),
  ?assertEqual("\e[48;2;136;136;136mtrue\e[0m", color:on_true("888888", "true")),
  ?assertEqual("\e[48;2;187;187;187mtrue\e[0m", color:on_true("BBBBBB", "true")),
  ?assertEqual("\e[48;2;255;255;255mtrue\e[0m", color:on_true("FFFFFF", "true")).
