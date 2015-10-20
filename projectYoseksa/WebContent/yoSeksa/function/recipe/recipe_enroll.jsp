





<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>

<div class="container recipe_regi">
	<div class="regi_center">
		<div class="regi_title">레시피 등록</div>
		<div class="cont_box pad_l_60">
			<div id="divMainPhotoUpload" class="cont_pic2">
				<input type="hidden" name="main_photo" id="main_photo" value="">
				<input type="hidden" name="new_main_photo" id="new_main_photo"
					value="">
				<div style="position: absolute; left: -3000px">
					<input type="file" name="q_main_file" id="q_main_file"
						file_gubun="main" accept="jpeg,png,gif"
						style="display:; width: 0px; height: 0px; font-size: 0px;" text="">
				</div>
				<div id="divMainPhotoBox" is_over="0">
					<img id="mainPhotoHolder" onclick="browseMainFile()"
						src="./만개의 레시피_files/pic_none4.gif"
						style="width: 250px; height: 250px; cursor: pointer">
				</div>
			</div>
			<div class="cont_line">
				<p class="cont_tit4">레시피 제목</p>
				<input type="text" name="cok_title" id="cok_title" value=""
					class="form-control" placeholder="예) 소고기 미역국 끓이기"
					style="width: 610px;">
			</div>
			<div class="cont_line pad_b_25">
				<p class="cont_tit4">요리소개</p>
				<textarea name="cok_intro" id="cok_intro"
					class="form-control step_cont"
					placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다."
					style="height: 100px; width: 610px; resize: none;"></textarea>
			</div>
			<div class="cont_line">
				<p class="cont_tit4">카테고리</p>
				<select name="cok_sq_category_4" id="cok_sq_category_4" text="종류별">
					<option value="">종류별</option>
					<option value="63">밑반찬</option>
					<option value="56">메인반찬</option>
					<option value="54">국/탕</option>
					<option value="55">찌개</option>
					<option value="60">간식/디저트</option>
					<option value="53">면/만두</option>
					<option value="52">밥/죽/떡</option>
					<option value="61">퓨전</option>
					<option value="57">김치/젓갈/장류</option>
					<option value="58">양념/소스/잼</option>
					<option value="65">양식</option>
					<option value="64">샐러드/스프</option>
					<option value="66">베이킹</option>
					<option value="59">차/음료/술</option>
					<option value="62">기타</option>
				</select> <select name="cok_sq_category_2" id="cok_sq_category_2" text="상황별">
					<option value="">상황별</option>
					<option value="12">일상</option>
					<option value="18">초스피드</option>
					<option value="13">손님접대</option>
					<option value="19">술안주</option>
					<option value="21">다이어트쿡</option>
					<option value="15">나들이</option>
					<option value="43">영양식</option>
					<option value="17">간식</option>
					<option value="45">야식</option>
					<option value="20">푸드스타일링</option>
					<option value="46">해장</option>
					<option value="44">명절</option>
					<option value="14">이유식</option>
					<option value="22">기타</option>
				</select> <select name="cok_sq_category_1" id="cok_sq_category_1" text="방법별">
					<option value="">방법별</option>
					<option value="6">볶음</option>
					<option value="1">끓이기</option>
					<option value="7">부침</option>
					<option value="36">조림</option>
					<option value="41">무침</option>
					<option value="42">비빔</option>
					<option value="8">찜</option>
					<option value="35">구이</option>
					<option value="10">절이기</option>
					<option value="9">튀김</option>
					<option value="38">삶기</option>
					<option value="67">굽기</option>
					<option value="39">데치기</option>
					<option value="37">회</option>
					<option value="11">기타</option>
				</select> <select name="cok_sq_category_3" id="cok_sq_category_3" text="재료별">
					<option value="">재료별</option>
					<option value="23">육류</option>
					<option value="28">채소류</option>
					<option value="24">해물류</option>
					<option value="50">달걀/유제품</option>
					<option value="33">가공식품류</option>
					<option value="47">면류/떡류</option>
					<option value="32">빵류</option>
					<option value="25">건어물류</option>
					<option value="31">버섯류</option>
					<option value="48">과일류</option>
					<option value="27">콩/견과류</option>
					<option value="26">곡류</option>
					<option value="34">기타</option>
				</select>
			</div>
			<div class="cont_line">
				<p class="cont_tit4">요리정보</p>
				인원 <select name="cok_portion" id="cok_portion" text="인원">
					<option value="">인원</option>
					<option value="1">1인분</option>
					<option value="2">2인분</option>
					<option value="3">3인분</option>
					<option value="4">4인분</option>
					<option value="5">5인분</option>
					<option value="6">6인분이상</option>
				</select> <span class="pad_l_30">시간 </span> <select name="cok_time"
					id="cok_time" text="요리시간">
					<option value="">시간</option>
					<option value="5">5분이내</option>
					<option value="10">10분이내</option>
					<option value="15">15분이내</option>
					<option value="30">30분이내</option>
					<option value="60">60분이내</option>
					<option value="90">90분이내</option>
					<option value="120">2시간이내</option>
					<option value="999">2시간이상</option>
				</select> <span class="pad_l_30">난이도 </span> <select name="cok_degree"
					id="cok_degree" text="난이도">
					<option value="">난이도</option>
					<option value="1">아무나</option>
					<option value="2">초급</option>
					<option value="3">중급</option>
					<option value="4">고급</option>
					<option value="5">신의경지</option>
				</select>
			</div>
		</div>
		<!--/cont_box-->
		<div class="cont_box pad_l_60">
			<div class="mag_b_25">
				<p class="cont_tit4">재료</p>
				<ul id="divResourceArea" class="ui-sortable">
					<li id="liResource_1"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup ui-sortable-handle" data-original-title=""
						title=""></a><input type="text" name="cok_resource_nm[]"
						id="cok_resource_nm_1" class="form-control" style="width: 300px;"
						placeholder="예) 돼지고기"><input type="text"
						name="cok_resource_amt[]" id="cok_resource_amt_1"
						class="form-control" style="width: 300px;" placeholder="예) 300g"><a
						id="btnResourceDel_1" href="javascript:delResource(1)"
						class="btn-del" style="display: none;"></a></li>
					<li id="liResource_2"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_resource_nm[]" id="cok_resource_nm_2"
						class="form-control" style="width: 300px;" placeholder="예) 양배추"><input
						type="text" name="cok_resource_amt[]" id="cok_resource_amt_2"
						class="form-control" style="width: 300px;" placeholder="예) 1/2개"><a
						id="btnResourceDel_2" href="javascript:delResource(2)"
						class="btn-del" style="display: none;"></a></li>
					<li id="liResource_3"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_resource_nm[]" id="cok_resource_nm_3"
						class="form-control" style="width: 300px;" placeholder="예) 찹쌀"><input
						type="text" name="cok_resource_amt[]" id="cok_resource_amt_3"
						class="form-control" style="width: 300px;" placeholder="예) 2컵"><a
						id="btnResourceDel_3" href="javascript:delResource(3)"
						class="btn-del" style="display: none;"></a></li>
				</ul>
				<div class="btn_add" style="padding: 0 0 20px 160px; width: 800px;">
					<button type="button" onclick="addResource()"
						class="btn btn-default">
						<span class="glyphicon glyphicon-plus-sign"></span>재료추가
					</button>
				</div>
			</div>
			<div>
				<p class="cont_tit4">양념</p>
				<ul id="divSpiceArea" class="ui-sortable">
					<li id="liSpice_1"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup ui-sortable-handle" data-original-title=""
						title=""></a><input type="text" name="cok_spice_nm[]"
						id="cok_spice_nm_1" class="form-control" style="width: 300px;"
						placeholder="예) 참기름"><input type="text"
						name="cok_spice_amt[]" id="cok_spice_amt_1" class="form-control"
						style="width: 300px;" placeholder="예) 1T"><a
						id="btnSpiceDel_1" href="javascript:delSpice(1)" class="btn-del"
						style="display: none;"></a></li>
					<li id="liSpice_2"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_spice_nm[]" id="cok_spice_nm_2"
						class="form-control" style="width: 300px;" placeholder="예) 소금"><input
						type="text" name="cok_spice_amt[]" id="cok_spice_amt_2"
						class="form-control" style="width: 300px;" placeholder="예) 2t"><a
						id="btnSpiceDel_2" href="javascript:delSpice(2)" class="btn-del"
						style="display: none"></a></li>
					<li id="liSpice_3"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_spice_nm[]" id="cok_spice_nm_3"
						class="form-control" style="width: 300px;" placeholder="예) 고추가루"><input
						type="text" name="cok_spice_amt[]" id="cok_spice_amt_3"
						class="form-control" style="width: 300px;" placeholder="예) 2T"><a
						id="btnSpiceDel_3" href="javascript:delSpice(3)" class="btn-del"
						style="display: none"></a></li>
				</ul>
				<div class="btn_add" style="padding: 0 0 20px 160px; width: 800px;">
					<button type="button" onclick="addSpice()" class="btn btn-default">
						<span class="glyphicon glyphicon-plus-sign"></span>양념추가
					</button>
				</div>
			</div>
		</div>
		<!--/cont_box-->
		<div class="cont_box pad_l_60">
			<p class="cont_tit3">요리순서</p>
			<div id="divStepArea" class="ui-sortable">
				<div id="divStepItem_1" class="step">
					<p id="divStepNum_1" class="cont_tit2_1 ui-sortable-handle"
						style="cursor: pointer" data-original-title="" title="">Step1</p>
					<div id="divStepUpload_1" style="display: inline-block">
						<input type="hidden" name="step_no[]" id="step_no_1" value="">
						<input type="hidden" name="step_photo[]" id="step_photo_1"
							value=""> <input type="hidden" name="new_step_photo[]"
							id="new_step_photo_1" value=""> <input type="hidden"
							name="del_step_photo[]" id="del_step_photo_1" value="">
						<div style="position: absolute; left: -3000px">
							<input type="file" name="q_step_file_1" id="q_step_file_1"
								file_gubun="step" accept="jpeg,png,gif"
								style="display:; width: 0px; height: 0px; font-size: 0px;"
								text="">
						</div>
						<div id="divStepPhotoBox_1" is_over="0">
							<img id="stepPhotoHolder_1" onclick="browseStepFile(1)"
								src="./만개의 레시피_files/pic_none2.gif" width="160" height="160"
								style="cursor: pointer">
						</div>
					</div>
					<div id="divStepText_1" style="display: inline-block">
						<textarea name="step_text[]" id="step_text_1"
							class="form-control step_cont"
							placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요."
							style="height: 160px; width: 430px; resize: none;"></textarea>
					</div>
					<div id="divStepBtn_1" class="step_btn" style="display: none;">
						<a href="javascript:void(0)"><span
							class="glyphicon glyphicon-chevron-up moveUp"></span></a> <a
							href="javascript:void(0)"><span
							class="glyphicon glyphicon-chevron-down moveDown"></span></a> <a
							href="javascript:adjustStep(1)"><b>맞춤</b></a> <a
							href="javascript:addStep(1)"><span
							class="glyphicon glyphicon-plus"></span></a> <a
							href="javascript:delStep(1)"><span
							class="glyphicon glyphicon-remove"></span></a>

					</div>
				</div>
			</div>
			<!-- step template -->
			<div id="divStepTemplate" style="display: none">
				<div id="divStepItem_STEP" class="step">
					<p id="divStepNum_STEP" class="cont_tit2_1" style="cursor: pointer">Step
						1</p>
					<div id="divStepUpload_STEP" style="display: inline-block">
						<input type="hidden" name="step_no[]" id="step_no_STEP" value="">
						<input type="hidden" name="step_photo[]" id="step_photo_STEP"
							value=""> <input type="hidden" name="new_step_photo[]"
							id="new_step_photo_STEP" value=""> <input type="hidden"
							name="del_step_photo[]" id="del_step_photo_STEP" value="">
						<div style="position: absolute; left: -3000px">
							<input type="file" name="q_step_file_STEP" id="q_step_file_STEP"
								file_gubun="step" accept="jpeg,png,gif"
								style="display:; width: 0px; height: 0px; font-size: 0px;"
								text="">
						</div>
						<div id="divStepPhotoBox_STEP" is_over="0">
							<img id="stepPhotoHolder_STEP" onclick="browseStepFile(__STEP)"
								src="./만개의 레시피_files/pic_none2.gif" width="160" height="160"
								style="cursor: pointer">
						</div>
					</div>
					<div id="divStepText_STEP" style="display: inline-block">
						<textarea name="step_text[]" id="step_text_STEP"
							class="form-control step_cont" placeholder=""
							style="height: 160px; width: 430px; resize: none;"></textarea>
					</div>
					<div id="divStepBtn_STEP" class="step_btn" style="display: none">
						<a href="javascript:void(0)"><span
							class="glyphicon glyphicon-chevron-up moveUp"></span></a> <a
							href="javascript:void(0)"><span
							class="glyphicon glyphicon-chevron-down moveDown"></span></a> <a
							href="javascript:adjustStep(__STEP)"><b>맞춤</b></a> <a
							href="javascript:addStep(__STEP)"><span
							class="glyphicon glyphicon-plus"></span></a> <a
							href="javascript:delStep(__STEP)"><span
							class="glyphicon glyphicon-remove"></span></a>

					</div>
				</div>
			</div>
			<!--/step template-->

			<div class="btn_add mag_b_25"
				style="padding: 0 0 20px 180px; width: 820px;">
				<button type="button" onclick="addStep()" class="btn btn-default">
					<span class="glyphicon glyphicon-plus-sign"></span>순서추가
				</button>
			</div>


			<p class="cont_tit4">요리완성사진</p>
			<div id="divWorkArea" style="display: inline-block">
				<div id="divWorkUpload_1" class="complete_pic">
					<input type="hidden" name="work_photo[]" id="work_photo_1" value="">
					<input type="hidden" name="new_work_photo[]" id="new_work_photo_1"
						value=""> <input type="hidden" name="del_work_photo[]"
						id="del_work_photo_1" value="">
					<div style="position: absolute; left: -3000px">
						<input type="file" name="q_work_file_1" id="q_work_file_1"
							file_gubun="work" accept="jpeg,png,gif"
							style="display:; width: 0px; height: 0px; font-size: 0px;"
							text="">
					</div>
					<div id="divWorkPhotoBox_1" is_over="0">
						<a href="http://www.10000recipe.com/inbox/insert.html#"
							class="pic_del" style="display: none"></a> <img
							id="workPhotoHolder_1" onclick="browseWorkFile(1)"
							src="./만개의 레시피_files/pic_none3.gif" alt="No Image"
							style="width: 140px; height: 140px; cursor: pointer">
					</div>
				</div>
				<div id="divWorkUpload_2" class="complete_pic">
					<input type="hidden" name="work_photo[]" id="work_photo_2" value="">
					<input type="hidden" name="new_work_photo[]" id="new_work_photo_2"
						value=""> <input type="hidden" name="del_work_photo[]"
						id="del_work_photo_2" value="">
					<div style="position: absolute; left: -3000px">
						<input type="file" name="q_work_file_2" id="q_work_file_2"
							file_gubun="work" accept="jpeg,png,gif"
							style="display:; width: 0px; height: 0px; font-size: 0px;"
							text="">
					</div>
					<div id="divWorkPhotoBox_2" is_over="0">
						<a href="http://www.10000recipe.com/inbox/insert.html#"
							class="pic_del" style="display: none"></a> <img
							id="workPhotoHolder_2" onclick="browseWorkFile(2)"
							src="./만개의 레시피_files/pic_none3.gif" alt="No Image"
							style="width: 140px; height: 140px; cursor: pointer">
					</div>
				</div>
				<div id="divWorkUpload_3" class="complete_pic">
					<input type="hidden" name="work_photo[]" id="work_photo_3" value="">
					<input type="hidden" name="new_work_photo[]" id="new_work_photo_3"
						value=""> <input type="hidden" name="del_work_photo[]"
						id="del_work_photo_3" value="">
					<div style="position: absolute; left: -3000px">
						<input type="file" name="q_work_file_3" id="q_work_file_3"
							file_gubun="work" accept="jpeg,png,gif"
							style="display:; width: 0px; height: 0px; font-size: 0px;"
							text="">
					</div>
					<div id="divWorkPhotoBox_3" is_over="0">
						<a href="http://www.10000recipe.com/inbox/insert.html#"
							class="pic_del" style="display: none"></a> <img
							id="workPhotoHolder_3" onclick="browseWorkFile(3)"
							src="./만개의 레시피_files/pic_none3.gif" alt="No Image"
							style="width: 140px; height: 140px; cursor: pointer">
					</div>
				</div>
				<div id="divWorkUpload_4" class="complete_pic">
					<input type="hidden" name="work_photo[]" id="work_photo_4" value="">
					<input type="hidden" name="new_work_photo[]" id="new_work_photo_4"
						value=""> <input type="hidden" name="del_work_photo[]"
						id="del_work_photo_4" value="">
					<div style="position: absolute; left: -3000px">
						<input type="file" name="q_work_file_4" id="q_work_file_4"
							file_gubun="work" accept="jpeg,png,gif"
							style="display:; width: 0px; height: 0px; font-size: 0px;"
							text="">
					</div>
					<div id="divWorkPhotoBox_4" is_over="0">
						<a href="http://www.10000recipe.com/inbox/insert.html#"
							class="pic_del" style="display: none"></a> <img
							id="workPhotoHolder_4" onclick="browseWorkFile(4)"
							src="./만개의 레시피_files/pic_none3.gif" alt="No Image"
							style="width: 140px; height: 140px; cursor: pointer">
					</div>
				</div>
			</div>
		</div>
		<!--/cont_box-->
		<div class="cont_box pad_l_60">
			<p class="cont_tit4">요리팁</p>
			<textarea name="cok_tip" id="cok_tip" class="form-control step_cont"
				placeholder="예) 고기요리에는 소금보다 설탕을 먼저 넣어야 단맛이 겉돌지 않고 육질이 부드러워요."
				style="height: 120px; width: 620px; resize: none;"></textarea>
		</div>
		<!--/cont_box-->

		<div class="cont_box pad_l_60">
			<p class="cont_tit4">태그</p>
			<input type="hidden" name="boa_tx_tag" value=""
				id="mySingleFieldTags" style="width: 100%"
				class="tagit-hidden-field">
			<ul class="tagit ui-widget ui-widget-content ui-corner-all">
				<li class="tagit-new"><input type="text"
					class="ui-widget-content ui-autocomplete-input" autocomplete="off"></li>
			</ul>
			<span
				style="display: block; color: #666; margin-bottom: -8px; margin-left: 140px">주재료,
				목적, 효능, 대상 등을 태그로 남겨주세요.<em
				style="font-style: normal; color: #999; padding-left: 8px;">예)
					돼지고기, 다이어트, 비만, 칼슘, 감기예방, 이유식, 초간단</em>
			</span>
		</div>
		<!--/cont_box-->

	</div>
	<!--/regi_center-->
	<div class="regi_btm">
		<button type="button" onclick="doSubmit(&#39;save&#39;)"
			class="btn-lg btn-primary">저장</button>
		<button type="button" onclick="doSubmit(&#39;save_public&#39;)"
			class="btn-lg btn-warning">공개하기</button>
		<button type="button" onclick="history.back();"
			class="btn-lg btn-default">취소</button>
	</div>
</div>
<!-- /container -->
</form>