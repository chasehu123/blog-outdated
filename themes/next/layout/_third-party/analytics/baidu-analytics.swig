<!--{%- if theme.baidu_analytics %}
  <script{{ pjax }}>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?{{ theme.baidu_analytics }}";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s);
    })();
  </script>
{%- endif %}-->
{%- if theme.baidu_analytics %}
  <script{{ pjax }}>
    var _hmt = _hmt || [];
    (function() {
      var host = window.location.host;
      if (host.indexOf("127.0.0.1") == -1 && host.indexOf("localhost") == -1) {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?{{ theme.baidu_analytics }}";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      }
    })();
  </script>
{%- endif %}