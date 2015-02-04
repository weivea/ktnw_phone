fis.config.set('project.exclude', /^\/\.idea\//i);
fis.config.set('roadmap.path', [
    {
        reg : '**.jsp' //jsp文件不调整部署结构
    },
    {
        reg : 'favicon.ioc'
    },
    {
        reg : 'WEB-INF/**' //WEB-INF目录下的文件不调整部署结构
    },
    {
        reg : 'map.json',   //map.json发布到map目录下
        release : 'map/$&'
    },

    {
        reg : 'README.md',
        release : false
    },
    {
        reg : '**',             //其他文件
        release : '/static/$&'  //发布到/static/目录下
    }
]);

//png图片使用pngquant压缩算法，支持将png24压缩为png8，ie6下显示效果较好
fis.config.set('settings.optimizer.png-compressor.type', 'pngquant');

//csssprite布局算法调整，默认是linear，线性布局
//fis.config.set('settings.spriter.csssprites.layout', 'matrix');
//自动define包装
//fis.config.set('settings.postprocessor.jswrapper.type', 'amd');
