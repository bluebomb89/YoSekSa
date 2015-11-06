<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html lang="ko" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths"><head>
	<meta charset="UTF-8">
	<link href="../css/style99.css" type="text/css" rel="stylesheet" media="all">
	<script type="text/javascript" async="" src="http://www.google-analytics.com/plugins/ga/inpage_linkid.js" id="undefined"></script><script type="text/javascript" async="" src="http://stats.g.doubleclick.net/dc.js"></script><script src="/dist/js/vendor/jquery-1.11.0.min.js"></script>
	<script src="/javascript/modernizr-2.6.2.min.js"></script>
	<script src="/lib/js/jsGeneralFunction.js"></script>
  		<style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow-x:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}
			.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;_background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f6f7f8;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #3a5795;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;left:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #2f477a;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f8;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
				.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
				</style>
				</head>
					<body>
						<script type="text/javascript" src="https://secure.nuguya.com/nuguya/nice.nuguya.oivs.crypto.js"></script>
						<script type="text/javascript" src="https://secure.nuguya.com/nuguya/nice.nuguya.oivs.msg.js"></script>
						<script type="text/javascript" src="https://secure.nuguya.com/nuguya/nice.nuguya.oivs.util.js"></script>
						
						
						<div class="container-s">
							<div class="container container-fluid">
								<div id="accountM-wrapper">
									<div class="accountM-boxes" style=" height: 260px; ">
										<h2 class="h2">아이디 찾기</h2>
											<p>주민번호로 아이디 찾기는 개인정보보호 차원에서 더 이상 지원하지 않습니다.</p>
												<div class="box floatL" style=" margin-top: 23px;">
													<div class="head">
														<label for="fEmail"><input name="accountID" type="radio" class="radioShow" value="0" checked="checked" onclick="$('#accountID-fPhone').hide();$('#accountID-fEmail').show();">이메일</label>
													
      												</div>
														<div id="accountID-fEmail" class="accountM-box1">
															<form name="frmsearchIDemail" method="post" onsubmit="return jsemailSearchID();">
            													<input type="hidden" name="paKey" value="1">
            													<input type="hidden" name="pinsection" value="5">
            														<table>
																		<tbody>
																			<tr>
																				<th><label for="fEmailName">성명</label></th>
																				<td><input type="text" value="" name="sUN" maxlength="30"></td>
																			</tr>
																				<tr>
																					<th><label for="fEmailMail-1">이메일</label></th>
																						<td>
																							<input type="text" value="" name="sEmail" class="text_email" maxlength="50">
																						</td>
																				</tr>
																					<tr>
																						<th></th>
																							<td class="btn"><button class="btn-typeF">Continue</button></td>
																					</tr>
																		</tbody>
																	</table>
																</form>
          													</div>
														</div>
													</div>
														<div class="accountM-boxes" "="" style="top: 30px;">
															<h2 class="h2">비밀번호 찾기</h2>
																<p>주민번호로 비밀번호 찾기는 개인정보보호 차원에서 더 이상 지원하지 않습니다.<br>임시 비밀번호가 발송됩니다. 로그인 후 마이페이지 &gt; 개인정보수정에서 비밀번호를 변경해 주세요.</p>
																	<div class="box floatL" style="height: 322px;">
																		<div class="head">
																			<label for="fEmail"><input name="accountPW" type="radio" class="radioShow" value="0" checked="checked" onclick="$('#accountPW-fPhone').hide();$('#accountPW-fEmail').show();">이메일</label>
																		
																		</div>
																			<div id="accountPW-fEmail" class="accountM-box1">
													          					<form method="post" name="frmEPWemail" onsubmit="return jsemailSearchPW('email');">
													            					<input type="hidden" name="chksection" value="">
																			            <input type="hidden" name="paKey" value="1">
																			            <input type="hidden" name="pinsection" value="6">
																				            <table>
																								<tbody>
																									<tr>
																										<th><label for="fPWID">아이디</label></th>
																											<td><input type="text" maxlength="16" id="sEUID" name="UserID" onkeypress="if (event.keyCode==13) frmEPWemail.sEUN.focus();"></td>
																									</tr>
																										<tr>
																											<th><label for="fPWName">성명</label></th>
																												<td><input type="text" maxlength="20" id="sEUN" name="sUN" onkeypress="if (event.keyCode==13) frmEPWemail.sESN1.focus();"></td>
																										</tr>
																											<tr>
																												<th><label for="fPWMail-1">이메일</label></th>
																													<td>
																														<input type="text" maxlength="50" id="sEmail" name="sEmail">
																													</td>
																											</tr>
																												<tr>
																													<th></th>
																														<td class="btn"><button class="btn-typeF">Continue</button></td>
																												</tr>
																								</tbody>
																							</table>
																				   </form>
																				</div>
																	</div>
														</div>
									</div>
							</div>
					</div>
						<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
						<script src="/dist/js/29cm.min.js?v=20150930"></script><script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.0.6/jquery.mousewheel.min.js"></script>
						<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script><img height="1" width="1" border="0" alt="" src="https://www.googleadservices.com/pagead/conversion/955143405/?random=1446688757894&amp;cv=8&amp;fst=1446688757894&amp;num=1&amp;fmt=3&amp;value=0&amp;label=zDpaCPO65AMQ7am5xwM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;u_h=1024&amp;u_w=1280&amp;u_ah=1024&amp;u_aw=1280&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=true&amp;u_nplug=5&amp;u_nmime=7&amp;frm=0&amp;url=http%3A//www.29cm.co.kr/login/forget.asp&amp;ref=http%3A//www.29cm.co.kr/login/%3FsLT%3DG">
							<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
								<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"> </script> 
						</body>
					</html>