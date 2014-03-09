-module(color_test).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

%% Colors
color_test_() ->
  [?_assertEqual(To, to_s(color:Fun(From))) || {From, Fun, To} <- [
    % Normal colors
    {"black",      black,      "\e[30mblack\e[0m"},
    {"red",        red,        "\e[31mred\e[0m"},
    {"green",      green,      "\e[32mgreen\e[0m"},
    {"yellow",     yellow,     "\e[33myellow\e[0m"},
    {"blue",       blue,       "\e[34mblue\e[0m"},
    {"magenta",    magenta,    "\e[35mmagenta\e[0m"},
    {"cyan",       cyan,       "\e[36mcyan\e[0m"},
    {"white",      white,      "\e[37mwhite\e[0m"},
    % Bright colors
    {"black",      blackb,     "\e[30;1mblack\e[0m"},
    {"red",        redb,       "\e[31;1mred\e[0m"},
    {"green",      greenb,     "\e[32;1mgreen\e[0m"},
    {"yellow",     yellowb,    "\e[33;1myellow\e[0m"},
    {"blue",       blueb,      "\e[34;1mblue\e[0m"},
    {"magenta",    magentab,   "\e[35;1mmagenta\e[0m"},
    {"cyan",       cyanb,      "\e[36;1mcyan\e[0m"},
    {"white",      whiteb,     "\e[37;1mwhite\e[0m"},
    % Background colors
    {"on_black",   on_black,   "\e[40mon_black\e[49m"},
    {"on_red",     on_red,     "\e[41mon_red\e[49m"},
    {"on_green",   on_green,   "\e[42mon_green\e[49m"},
    {"on_yellow",  on_yellow,  "\e[43mon_yellow\e[49m"},
    {"on_blue",    on_blue,    "\e[44mon_blue\e[49m"},
    {"on_magenta", on_magenta, "\e[45mon_magenta\e[49m"},
    {"on_cyan",    on_cyan,    "\e[46mon_cyan\e[49m"},
    {"on_white",   on_white,   "\e[47mon_white\e[49m"}
  ]].

rgb_test_() ->
  [?_assertEqual(Result, to_s(color:rgb(Color, "rgb")))
    || {Color, Result} <- [
      {[0, 0, 0], "\e[38;5;16mrgb\e[0m"},
      {[1, 1, 1], "\e[38;5;59mrgb\e[0m"},
      {[2, 2, 2], "\e[38;5;102mrgb\e[0m"},
      {[3, 3, 3], "\e[38;5;145mrgb\e[0m"},
      {[4, 4, 4], "\e[38;5;188mrgb\e[0m"},
      {[5, 5, 5], "\e[38;5;231mrgb\e[0m"}
    ]
  ].

on_rgb_test_() ->
  [?_assertEqual(Result, to_s(color:on_rgb(Color, "rgb")))
    || {Color, Result} <- [
      {[0, 0, 0], "\e[48;5;16mrgb\e[49m"},
      {[1, 1, 1], "\e[48;5;59mrgb\e[49m"},
      {[2, 2, 2], "\e[48;5;102mrgb\e[49m"},
      {[3, 3, 3], "\e[48;5;145mrgb\e[49m"},
      {[4, 4, 4], "\e[48;5;188mrgb\e[49m"},
      {[5, 5, 5], "\e[48;5;231mrgb\e[49m"}
    ]
  ].

true_color_test_() ->
  [?_assertEqual(Result, to_s(color:true(Color, "true")))
    || {Color, Result} <- [
      {[0, 0, 0], "\e[38;2;0;0;0mtrue\e[0m"},
      {[255, 255, 255], "\e[38;2;255;255;255mtrue\e[0m"},
      {"000000", "\e[38;2;0;0;0mtrue\e[0m"},
      {"444444", "\e[38;2;68;68;68mtrue\e[0m"},
      {"888888", "\e[38;2;136;136;136mtrue\e[0m"},
      {"BBBBBB", "\e[38;2;187;187;187mtrue\e[0m"},
      {"FFFFFF", "\e[38;2;255;255;255mtrue\e[0m"}
    ]
  ].

on_true_color_test_() ->
  [?_assertEqual(Result, to_s(color:on_true(Color, "true")))
    || {Color, Result} <- [
      {[0, 0, 0], "\e[48;2;0;0;0mtrue\e[0m"},
      {[255, 255, 255], "\e[48;2;255;255;255mtrue\e[0m"},
      {"000000", "\e[48;2;0;0;0mtrue\e[0m"},
      {"444444", "\e[48;2;68;68;68mtrue\e[0m"},
      {"888888", "\e[48;2;136;136;136mtrue\e[0m"},
      {"BBBBBB", "\e[48;2;187;187;187mtrue\e[0m"},
      {"FFFFFF", "\e[48;2;255;255;255mtrue\e[0m"}
    ]
  ].

iodata_test() ->
  ?assertEqual(
    "\e[30mtest\e[0m",
    to_s(color:black([<<"t">>, "e", 115, [[<<"t">>]]]))
  ).

%% Internal

to_s(IOData) ->
  binary_to_list(iolist_to_binary(IOData)).
