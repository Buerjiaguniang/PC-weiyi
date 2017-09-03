// JavaScript Document
/**
 * @author liss
 */


$(function(){
	
	//获取光标
	$('.search_input,.j_input').focus(function(){
		$(this).addClass('focus');
		$(this).val('');
	});
	
	$('.search_input,.j_input').blur(function(){
		$(this).removeClass('focus');
		$(this).val($(this).attr('prompt'));
	});
	
	
	//自定义下拉框
	$('.sele_txt').click(function(){
		if(!$(this).hasClass('show')){
			$(this).addClass('show');
			$(this).next('.select_box').slideDown();
		}else{
			$(this).removeClass('show');
			$(this).next('.select_box').slideUp();
		}
		
	});
	
	$('.select_box li').click(function(){
		var inp = $(this).closest('.select_box').prev('.sele_txt');
		inp.val($(this).text());
		inp.removeClass('show');
		$(this).closest('.select_box').slideUp();
	});
	
	
	//公司信息，增加产品
	$('.addinput').click(function(){
		var oInt = $('<div class="inputdiv">');
		var str='<div class="itextbgc"><div class="itextbgl"><div class="itextbgr"><input type="text" class="inputt2"/></div></div></div>';
		oInt.html(str);
		oInt.insertBefore($(this).parent('.inputdiv'));
	});
	
	//公司信息，展开收起
	$('.packup').click(function(){
		var _self = this;
		if(!$(this).hasClass('on')){
			var ih = $(this).closest('.basicinfor').height();
			$(this).closest('.basicinfor').data('ih',ih);
			$(this).closest('.basicinfor').animate({
				height : 35
			},600,function(){
				$(_self).addClass('on').text('展开');
			});
		}else{
			var hei = $(this).closest('.basicinfor').data('ih');
			$(this).closest('.basicinfor').animate({
				height : hei
			},600,function(){
				$(_self).removeClass('on').text('收起');
			});
			
		}
		
	});
	
	
	//导航用户名称下拉
	
	$('.uname').hover(function(){
		$('.uname_down').slideDown();
	},function(){
		$('.uname_down').slideUp();
	});
	
	
	//发货管理选项卡
	$('.shipments_state li').click(function(){
		var idx = $(this).index();
		$(this).siblings().removeClass('on');
		$(this).addClass('on');
		$('.shipments_state_box').hide().eq(idx).show();
	});
	
	//公告选项卡
	$('.usernav li').click(function(){
		var idx = $(this).index();
		$(this).siblings().removeClass('on');
		$(this).addClass('on');
		$('.usercon').hide().eq(idx).show();
	});
	
	
	//订单详情
	$('.j_orderinfo').hover(function(){
		$('.order_btns').stop(true).slideDown();
	},function(){
		$('.order_btns').stop(true).slideUp();
	});
	
	$('.order_btns .show').click(function(){
		$('.orderInf').stop(true).slideDown();
		$(this).removeClass('on');
		$('.order_btns .hide').addClass('on');
	});
	
	$('.order_btns .hide').click(function(){
		$('.orderInf').stop(true).slideUp();
		$(this).removeClass('on');
		$('.order_btns .show').addClass('on');
	});
	
	
	//未上架
	$('.ju_sele').click(function(){
		
		if($(this).next('.ju_menu').css('display') == 'none'){
			
			$(this).next('.ju_menu').show();
			
		}else{
			
			$(this).next('.ju_menu').hide();
			
		}
		
		
	});
	
	
	$('.ju_menu').on('click','dd',function(){
		$(this).closest('.menu').prev('.ju_sele').html($(this).text())
		$(this).closest('.menu').hide();
	});
	
	$('.select_con a').click(function(){
		
		$(this).closest('.select_con').prev('.ju_sele').text($(this).html());
		
		$(this).closest('.select_con').hide();
		
		
	});
	
});

