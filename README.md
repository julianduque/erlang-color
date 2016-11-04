# erlang-color
[![Build Status](https://travis-ci.org/julianduque/erlang-color.png)](https://travis-ci.org/julianduque/erlang-color)

ANSI colors for your Erlang

## Usage:

#### ANSI standard colors

``` erlang
1> io:format("Hello, this is the ~s color~n", [ color:red("red") ]).
```

![Screenshot 1](https://cldup.com/20QQ-o0RTT.png)

``` erlang
1> io:format("Hello, this is on ~s~n", [ color:on_blue("blue blackground") ]).
```

![Screenshot 2](https://cldup.com/g_BUaqeNTw.png)

Make sure you use the `~s` string type, `~p` will escape the ANSI code.

#### xterm 256 colors

``` erlang
1> io:format("Hello, this color is ~s~n", [ color:rgb([0,1,0], "green") ]).
```

![Screenshot 3](https://cldup.com/wKesRAqdFj.png)

#### true 24-bit colors

Note: as of this writing, 24-bit colors (ISO-8613-3) are not widely adopted in terminal emulators. Konsole and iTerm2 nighly builds are known to support them.

``` erlang
1> io:format("The solarized template is ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~s ~n", [
  color:true("002B36", "base03"), color:true("073642", "base02"), color:true("586E75", "base01"),
  color:true("657B83", "base00"), color:true("839496", "base0"),  color:true("93A1A1", "base1"),
  color:true("EEE8D5", "base2"),  color:true("FDF6E3", "base3"),  color:true("B58900", "yellow"),
  color:true("CB4B16", "orange"), color:true("DC322F", "red"),    color:true("D33682", "magenta"),
  color:true("6C71C4", "violet"), color:true("268BD2", "blue"),   color:true("2AA198", "cyan"),
  color:true("859900", "green")]).
```

![Screenshot 4](https://cldup.com/M-JcBjy9t1.png)

## The MIT License (MIT)

Copyright (c) 2016 Julian Duque, Evgeni Kolev, Duncan McGreggor

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation nfiles (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
