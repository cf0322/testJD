<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/elsHeader4.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsLib/webuploader/css/webuploader.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jsLib/webuploader/js/webuploader.js"></script>

<script type="text/javascript" src="<%=basePath %>elsOss/lib/plupload-2.1.2/js/plupload.full.min.js"></script>
<script type="text/javascript" src="<%=basePath %>elsOss/upload3.js"></script>

<base:supplierAuth elsAccount="${elsAccount }" authCode="enquiry" toElsAccount="${param['toElsAccount'] }"></base:supplierAuth>
<style>
	#queryForm table {
	        margin:1%;
            border-right: 1px solid #99BFDF;
            border-bottom: 1px solid #99BFDF;
            border-collapse:collapse;  /*  消除单元格间距 */
            font-size:12px;font-weight:bold;color:rgb(72, 87, 106);
            font-family:Tahoma, Helvetica, Arial, "Microsoft Yahei", 微软雅黑, STXihei, 华文细黑, sans-serif;
           }
     #queryForm table td,#queryForm table th {
       /*  background:#E7F3FC; */
        height:30px;
        padding:0 10px;
        text-align:center;
        border-left: 1px solid #99BFDF; 
        border-top: 1px solid #99BFDF;
      }
      #queryForm table tr td:first-child{width:100px;}
      #queryForm table td input{outline:none;border:none;height:100%;width:100%;}
    
	
</style>
<body>
<div class="box-wrap pos-relative bg-common">
       <div class="box-wrap pos-relative bg-common">
            <span class="dis-in-b pos-absolute box-tip bg-common">基本操作</span>
            <div class="common-box-line tool-bg box-padding">
              <div class="row-fluid">
                    <button id="addBtn" class="btnWrap button-wrap">添加</button>
                	<button id="saveBtn" class="btnWrap button-wrap">保存</button>
                	<button id="answer" class="btnWrap button-wrap">提交</button>
                	<button id="exitBtn" class="btnWrap button-wrap">退出</button>
                	<button id="okBtn" class="btnWrap button-wrap">查看</button>
              </div>
            </div>
        </div>
        
        <form id="queryForm">
		<div class="box-wrap pos-relative bg-common">
            <input type="hidden" id="elsAccount" name="elsAccount"/>
            <input type="hidden" id="elsSubAccount" name="elsSubAccount"/>
		    <span class="dis-in-b pos-absolute box-tip bg-common"><i18n:I18n key="" defaultValue="评标信息" /></span>	
			<div class="common-box-line search-bg box-padding" id="searchBox">
			    <table>
		        <tbody>
		            <tr>
			             <th><i18n:I18n key="" defaultValue="序号" /></th>
			             <th><i18n:I18n key="" defaultValue="评标项目" /></th>
		            </tr>
		            <tr>
		                <td><span>01</span></td>
		                <td><i18n:I18n key="" defaultValue="产品是否有制造许可特殊要求" /></td>
		                
		            </tr>
		            <tr>
		                <td><span>02</span></td>
		                <td><i18n:I18n key="" defaultValue="设计方案可行性是否满足" />：</td>
		               
		            </tr>
		            <tr>
		                <td><span>03</span></td>
		                <td><i18n:I18n key="" defaultValue="供货范围是否满足技术文件" />：</td>
		               
		            </tr>
		            <tr>
		                <td><span>04</span></td>
		                <td><i18n:I18n key="" defaultValue="供货配置是否符合招标文件" />：</td>
		                
		            </tr>
		            <tr>
		                <td><span>05</span></td>
		                <td><i18n:I18n key="" defaultValue="投标单位设计制造能力与条件是否满足" />：</td>
		               
		            </tr>
		            <tr>
		                <td><span>06</span></td>
		                <td><i18n:I18n key="" defaultValue="投标单位质量、服务保证审核情况" />：</td>
		                
		            </tr>
		            <tr>
		                <td><span>07</span></td>
		                <td><i18n:I18n key="" defaultValue="其他需说明内容" />：</td>
		                
		            </tr>
		            <tr>
		                <td><span>08</span></td>
		                <td><i18n:I18n key="" defaultValue="是否需要技术澄清(是/否);如需技术澄清,请填写技术澄清标" />：</td>
		                
		            </tr>
		            <tr>
		                <td><span>09</span></td>
		                <td><i18n:I18n key="" defaultValue="产品的重要技术参数及指标" />：</td>
		                
		            </tr>
		            <tr>
		                <td><span>10</span></td>
		                <td><i18n:I18n key="" defaultValue="技术评委意见" />：</td>
		            </tr>
		        </tbody>
		    </table>
			</div>	
		</div>
	     </form>
        </div>
	</div>

</body>
<script>

$(document).ready(function() {
	$("#elsAccount").val(elsAccount);
	$("#elsSubAccount").val(elsSubAccount);
	init();
});
$("#addBtn").click(function(){
	var length=2;
	for(var j=0;j<length;j++){
		var size=$("#queryForm table tr").length;
		    $("#queryForm table tr").eq(0).append('<td>供应商A</td>')
		    $("#queryForm table tr").eq(1).append('<td><select id="" name="a'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
			$("#queryForm table tr").eq(2).append('<td><select id="" name="b'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
			$("#queryForm table tr").eq(3).append('<td><select id="" name="c'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
	        $("#queryForm table tr").eq(4).append('<td><select id="" name="d'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
	        $("#queryForm table tr").eq(5).append('<td><select id="" name="e'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
		for(var i=6;i<size;i++){
			$("#queryForm table tr").eq(i).append('<td><input type="text" id="" name="list'+(j+''+i)+'" class="lh30 marClear w100" value=""></td>')
		}
	}
}) 
 $("#okBtn").click(function(){
	var frm = $("#queryForm").serializeJSON();
	console.log(frm)
}) 
function init(){
	 var frm = $("#queryForm").serializeJSON();
	 $.ajax({
			url :"<%=basePath%>rest/GeneralPurchaseBiddingService/initBiddingSupplierList",
			/* url:"https://cs.51qqt.com/ELSServer_JSLM/rest/GeneralPurchaseBiddingService/initBiddingSupplierList", */
			type :"POST",
			contentType : "application/json",
			data : JSON.stringify(frm),
			dataType : "json",
			success : function(data) {
				debugger;
				var length=2;
				for(var j=0;j<length;j++){
					var size=$("#queryForm table tr").length;
					    $("#queryForm table tr").eq(0).append('<td>供应商A</td>')
					    $("#queryForm table tr").eq(1).append('<td><select id="" name="a'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
						$("#queryForm table tr").eq(2).append('<td><select id="" name="b'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
						$("#queryForm table tr").eq(3).append('<td><select id="" name="c'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
				        $("#queryForm table tr").eq(4).append('<td><select id="" name="d'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
				        $("#queryForm table tr").eq(5).append('<td><select id="" name="e'+j+'"><option>请选择</option><option value="0">是</option><option value="1">否</option></select></td>')
					for(var i=6;i<size;i++){
						$("#queryForm table tr").eq(i).append('<td><input type="text" id="" name="list'+(j+''+i)+'" class="lh30 marClear w100" value=""></td>')
					}
				}
			  },
			error : function(data) {
			    alert('<i18n:I18n key="i18n_common_request_error" defaultValue="请求出错" />',3);
	          }
		});
}

// 保存
$("#saveBtn").click(function(){
	var frm = $("#queryForm").serializeJSON();
	var fileArr=[];
	$(".fileName").each(function (i,e){
		fileArr.push(e.value);
	})
	 frm["file"]=fileArr;
	 parent.parent.elsDeskTop.tip.init({type: 'confirm',message:'<i18n:I18n key="i18n_common_confirm_save" defaultValue="是否确认保存？" />',closeEvent:function(){
			parent.parent.elsDeskTop.showLoading();
	 $.ajax({
			url :"",
			type :"POST",
			contentType : "application/json",
			data : JSON.stringify(frm),
			dataType : "json",
			success : function(data) {
				parent.parent.elsDeskTop.hideLoading();
				alert('<i18n:I18n key="i18n_common_alert_successfulOperation" defaultValue="操作成功" />');
			  },
			error : function(data) {
				parent.parent.elsDeskTop.hideLoading();
			    alert('<i18n:I18n key="i18n_common_request_error" defaultValue="请求出错" />',3);
 	          }
		});
	  }
	 });
})
// 退出
$("#exitBtn").click(function(){
	parent.elsDeskTop.closeCurWin('',callBack);
})

function callBack(){
	if(parent.frames['']) {
		parent.frames[''].purchQuery();
	}
}
</script>

</html>