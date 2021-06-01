const { type } = require("os");

function start() {
    console.log('start 处理函数');
    return '首页';
}

function upload() {
    console.log('upload 处理函数');
    return '上传';
}

function favicon() {
    console.log('favicon 处理函数');
    return 'favicon 图标';
}

const route = {};
route['/'] = start;
route['/index'] = start;
route['/upload'] = upload;
route['/favicon.ico'] = favicon;

function handle(pathname) {
    console.log(route[pathname]);
    console.log(typeof route[pathname]);
    if (typeof route[pathname] === 'function') {
        return route[pathname]();
    } else {
        return ('404');
    }
}

exports.handle = handle;