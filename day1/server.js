var http = require('http');
var url = require('url'); // 解析请求路由

function start(route) {
    function onRequest(request, response) {
        const pathname = url.parse(request.url).pathname;
        route(pathname);
        response.writeHead(200, {"Content-Type": "text/plain"});
        var content = route(pathname);
        response.write(content);
        response.end();
    }
    http.createServer(onRequest).listen(8888);
}

exports.start = start;