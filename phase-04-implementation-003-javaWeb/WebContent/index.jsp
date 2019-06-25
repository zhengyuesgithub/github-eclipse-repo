<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		
		$(clickedObj).ready(
				function()
				{
					$(".btn1").click(
							function()
							{
								$("img").animate(
										{right:"+=200px",
										 width : '-=15px',
										 opacity : '-=0.1',
										 bottom : '+=50px'
										},5000);
							}
									);
					$(".btn2").click(
							function()
							{
								$("img").animate(
										{
											right:"0",
											width : '150px',
											opacity : '1',
											bottom : '10px'
										});
							}
									);
				}			
							);
		/*
		$(clickedObj).animate({
			width : '10px',//图片逐渐变小
			opacity : '0.2',//图片逐渐消失
			right : '1800px',//图片左移
			top : '100px'//图片向上移动
		}, 12000);
		*/
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！ 欢迎大家观赏,谢谢！
	</span>
	<audio id="waiting" src="/static/audio/waiting.mp3" preload="auto"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: orange; position:absolute; left :10px;top:50px" >
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: grey">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
	<img src="/static/imgs/earth.png"
		style="position: absolute; right: 10px; bottom: 10px; width: 150px"
		onclick="run(this);return false" />
	<button class="btn1" style="position: absolute; right:10px;top: 10px; width: 150px">动画</button>
	<button class="btn2" style="position: absolute; right:160px;top: 10px; width: 150px">重置</button>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="400px" controls="controls"
			src="http://gss3.baidu.com/6LZ0ej3k1Qd3ote6lo7D0j9wehsv/tieba-smallvideo-transcode/61990981_fd6360c7b3d2674e0b0937c34a4c1b1b_0.mp4" onended="onVideoEnd();" />
	</div>
</body>
</html>