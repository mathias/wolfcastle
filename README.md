wolfcastle
==========

![Wolfcastle](https://github.com/mathias/wolfcastle/raw/master/images/wolfcastle.png)

`wolfcastle` is a simple Node app that listens on a port for requests with a URI in the query string, grabs the URI, parses out the body with `readabilitySAX` (it works like the Readability bookmarklet), and returns a JSON object containing just the body text of the article or blog post you sent it, as well as some metadata.

There is no authentication, rate limiting, or other niceties built in since it is expected that you will run it on a machine with another server, which will asynchronously proxy its body parsing jobs to it.

`wolfcastle` is used in combination with a few other apps in a project that I am working on, in what I'm dubbing a "micro-SOA" design.

## License
Copyright (c) 2013 Matt Gauger

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
