$(function(){
	
	//公司信息显示
	$('.name').hover(function(){
		$(this).find('.name_info').slideDown();
		$(this).find('s').addClass('icos');
	},function(){
		$(this).find('.name_info').slideUp();
		$(this).find('s').removeClass('icos');
	});
	
	//二维码
	$('.erwm').hover(function(){
		$(this).find('.erwm_pic').slideDown();
		$(this).find('s').addClass('icos');
	},function(){
		$(this).find('.erwm_pic').slideUp();
		$(this).find('s').removeClass('icos');
	});
	
	//输入框提示
	$('.j_input').focus(function(){
		var str = $(this).attr('prompt');
		if($(this).val() == str){
			$(this).addClass('focus');
			$(this).val('');
		}
		
	});
	
	$('.j_input').blur(function(){
		
		var str = $(this).attr('prompt');
		if($(this).val() == str){
			$(this).removeClass('focus');
			$(this).val($(this).attr('prompt'));
		}
		
	});
	
	//店铺页 菜单
	$('.menu_list .tit').click(function(){
		var menu = $(this).next();
		if(!menu.hasClass('show')){
			menu.addClass('show');
			menu.slideDown();
			$(this).find('i').attr('class','close');
		}else{
			menu.removeClass('show');
			menu.slideUp();
			$(this).find('i').attr('class','open');
		}
	});
	
	
	//获取光标
	$('.search_text,.j_input').focus(function(){
		$(this).addClass('focus');
		$(this).val('');
	});
	
	$('.search_text,.j_input').blur(function(){
		$(this).removeClass('focus');
		$(this).val($(this).attr('prompt'));
	});
	
	
	
	//header top 下拉菜单
	$('.head_top_r .j_list').hover(function(){
		$(this).addClass('active');
		$(this).find('.j_down').show();
	},function(){
		$(this).find('.j_down').hide();
		$('.head_top_r li').removeClass('active');
	});
	

	
});
