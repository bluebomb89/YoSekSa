





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
		<div class="regi_title">������ ���</div>
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
						src="./������ ������_files/pic_none4.gif"
						style="width: 250px; height: 250px; cursor: pointer">
				</div>
			</div>
			<div class="cont_line">
				<p class="cont_tit4">������ ����</p>
				<input type="text" name="cok_title" id="cok_title" value=""
					class="form-control" placeholder="��) �Ұ�� �̿��� ���̱�"
					style="width: 610px;">
			</div>
			<div class="cont_line pad_b_25">
				<p class="cont_tit4">�丮�Ұ�</p>
				<textarea name="cok_intro" id="cok_intro"
					class="form-control step_cont"
					placeholder="�� �������� ź������� �����ּ���. ��) ������ ������ �¾� �Ұ�� �̿����� �����þ��. ��ӴϷκ��� ��� �̿��� �����Ǹ� ������ �Ը��� �°� ����߽��ϴ�."
					style="height: 100px; width: 610px; resize: none;"></textarea>
			</div>
			<div class="cont_line">
				<p class="cont_tit4">ī�װ�</p>
				<select name="cok_sq_category_4" id="cok_sq_category_4" text="������">
					<option value="">������</option>
					<option value="63">�ع���</option>
					<option value="56">���ι���</option>
					<option value="54">��/��</option>
					<option value="55">�</option>
					<option value="60">����/����Ʈ</option>
					<option value="53">��/����</option>
					<option value="52">��/��/��</option>
					<option value="61">ǻ��</option>
					<option value="57">��ġ/����/���</option>
					<option value="58">���/�ҽ�/��</option>
					<option value="65">���</option>
					<option value="64">������/����</option>
					<option value="66">����ŷ</option>
					<option value="59">��/����/��</option>
					<option value="62">��Ÿ</option>
				</select> <select name="cok_sq_category_2" id="cok_sq_category_2" text="��Ȳ��">
					<option value="">��Ȳ��</option>
					<option value="12">�ϻ�</option>
					<option value="18">�ʽ��ǵ�</option>
					<option value="13">�մ�����</option>
					<option value="19">������</option>
					<option value="21">���̾�Ʈ��</option>
					<option value="15">������</option>
					<option value="43">�����</option>
					<option value="17">����</option>
					<option value="45">�߽�</option>
					<option value="20">Ǫ�彺Ÿ�ϸ�</option>
					<option value="46">����</option>
					<option value="44">����</option>
					<option value="14">������</option>
					<option value="22">��Ÿ</option>
				</select> <select name="cok_sq_category_1" id="cok_sq_category_1" text="�����">
					<option value="">�����</option>
					<option value="6">����</option>
					<option value="1">���̱�</option>
					<option value="7">��ħ</option>
					<option value="36">����</option>
					<option value="41">��ħ</option>
					<option value="42">���</option>
					<option value="8">��</option>
					<option value="35">����</option>
					<option value="10">���̱�</option>
					<option value="9">Ƣ��</option>
					<option value="38">���</option>
					<option value="67">����</option>
					<option value="39">��ġ��</option>
					<option value="37">ȸ</option>
					<option value="11">��Ÿ</option>
				</select> <select name="cok_sq_category_3" id="cok_sq_category_3" text="��Ằ">
					<option value="">��Ằ</option>
					<option value="23">����</option>
					<option value="28">ä�ҷ�</option>
					<option value="24">�ع���</option>
					<option value="50">�ް�/����ǰ</option>
					<option value="33">������ǰ��</option>
					<option value="47">���/����</option>
					<option value="32">����</option>
					<option value="25">�Ǿ��</option>
					<option value="31">������</option>
					<option value="48">���Ϸ�</option>
					<option value="27">��/�߰���</option>
					<option value="26">���</option>
					<option value="34">��Ÿ</option>
				</select>
			</div>
			<div class="cont_line">
				<p class="cont_tit4">�丮����</p>
				�ο� <select name="cok_portion" id="cok_portion" text="�ο�">
					<option value="">�ο�</option>
					<option value="1">1�κ�</option>
					<option value="2">2�κ�</option>
					<option value="3">3�κ�</option>
					<option value="4">4�κ�</option>
					<option value="5">5�κ�</option>
					<option value="6">6�κ��̻�</option>
				</select> <span class="pad_l_30">�ð� </span> <select name="cok_time"
					id="cok_time" text="�丮�ð�">
					<option value="">�ð�</option>
					<option value="5">5���̳�</option>
					<option value="10">10���̳�</option>
					<option value="15">15���̳�</option>
					<option value="30">30���̳�</option>
					<option value="60">60���̳�</option>
					<option value="90">90���̳�</option>
					<option value="120">2�ð��̳�</option>
					<option value="999">2�ð��̻�</option>
				</select> <span class="pad_l_30">���̵� </span> <select name="cok_degree"
					id="cok_degree" text="���̵�">
					<option value="">���̵�</option>
					<option value="1">�ƹ���</option>
					<option value="2">�ʱ�</option>
					<option value="3">�߱�</option>
					<option value="4">���</option>
					<option value="5">���ǰ���</option>
				</select>
			</div>
		</div>
		<!--/cont_box-->
		<div class="cont_box pad_l_60">
			<div class="mag_b_25">
				<p class="cont_tit4">���</p>
				<ul id="divResourceArea" class="ui-sortable">
					<li id="liResource_1"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup ui-sortable-handle" data-original-title=""
						title=""></a><input type="text" name="cok_resource_nm[]"
						id="cok_resource_nm_1" class="form-control" style="width: 300px;"
						placeholder="��) �������"><input type="text"
						name="cok_resource_amt[]" id="cok_resource_amt_1"
						class="form-control" style="width: 300px;" placeholder="��) 300g"><a
						id="btnResourceDel_1" href="javascript:delResource(1)"
						class="btn-del" style="display: none;"></a></li>
					<li id="liResource_2"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_resource_nm[]" id="cok_resource_nm_2"
						class="form-control" style="width: 300px;" placeholder="��) �����"><input
						type="text" name="cok_resource_amt[]" id="cok_resource_amt_2"
						class="form-control" style="width: 300px;" placeholder="��) 1/2��"><a
						id="btnResourceDel_2" href="javascript:delResource(2)"
						class="btn-del" style="display: none;"></a></li>
					<li id="liResource_3"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_resource_nm[]" id="cok_resource_nm_3"
						class="form-control" style="width: 300px;" placeholder="��) ����"><input
						type="text" name="cok_resource_amt[]" id="cok_resource_amt_3"
						class="form-control" style="width: 300px;" placeholder="��) 2��"><a
						id="btnResourceDel_3" href="javascript:delResource(3)"
						class="btn-del" style="display: none;"></a></li>
				</ul>
				<div class="btn_add" style="padding: 0 0 20px 160px; width: 800px;">
					<button type="button" onclick="addResource()"
						class="btn btn-default">
						<span class="glyphicon glyphicon-plus-sign"></span>����߰�
					</button>
				</div>
			</div>
			<div>
				<p class="cont_tit4">���</p>
				<ul id="divSpiceArea" class="ui-sortable">
					<li id="liSpice_1"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup ui-sortable-handle" data-original-title=""
						title=""></a><input type="text" name="cok_spice_nm[]"
						id="cok_spice_nm_1" class="form-control" style="width: 300px;"
						placeholder="��) ���⸧"><input type="text"
						name="cok_spice_amt[]" id="cok_spice_amt_1" class="form-control"
						style="width: 300px;" placeholder="��) 1T"><a
						id="btnSpiceDel_1" href="javascript:delSpice(1)" class="btn-del"
						style="display: none;"></a></li>
					<li id="liSpice_2"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_spice_nm[]" id="cok_spice_nm_2"
						class="form-control" style="width: 300px;" placeholder="��) �ұ�"><input
						type="text" name="cok_spice_amt[]" id="cok_spice_amt_2"
						class="form-control" style="width: 300px;" placeholder="��) 2t"><a
						id="btnSpiceDel_2" href="javascript:delSpice(2)" class="btn-del"
						style="display: none"></a></li>
					<li id="liSpice_3"><a
						href="http://www.10000recipe.com/inbox/insert.html#"
						class="btn-lineup" data-original-title="" title=""></a><input
						type="text" name="cok_spice_nm[]" id="cok_spice_nm_3"
						class="form-control" style="width: 300px;" placeholder="��) ���߰���"><input
						type="text" name="cok_spice_amt[]" id="cok_spice_amt_3"
						class="form-control" style="width: 300px;" placeholder="��) 2T"><a
						id="btnSpiceDel_3" href="javascript:delSpice(3)" class="btn-del"
						style="display: none"></a></li>
				</ul>
				<div class="btn_add" style="padding: 0 0 20px 160px; width: 800px;">
					<button type="button" onclick="addSpice()" class="btn btn-default">
						<span class="glyphicon glyphicon-plus-sign"></span>����߰�
					</button>
				</div>
			</div>
		</div>
		<!--/cont_box-->
		<div class="cont_box pad_l_60">
			<p class="cont_tit3">�丮����</p>
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
								src="./������ ������_files/pic_none2.gif" width="160" height="160"
								style="cursor: pointer">
						</div>
					</div>
					<div id="divStepText_1" style="display: inline-block">
						<textarea name="step_text[]" id="step_text_1"
							class="form-control step_cont"
							placeholder="��) �Ұ��� �⸧�⸦ ����� ������ ũ��� ����ּ���."
							style="height: 160px; width: 430px; resize: none;"></textarea>
					</div>
					<div id="divStepBtn_1" class="step_btn" style="display: none;">
						<a href="javascript:void(0)"><span
							class="glyphicon glyphicon-chevron-up moveUp"></span></a> <a
							href="javascript:void(0)"><span
							class="glyphicon glyphicon-chevron-down moveDown"></span></a> <a
							href="javascript:adjustStep(1)"><b>����</b></a> <a
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
								src="./������ ������_files/pic_none2.gif" width="160" height="160"
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
							href="javascript:adjustStep(__STEP)"><b>����</b></a> <a
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
					<span class="glyphicon glyphicon-plus-sign"></span>�����߰�
				</button>
			</div>


			<p class="cont_tit4">�丮�ϼ�����</p>
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
							src="./������ ������_files/pic_none3.gif" alt="No Image"
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
							src="./������ ������_files/pic_none3.gif" alt="No Image"
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
							src="./������ ������_files/pic_none3.gif" alt="No Image"
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
							src="./������ ������_files/pic_none3.gif" alt="No Image"
							style="width: 140px; height: 140px; cursor: pointer">
					</div>
				</div>
			</div>
		</div>
		<!--/cont_box-->
		<div class="cont_box pad_l_60">
			<p class="cont_tit4">�丮��</p>
			<textarea name="cok_tip" id="cok_tip" class="form-control step_cont"
				placeholder="��) ���丮���� �ұݺ��� ������ ���� �־�� �ܸ��� �ѵ��� �ʰ� ������ �ε巯����."
				style="height: 120px; width: 620px; resize: none;"></textarea>
		</div>
		<!--/cont_box-->

		<div class="cont_box pad_l_60">
			<p class="cont_tit4">�±�</p>
			<input type="hidden" name="boa_tx_tag" value=""
				id="mySingleFieldTags" style="width: 100%"
				class="tagit-hidden-field">
			<ul class="tagit ui-widget ui-widget-content ui-corner-all">
				<li class="tagit-new"><input type="text"
					class="ui-widget-content ui-autocomplete-input" autocomplete="off"></li>
			</ul>
			<span
				style="display: block; color: #666; margin-bottom: -8px; margin-left: 140px">�����,
				����, ȿ��, ��� ���� �±׷� �����ּ���.<em
				style="font-style: normal; color: #999; padding-left: 8px;">��)
					�������, ���̾�Ʈ, ��, Į��, ���⿹��, ������, �ʰ���</em>
			</span>
		</div>
		<!--/cont_box-->

	</div>
	<!--/regi_center-->
	<div class="regi_btm">
		<button type="button" onclick="doSubmit(&#39;save&#39;)"
			class="btn-lg btn-primary">����</button>
		<button type="button" onclick="doSubmit(&#39;save_public&#39;)"
			class="btn-lg btn-warning">�����ϱ�</button>
		<button type="button" onclick="history.back();"
			class="btn-lg btn-default">���</button>
	</div>
</div>
<!-- /container -->
</form>