var url = require('url');
var handle = require('./requestHandlers');

function route(pathname) {
    return handle.handle(pathname);
}

exports.route = route;
