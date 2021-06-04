### 插件安装 for Hexo-NexT

- hexo-symbols-count-time

    > 作用: 统计字数与显示阅读所需时间
    >
    > 参考文章: [Hexo NexT v6.3.0 字数统计](https://co5.me/2018/180613-wordcount.html)
    >
    > 使用方法:
    >
    > ```sh
    > # 请在 Hexo 博客文件的根目录下操作
    > npm i hexo-symbols-count-time --save
    > # 在 _config.yml 末尾添加:
    > symbols_count_time:
    > 	symbols: true
    > 	time: true
    > 	total_symbols: true
    > 	total_time: true
    > # 在 themes/next/_congit.yml 搜索 wordcount 改为:
    > symbols_count_time:
    > separated_meta: true
    > item_text_post: true
    > item_text_total: false
    > awl: 2
    > wpm: 300
    > ```

- 

