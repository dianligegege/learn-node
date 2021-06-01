var express = require('express');
var router = express.Router();

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
    console.log('收到请求', req.path);
    next();
});

router.param('name', (res, req, next, name) => {
    console.log('id', name);
    next();
})

router.get('/myName/:name', (req, res) => {
    res.send('12');
});

router.get('/getName', (req, res) => {
    res.send(handler({ name: 'dianli' }, false));
});

module.exports = router;
