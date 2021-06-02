var express = require('express');
var router = express.Router();
var connection = require('../tools/mysql.js');
const chalk = require('chalk');
const fs = require('fs');

connection.connect((err) => {
    if (err) {
        console.log(chalk.red('[query] -' + err ));
        return;
    }
    console.log('[connection connect] success!');
});

const handler = (data, success = true) => {
    if (success) {
        return {
            success: true,
            code: 200,
            data,
        };
    } else {
        return {
            success: false,
            code: 100,
            data: {},
        }
    }
}

// 前置处理
router.use((req, res, next) => {
    console.log(chalk.green('收到请求', req.path));
    next();
});

router.param('name', (res, req, next, value) => {
    console.log('id', value);
    next();
})

router.get('/myName/:name', (req, res) => {
    console.log('req', req.params); // 就是name值
    res.send('12');
});

router.get('/getVideoList', (req, res) => {
    const sql = 'select * from video';
    connection.query(sql, (err, rows) => {
        if (err) {
            console.log(chalk.red('err', err));
            return;
        }
        res.send(handler(rows));
    });
});

router.get('/video', (req, res) => {
    let path = '../assets/sample.mp4';
    let stat = fs.statSync(path);
    let fileSize = stat.size;
    let range = req.headers.range;

    if (range) {
        let parts = range.replace(/bytes=/, '').split('-');
        let start = parseInt(parts[0], 10);
        let end = parts[1] ? parseInt(parts[1], 10) : start + 999999;

        end = end > fileSize - 1 ? fileSize - 1 : end;

        // let chunkSize = (end - start) + 1;
        // let file = fs.createReadStream(path, {})
    }

    const head = { 'Content-Type': 'video/mp4' };
    res.writeHead(200, head);
    fs.createReadStream('assets/sample.mp4').pipe(res);
});

module.exports = router;
