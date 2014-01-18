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

