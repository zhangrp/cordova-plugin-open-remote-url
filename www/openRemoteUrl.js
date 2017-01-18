var OpenRemoteUrl = function() {

};

OpenRemoteUrl.prototype.open = function(success, fail, options) {
    options = options || {};
    var args = [options.url? options.url : "", options.title? options.title : ""];
    return cordova.exec(success, fail, "OpenRemoteUrl", "open", args);
};

window.openRemoteUrl = new OpenRemoteUrl();

