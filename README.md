# cordova-plugin-open-remote-url
open remote url instead iframe for ios

##安装方式
cordova plugin add https://github.com/zhangrp/cordova-plugin-open-remote-url


##使用方式
```javascript
    window["openRemoteUrl"].open(function () {
        //success
    }, function () {
        //error
    }, {"url": path, "title": pageName});

```

