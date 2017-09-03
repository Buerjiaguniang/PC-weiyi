/**
 * @author liss
 * 确认订单
 */


$(function(){
	 var addrstr = null;
	//首次添加新地址
	$('.j_addNew').click(function(){
		$('.filter,.j_new_addr').show();
	});
	
	//关闭添加新地址
	$('.j_new_addr .cancel').click(function(){
		$('.filter,.j_new_addr').hide();
	});
	
	//确认添加新地址
	$('.j_new_addr .confirm').click(function(){
		var flag = true;
		$('.j_userinfo').each(function(){
			if(!$(this).val()){
				alert($(this).attr('prompt'));
				flag = false;
				return false;	
			}
		});
		if(flag){                             
			addrstr = '<span>'+$(".j_userinfo").eq(0).val()+'</span><span>'+$(".j_userinfo").eq(1).val()+'</span><span>'+$(".j_userinfo").eq(2).val()+'</span>(<span>'+$(".j_userinfo").eq(3).val()+'</span>收)<span>'+$(".j_userinfo").eq(4).val()+'</span>(<span>'+$(".j_userinfo").eq(5).val()+'</span>)<span>'+$(".j_userinfo").eq(6).val()+'</span>';
			$('.filter,.j_new_addr').hide();
			newAddr(addrstr);
			$('.addNew').hide();
			$('.oldhome').show();
			if(!$(this).hasClass('on')){
				$('.j_addr_ul li[class="addr_list clearfix"]').hide();
			}
		}
	});
	
	function newAddr(str){
		var addr = '<li class="addr_list clearfix"><input type="radio" name="addr" /><p class="j_info">'+str+'</p><a href="javascript:;" class="change">修改地址</a><a href="javascript:;" class="delete">删除地址</a></li>'
		$('.j_addr_ul').prepend(addr);
		$('.j_addr_ul').find('li').removeClass('on').eq(0).addClass('on');
		$('.j_addr_ul').find('input[name="addr"]').eq(0).attr('checked','checked');
		
	};
	
	//地址选中
	$('.j_addr_ul').on('click','input[name="addr"]',function(){
		$('.j_addr_ul li').removeClass('on');
		$(this).closest('li').addClass('on');
	});
	
	//下拉收起
	$('.addr_show_btn').click(function(){
		if(!$(this).hasClass('on')){
			$(this).html('收起').addClass('on');
			$('.j_addr_ul li').show();
		}else{ 
			$(this).html('展开').removeClass('on');
			$('.j_addr_ul li[class="addr_list clearfix"]').hide();
		}
	});
	
	//删除地址
	$('.j_addr_ul').on('click','.delete',function(){
		$(this).closest('.addr_list').remove();
	});
	
	//修改地址
	$('.j_addr_ul').on('click','.change',function(){
		
		var arr = [];
		
		var addrO = $(this).siblings('.j_info');
		addrO.find('span').each(function(i){
			var str = $(this).text();
			arr.push(str);
		});
		$(".j_userinfo").each(function(i){
			$(this).val(arr[i]);
		});
		$('.filter,.j_new_addr').show();
		$(this).closest('.addr_list').remove();
		
	})
	
	//
	$('.leave_mc textarea').focus(function(){
		$('.leave_mc').find('p').hide();
	});
	
	$('.leave_mc textarea').blur(function(){
		if($(this).val() == ''){
			$('.leave_mc').find('p').show();
		}
		
	});
	
	//滚轮事件
	
	$(window).scroll(function(){
		var itop = $('body,html').scrollTop();
		var itop2 = 200 + itop;
		$('.filter').css('top',itop);
		$('.new_addr').css('top',itop2);
	});	
	
	
});

