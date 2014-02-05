# Color
[![Build Status](https://travis-ci.org/julianduque/erlang-color.png)](https://travis-ci.org/julianduque/erlang-color)

ANSI colors for your Erlang

## Usage:

#### ANSI standard colors

``` erlang
1> io:format("Hello, this is the ~s color~n", [ color:red("red") ]).
```

![screen shot 2014-02-11 at 9 17 58 am](https://f.cloud.github.com/assets/1532071/2146293/946a634a-93bc-11e3-9a92-666b4f98f974.png)

``` erlang
1> io:format("Hello, this is on ~s~n", [ color:on_blue("blue blackground") ]).
```

![screen shot 2014-02-11 at 9 16 25 am](https://f.cloud.github.com/assets/1532071/2146294/9471a056-93bc-11e3-8b97-ac8fe0452bb3.png)

#### xterm 256 colors

``` erlang
1> io:format("Hello, this color is ~s~n", [ color:rgb([0,1,0], "green") ]).
```

![screen shot 2014-02-11 at 9 23 49 am](https://f.cloud.github.com/assets/1532071/2146292/945b6cd2-93bc-11e3-9ca0-111e0d69a9fd.png)

Make sure you use the `~s` string type, `~p` will escape the ANSI code.

![Screenshot](http://screencloud.net//img/screenshots/72780a4cdb969e3e3b8a3c0745847143.png)

## The MIT License (MIT)

Copyright (c) 2014 Julian Duque, Evgeni Kolev

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
