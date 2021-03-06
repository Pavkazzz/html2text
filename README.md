# html2texttg

[![Build Status](https://github.com/Pavkazzz/html2texttg/workflows/Python%20packages/badge.svg)](http://travis-ci.org/Alir3z4/html2text)
[![Downloads](http://badge.kloud51.com/pypi/d/html2texttg.png)](https://pypi.python.org/pypi/html2text/)
[![Version](http://badge.kloud51.com/pypi/v/html2texttg.png)](https://pypi.python.org/pypi/html2text/)
[![Wheel?](http://badge.kloud51.com/pypi/wheel/html2texttg.png)](https://pypi.python.org/pypi/html2text/)
[![Format](http://badge.kloud51.com/pypi/format/html2texttg.png)](https://pypi.python.org/pypi/html2text/)
[![License](http://badge.kloud51.com/pypi/license/html2texttg.png)](https://pypi.python.org/pypi/html2text/)


html2text-tg is a Python script that converts a page of HTML into clean, easy-to-read plain ASCII text. Better yet, that ASCII also happens to be valid Markdown (a text-to-HTML format).

Markdown supported by telegram

Usage: `html2texttg [(filename|url) [encoding]]`

| Option                                                 | Description
|--------------------------------------------------------|---------------------------------------------------
| `--version`                                            | Show program's version number and exit
| `-h`, `--help`                                         | Show this help message and exit
| `--ignore-links`                                       | Don't include any formatting for links
|`--escape-all`                                          | Escape all special characters.  Output is less readable, but avoids corner case formatting issues.
| `--reference-links`                                    | Use reference links instead of links to create markdown
| `--mark-code`                                          | Mark preformatted and code blocks with [code]...[/code]

For a complete list of options see the [docs](https://github.com/Alir3z4/html2text/blob/master/docs/usage.md)


Or you can use it from within `Python`:

```
>>> import html2texttg
>>>
>>> print(html2texttg.html2text("<p><strong>Zed's</strong> dead baby, <em>Zed's</em> dead.</p>"))
**Zed's** dead baby, _Zed's_ dead.

```


Or with some configuration options:
```
>>> import html2texttg
>>>
>>> h = html2texttg.HTML2Text()
>>> # Ignore converting links from HTML
>>> h.ignore_links = True
>>> print h.handle("<p>Hello, <a href='http://earth.google.com/'>world</a>!")
Hello, world!

>>> print(h.handle("<p>Hello, <a href='http://earth.google.com/'>world</a>!"))

Hello, world!

>>> # Don't Ignore links anymore, I like links
>>> h.ignore_links = False
>>> print(h.handle("<p>Hello, <a href='http://earth.google.com/'>world</a>!"))
Hello, [world](http://earth.google.com/)!

```

*Originally written by Aaron Swartz. This code is distributed under the GPLv3.*


## How to install

`html2texttg` is available on pypi
https://pypi.python.org/pypi/html2texttg

```
$ pip install html2texttg
```


## How to run unit tests

```
$ python -m unittest
```

## Documentation

Documentation lives [here](https://github.com/pavkazzz/html2text/blob/master/docs/usage.md)
