# Color

ANSI colors for your Erlang

## Usage:

```
1> io:format("Hello, this is the ~s color~n", [ color:red("red") ]).
```

Make sure you use the `~s` string type, `~p` will escape the ANSI code.

![Screenshot](http://screencloud.net//img/screenshots/72780a4cdb969e3e3b8a3c0745847143.png)

## The MIT License (MIT)

Copyright (c) 2014 Julian Duque

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
