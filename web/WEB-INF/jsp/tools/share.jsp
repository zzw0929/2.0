<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/17
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ZHU's Coding</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/share_normalize.css" />
  <link rel='stylesheet prefetch' href='http://libs.useso.com/js/font-awesome/4.2.0/css/font-awesome.min.css'>
  <link rel='stylesheet prefetch' href='<%=request.getContextPath()%>/resources/css/share_animate.min.css'>

  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/share_styles.css">
  <!--[if IE]>
  <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
  <![endif]-->
</head>
<body>
<div>
  <div class="htmleaf-container">
  <div id='ss_menu'>
    <div>
      <i class="fa fa-qq"></i>
    </div>
    <div>
      <i class="fa fa-weibo"></i>
    </div>
    <div>
      <i class="fa fa-weixin"></i>
    </div>
    <div>
      <i class="fa fa-renren"></i>
    </div>
    <div class='menu'>
      <div class='share' id='ss_toggle' data-rot='180'>
        <div class='circle'></div>
        <div class='bar'></div>
      </div>
    </div>
  </div>

</div>


<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"><\/script>')</script>
<script>
  $(document).ready(function (ev) {
    var toggle = $('#ss_toggle');
    var menu = $('#ss_menu');
    var rot;
    $('#ss_toggle').on('click', function (ev) {
      rot = parseInt($(this).data('rot')) - 180;
      menu.css('transform', 'rotate(' + rot + 'deg)');
      menu.css('webkitTransform', 'rotate(' + rot + 'deg)');
      if (rot / 180 % 2 == 0) {
        toggle.parent().addClass('ss_active');
        toggle.addClass('close');
      } else {
        toggle.parent().removeClass('ss_active');
        toggle.removeClass('close');
      }
      $(this).data('rot', rot);
    });
    menu.on('transitionend webkitTransitionEnd oTransitionEnd', function () {
      if (rot / 180 % 2 == 0) {
        $('#ss_menu div i').addClass('ss_animate');
      } else {
        $('#ss_menu div i').removeClass('ss_animate');
      }
    });
  });
</script>
</body>
</html>