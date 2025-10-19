# deployhugo2web

## Overview

This little utility generates a static site using hugo generator, cleaning the final 
folder and minimizing the size of the files to be published.

Once generated, it uses rsync to upload all the generated site to a remote host.

We're supposing we are happy with our new brand generated site, and so in the remote 
host we're deleting old content, we just only want a clean site.

In case we have any folder in the remote host uploades via ftp, for any other reason 
(be it files, photos, whatever) and we don't want to loose it, put those folders in 
the exclude options of the script.



## Installation

1. Download deployhugo2web.sh wherever you want.
2. 'chmod u+x ./deployhugo2web.sh'
3. Execute


## Usage

$ ./deployhugo2web


## Copyright and License

Copyright (c) 2025 Manel Guerra

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
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

