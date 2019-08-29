---
layout: post
title: "cURL Exercises"
categories: [micro-skill]
excerpt: "Resources to understand Dynamic Programming."
---

[Julia Evans Blog Post](https://jvns.ca/blog/2019/08/27/curl-exercises/)

> The idea is that you find a small micro-skill that can be learned in maybe 3 sessions of 45 minutes, and focus on learning that micro-skill.

> These exercises are about understanding how to make different kinds of HTTP requests with curl. They’re a little repetitive on purpose. They exercise basically everything I do with curl.


#### Excercises:
1. Request https://httpbin.org
    
    Command: `curl https://httpbin.org`
    
    ```shell
    StatusCode        : 200
    StatusDescription : OK
    Content           : <!DOCTYPE html>
                        <html lang="en">

                        <head>
                            <meta charset="UTF-8">
                            <title>httpbin.org</title>
                            <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Source+Code
                        +Pro:300,600|Tit...
    RawContent        : HTTP/1.1 200 OK
                        Access-Control-Allow-Credentials: true
                        Access-Control-Allow-Origin: *
                        Referrer-Policy: no-referrer-when-downgrade
                        X-Content-Type-Options: nosniff
                        X-Frame-Options: DENY
                        X-XSS-Prot...
    Forms             : {}
    Headers           : {[Access-Control-Allow-Credentials, true], [Access-Control-Allow-Origin, *],
                        [Referrer-Policy, no-referrer-when-downgrade], [X-Content-Type-Options, nosniff]...} 
    Images            : {}
    InputFields       : {}
    Links             : {@{innerHTML=<SVG aria-hidden=true style="BORDER-LEFT-WIDTH: 0px;
                        BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; RIGHT: 0px; POSITION: absolute; 
                        COLOR: #fff; TOP: 0px; BORDER-TOP-WIDTH: 0px; fill: #151513" viewBox="0 0 250 250" 
                        height="80" width="80"><PATH d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0    
                        Z"></PATH><PATH class=octo-arm style="transform-origin: 130px 106px"
                        fill="currentColor" d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7  
                        120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3     
                        125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2"></PATH><PATH class=octo-body       
                        fill="currentColor" d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4
                        L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0   
                        C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1     
                        176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2      
                        200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6      
                        C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1
                        C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9
                        141.8,141.8 Z"></PATH></SVG>; innerText=; outerHTML=<A aria-label="View source on   
                        Github" class=github-corner href="https://github.com/requests/httpbin"><SVG
                        aria-hidden=true style="BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px;
                        BORDER-BOTTOM-WIDTH: 0px; RIGHT: 0px; POSITION: absolute; COLOR: #fff; TOP: 0px;    
                        BORDER-TOP-WIDTH: 0px; fill: #151513" viewBox="0 0 250 250" height="80"
                        width="80"><PATH d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></PATH><PATH 
                        class=octo-arm style="transform-origin: 130px 106px" fill="currentColor"
                        d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 
                        C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6     
                        130.6,101.9 134.4,103.2"></PATH><PATH class=octo-body fill="currentColor"
                        d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2       
                        139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2      
                        159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2      
                        C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2     
                        216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8    
                        198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 
                        152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z"></PATH></SVG></A>;   
                        outerText=; tagName=A; aria-label=View source on Github; class=github-corner;
                        href=https://github.com/requests/httpbin}, @{innerHTML=the developer - Website;       
                        innerText=the developer - Website; outerHTML=<A href="https://kennethreitz.org"       
                        target=_blank>the developer - Website</A>; outerText=the developer - Website;
                        tagName=A; href=https://kennethreitz.org; target=_blank}, @{innerHTML=Send email to   
                        the developer; innerText=Send email to the developer; outerHTML=<A
                        href="mailto:me@kennethreitz.org">Send email to the developer</A>; outerText=Send     
                        email to the developer; tagName=A; href=mailto:me@kennethreitz.org},
                        @{innerHTML=Flasgger; innerText=Flasgger; outerHTML=<A
                        href="https://github.com/rochacbruno/flasgger" target=_blank>Flasgger</A>;
                        outerText=Flasgger; tagName=A; href=https://github.com/rochacbruno/flasgger;
                        target=_blank}...}
    ParsedHtml        : System.__ComObject
    RawContentLength  : 9593
    ```

2. Request https://httpbin.org/anything. httpbin.org/anything will look at the request you made, parse it, and echo back to you what you requested. curl’s default is to make a GET request.
3. Make a POST request to https://httpbin.org/anything
4. Make a GET request to https://httpbin.org/anything, but this time add some query parameters (set value=panda).
5. Request google’s robots.txt file (www.google.com/robots.txt)
6. Make a GET request to https://httpbin.org/anything and set the header User-Agent: elephant.
7. Make a DELETE request to https://httpbin.org/anything
8. Request https://httpbin.org/anything and also get the response headers
9. Make a POST request to https://httpbin.com/anything with the JSON body {"value": "panda"}
10. Make the same POST request as the previous exercise, but set the Content-Type header to application/json (because POST requests need to have a content type that matches their body). Look at the json field in the response to see the difference from the previous one.
11. Make a GET request to https://httpbin.org/anything and set the header Accept-Encoding: gzip (what happens? why?)
12. Put a bunch of a JSON in a file and then make a POST request to https://httpbin.org/anything with the JSON in that file as the body
13. Make a request to https://httpbin.org/image and set the header ‘Accept: image/png’. Save the output to a PNG file and open the file in an image viewer. Try the same thing with with different Accept: headers.
14. Make a PUT request to https://httpbin.org/anything
15. Request https://httpbin.org/image/jpeg, save it to a file, and open that file in your image editor.
16. Request https://www.twitter.com. You’ll get an empty response. Get curl to show you the response headers too, and try to figure out why the response was empty.
17. Make any request to https://httpbin.org/anything and just set some nonsense headers (like panda: elephant)
18. Request https://httpbin.org/status/404 and https://httpbin.org/status/200. Request them again and get curl to show the response headers.
19. Request https://httpbin.org/anything and set a username and password (with -u username:password)
20. Download the Twitter homepage (https://twitter.com) in Spanish by setting the Accept-Language: es-ES header.
21. Make a request to the Stripe API with curl. (see https://stripe.com/docs/development for how, they give you a test API key). Try making exactly the same request to https://httpbin.org/anything.
