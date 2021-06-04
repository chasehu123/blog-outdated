---
title: Hexo_NexT 博客深度定制指津
date: 2021-06-04 13:37:30
tags: Hexo
categories: 博客优化
---

### 主要参考文章

[这可能是迄今为止最全的hexo博客搭建教程](https://cloud.tencent.com/developer/article/1520557)

[Hexo-Next 主题博客个性化配置超详细，超全面(两万字)](https://blog.csdn.net/as480133937/article/details/100138838)

[Hexo官方文档](https://hexo.io/zh-cn/docs/configuration.html)

[NexT官方文档](http://theme-next.iissnan.com/theme-settings.html#tags-page)

### 前置条件

> 1. 已安装 Git Node.js (推荐使用 Node.js 版本管理软件 nvm)
> 2. 如果是中国大陆用户, 请把 npm 镜像源切换成淘宝镜像源或其他
> 3. 熟悉基本操作(包括但不限于 Git / GitHub)

### 基本操作

##### 重点操作

```shell
sudo npm install -g hexo-cli # Win10 用户去掉 sudo 用管理员权限
npm install
hexo s -p 8888
hexo g
npm install hexo-deployer-git --save # 安装部署工具
hexo d
hexo clean
npm install hexo --save # 初始化请使用这个
hexo new page "<pageName>"
# 记得修改 _config.yml 文件以添加你的博客仓库信息
# 设置一下 git config --global
```

##### 生成 tags / categories 页面

```shell
# 在博客文件的根目录下操作
hexo new page "tags"
#修改 sources/tags/index.html:
---
title: tags
date: 2021-06-04 11:33:29
type: "tags"
---
# 生成 categories 方法一样
```

##### 添加 README.md 文档

```shell
# 在博客文件的根目录下
# 修改 _config.yml 搜索 skip_render写入:
skip_render: README.md
```

##### 添加 License

```shell
# 在主题配置文件中搜索 creative_commons 修改为:
creative_commons:
  license: by-nc-sa
  sidebar: true
  post: true
  language:
```

##### 添加 GitHub 丝带

```shell
# vim themes/next/layout/_layout.swig 搜索 headband 写入:
<a href="https://github.com/chasehu123" class="github-corner" aria-label="View source on GitHub"><svg width="80" height="80" viewBox="0 0 250 250" style="fill:#151513; color:#fff; position: absolute; top: 0; border: 0; right: 0;" aria-hidden="true"><path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path><path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path><path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path></svg></a><style>.github-corner:hover .octo-arm{animation:octocat-wave 560ms ease-in-out}@keyframes octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media (max-width:500px){.github-corner:hover .octo-arm{animation:none}.github-corner .octo-arm{animation:octocat-wave 560ms ease-in-out}}</style>
```

##### 博客配色优化

> 参考文章: [Hexo+Next博客美化](https://ryzn.me/p/beauty-my-blog.html)
>
> ```shell
> # 在主题配置文件中做修改
> custom_file_path:
> style: source/_data/fetch1.styl
> # 写入:
> ### source/_data/next.yml
> ## 一些关键配置
> # 新增styl文件，最终会编译成css代码
> custom_file_path:
> style: source/_data/styles.styl
> 
> # 版权相关
> creative_commons:
> license: by-nc-sa
> sidebar: true
> post: true
> language: zh-CN
> 
> # next的子主题
> scheme: Gemini
> 
> # 不要“阅读更多”的按钮
> read_more_btn: false
> body
> background: #e5e6d0 url(/images/bg.jpg) repeat 0 0
> font-size: 0.96em
> line-height: 1.78
> 
> 
> .site-brand-container
> background: #172A3A
> 
> .site-nav
> font-size: 110%
> 
> .sidebar
> font-size: 105%
> 
> .header-inner
> border-radius: 0 0 8px 8px
> 
> .sidebar-inner
> border-radius: 8px
> 
> .post-block + .post-block
> border-radius: 8px
> 
> .post-block
> border-radius: 0 0 8px 8px
> 
> h1.post-title
> background: coral
> background-image: -webkit-linear-gradient(top, coral, coral)
> -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25), inset 0 -1px 0 rgba(0, 0, 0, 0.1)
> box-shadow: 0px 1px 3px rgba(0, 0, 0, .05), 0 -1px 0 rgba(255,255,255, .6) inset
> /* position: fixed */
> width: 100%
> z-index: 1000
> border-radius: 16px
> /* height: 50px */
> /* cursor: pointer */
> /* margin-top: 10px */
> padding: 8px 0
> 
> .posts-expand .post-meta
> margin-bottom: 30px
> 
> .post-button
> margin-top: 0
> 
> :root
> --content-bg-color: #fafaf3
> --link-color: #A34D32
> --link-hover-color: cadetblue
> --btn-default-bg: #fafaf3
> --btn-default-color: #A34D32
> --btn-default-hover-bg: #CFCF8C
> --btn-default-hover-color: #508991
> 
> .btn
> border: 0
> 
> // 近期文章
> .links-of-recent-posts
> font-size: 0.8125em
> margin-top: 10px
> 
> .links-of-recent-posts-title
> font-size: 1.03em
> font-weight: 600
> margin-top: 0
> 
> .links-of-recent-posts-list
> list-style: none
> margin: 0
> padding: 0
> ```
>
> 

### 我的版本信息

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
    > 	separated_meta: true
    > 	item_text_post: true
    > 	item_text_total: false
    > 	awl: 2
    > 	wpm: 300
    > ```

- hexo-helper-live2d

    > 作用: 网页宠物
    >
    > 参考文章: [Hexo添加helper-live2d模型插件](https://zhuanlan.zhihu.com/p/149536828)
    >
    > 使用方法:
    >
    > ```shell
    > # 请在 Hexo 博客文件的根目录下操作
    > npm i hexo-helper-live2d --save
    > npm install live2d-widget-model-hijiki # 也可以下载其他模型
    > # 在 _confiy.yml 末尾添加:
    > live2d:
    > enable: true
    > scriptFrom: local
    > pluginRootPath: live2dw/
    > pluginJsPath: lib/
    > pluginModelPath: assets/
    > tagMode: false
    > debug: false
    > model:
    > use: live2d-widget-model-koharu
    > display:
    > position: right
    > width: 150
    > height: 300
    > mobile:
    > show: false # 设置为 false 时, 手机端不可见
    > ```
