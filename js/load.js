function dynamicallyLoadScript(url) {
    var script = document.createElement('script');
    script.src = url;

    document.head.appendChild(script);
}

 dynamicallyLoadScript('js/opaque.js');
