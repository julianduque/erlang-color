-module(color).
-export([black/1, blackb/1, red/1, redb/1, green/1, greenb/1, blue/1, blueb/1]).
-export([yellow/1, yellowb/1, magenta/1, magentab/1, cyan/1, cyanb/1, white/1, whiteb/1]).

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

%% Internal
color(Color) ->
  ?ESC ++ Color ++ ?END.

colorb(Color) ->
  ?ESC ++ Color ++ ?SEP ++ ?BOLD ++ ?END.

reset() ->
  ?ESC ++ ?RST ++ ?END.
