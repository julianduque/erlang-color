-module(color).
-export([black/1, blackb/1, red/1, redb/1, green/1, greenb/1, blue/1, blueb/1]).
-export([yellow/1, yellowb/1, magenta/1, magentab/1, cyan/1, cyanb/1, white/1, whiteb/1]).
-export([on_black/1, on_red/1, on_green/1, on_blue/1, on_yellow/1, on_magenta/1, on_cyan/1, on_white/1]).
-export([rgb/2, on_rgb/2]).

-include("color.hrl").

black(Text) ->
  color(?BLACK) ++ Text ++ reset().

blackb(Text) ->
  colorb(?BLACK) ++ Text ++ reset().

red(Text) ->
  color(?RED) ++ Text ++ reset().

redb(Text) ->
  colorb(?RED) ++ Text ++ reset().

green(Text) ->
  color(?GREEN) ++ Text ++ reset().

greenb(Text) ->
  colorb(?GREEN) ++ Text ++ reset().

yellow(Text) ->
  color(?YELLOW) ++ Text ++ reset().

yellowb(Text) ->
  colorb(?YELLOW) ++ Text ++ reset().

blue(Text) ->
  color(?BLUE) ++ Text ++ reset().

blueb(Text) ->
  colorb(?BLUE) ++ Text ++ reset().

magenta(Text) ->
  color(?MAGENTA) ++ Text ++ reset().

magentab(Text) ->
  colorb(?MAGENTA) ++ Text ++ reset().

cyan(Text) ->
  color(?CYAN) ++ Text ++ reset().

cyanb(Text) ->
  colorb(?CYAN) ++ Text ++ reset().

white(Text) ->
  color(?WHITE) ++ Text ++ reset().

whiteb(Text) ->
  colorb(?WHITE) ++ Text ++ reset().

on_black(Text) ->
  color(?BLACK_BG) ++ Text ++ reset_bg().

on_red(Text) ->
  color(?RED_BG) ++ Text ++ reset_bg().

on_green(Text) ->
  color(?GREEN_BG) ++ Text ++ reset_bg().

on_blue(Text) ->
  color(?BLUE_BG) ++ Text ++ reset_bg().

on_yellow(Text) ->
  color(?YELLOW_BG) ++ Text ++ reset_bg().

on_magenta(Text) ->
  color(?MAGENTA_BG) ++ Text ++ reset_bg().

on_cyan(Text) ->
  color(?CYAN_BG) ++ Text ++ reset_bg().

on_white(Text) ->
  color(?WHITE_BG) ++ Text ++ reset_bg().

rgb(RGB, Text) ->
  % rgb_color(RGB) ++ Text ++ reset().
  ?ESC ++ ?RGB_FG ++ ?SEP ++ rgb_color(RGB) ++ ?END ++ Text ++ reset().

on_rgb(RGB, Text) ->
  ?ESC ++ ?RGB_BG ++ ?SEP ++ rgb_color(RGB) ++ ?END ++ Text ++ reset_bg().

%% Internal
color(Color) ->
  ?ESC ++ Color ++ ?END.

colorb(Color) ->
  ?ESC ++ Color ++ ?SEP ++ ?BOLD ++ ?END.

rgb_color([R, G, B]) when R >= 0, R =< 5, G >= 0, G =< 5, B >= 0, B =< 5 ->
  integer_to_list(16 + (R * 36) + (G * 6) + B).

reset() ->
  ?ESC ++ ?RST ++ ?END.

reset_bg() ->
  ?ESC ++ ?DEFAULT_BG ++ ?END.
