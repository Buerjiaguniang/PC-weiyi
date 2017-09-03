/**
 * @author liss
 */


$(function(){

	//购物车
	$('.j_pronum .btn_l').click(function(){
		var is = parseInt($(this).next('.inp').find('input').val());
		if(is>0){
			is--;
			$(this).next('.inp').find('input').val(is);
		}
		changeNum(is,$(this).closest('.j_pronum').siblings('.lis2'));
		changePrice(is,$(this).closest('.j_pronum'));
	});
	
	$('.j_pronum .btn_r').click(function(){
		var is = parseInt($(this).prev('.inp').find('input').val()), max = parseInt($(this).closest('.j_pronum').find('input[name="stock"]').val());
		if(is<max){
			is++;
			$(this).prev('.inp').find('input').val(is);
		}else{
			dialog({
			    title: '删除',
			    content: '该产品库存为'+max+'件',
			    okValue: '确定',
			    ok: function () {
					this.close();
			        return false;
			    },
			    cancelValue: '取消',
			    cancel: function () {}
			}).show();
		}
		
		changeNum(is,$(this).closest('.j_pronum').siblings('.lis2'));
		changePrice(is,$(this).closest('.j_pronum'));
	});
	
	$('.j_pronum input').change(function(){
		var is = parseInt($(this).val()),  max = parseInt($(this).closest('.j_pronum').find('input[name="stock"]').val());
		if(is<0){
			is = 0;
			$(this).val(0);
		}
		if(is>max){
			is = max;
			$(this).val(max);
		}
		changeNum(is,$(this).closest('.j_pronum').siblings('.lis2'));
		changePrice(is,$(this).closest('.j_pronum'));	
	});
	
	function changeNum(num,obj){
		var min1 = parseInt(obj.find('input').eq(0).attr('min')),
			 min2 =  parseInt(obj.find('input').eq(1).attr('min')),
			 min3 =  parseInt(obj.find('input').eq(2).attr('min'));
		if(num<min1){
			obj.closest('.mc_c').find('.num_prompt').show();
		}else{
			obj.closest('.mc_c').find('.num_prompt').hide();
		}
		
		
		if( num>=min1){
			obj.find('p').eq(0).addClass('on');
			if(min2 &&(num>=min2)){
				obj.find('p').removeClass('on');
				obj.find('p').eq(1).addClass('on');
				if(min3 && (num>=min3)){ 
					obj.find('p').removeClass('on');
					obj.find('p').eq(2).addClass('on');
				 }
			}
		}
		 NumSum();
		 NumPrice();
	};
	
	function changePrice(num,obj){
		var idx = obj.prev('.lis2').find('p[class="on"]').index();
		var price = obj.prev('.lis2').find('input').eq(idx).attr('price');
		var sum = price * num;
		obj.siblings('.lis5').html(sum.toFixed(2));
		 NumSum();
		 NumPrice();
	};
	
	function NumSum(){
		var sumNum = 0;
		$('.j_pronum').each(function(i){
		 	if($(this).closest('.mc_c').find('input[type="checkbox"]').attr('checked')){
		 		sumNum += parseInt($(this).find('input[name="skuBuyNumber"]').val());
		 	}
		 });
		 $('.mf_r_num span').html(sumNum);
	};
	
	function NumPrice(){
		var sumPrice = 0;
		$('.lis5').each(function(){
			 if($(this).closest('.mc_c').find('input[type="checkbox"]').attr('checked')){
			 	sumPrice += parseInt($(this).html());
			 }
		});
		 $('.mf_r_price span').html(sumPrice);
		console.log(sumPrice);
	};
	
	//删除购物车产品
	$('.j_prodel').click(function(){
		var pars = $(this).closest('.mc'), par = $(this).closest('.mc_c');
		var name = $(this).parent().siblings('.lis1').find('.prodt_name').html();
		dialog({
		    title: '删除',
		    content: name,
		    okValue: '确定',
		    ok: function () {
		        if(pars.find('.mc_c').length == 1){
					pars.remove();
				}else{
					par.remove();
				}
				NumSum();
				NumPrice();
				//$('.j_sumnum').html($('.content .mc').length);
				this.close();
		        return false;
		    },
		    cancelValue: '取消',
		    cancel: function () {}
		}).show();
	});
	
	
	// 删除选中
	
	$('.mf_l_del').click(function(){
		
		dialog({
		    title: '删除',
		    content: '确定删除购物车中已经选中产品？',
		    okValue: '确定',
		    ok: function () {
		       $('.checkSin').each(function(i){
					if($(this).attr('checked')){
						var pars = $(this).closest('.mc'), par = $(this).closest('.mc_c');
						 if(pars.find('.mc_c').length == 1){
								pars.remove();
							}else{
								par.remove();
							}
					}
				});
				NumSum();
		 		NumPrice();
				this.close();
		        return false;
		    },
		    cancelValue: '取消',
		    cancel: function () {}
		}).show();

	});
	
	
	//购物车店铺全选事件
	$('.checklist').click(function(){
		if($(this).attr('checked')){
			$(this).closest('.carInput').siblings('.mc_c').find('input[type="checkbox"]').attr('checked','checked');
		}else{
			$(this).closest('.carInput').siblings('.mc_c').find('input[type="checkbox"]').attr('checked',false);
		}
	});
	
	//购物车店铺全选事件
	$('.checkAll').click(function(){
		if($(this).attr('checked')){
			$('.carl .content').find('input[type="checkbox"]').attr('checked','checked');
		}else{
			$('.carl .content').find('input[type="checkbox"]').attr('checked',false);
		}
	});
	
	
	
	//购物车底部轮播
	$('.others').slides({
		container: 'others_con_ul',             
		generateNextPrev: false, 
		next: 'next',                       
		prev: 'prev',                        
		pagination: false, 
		generatePagination: false,            
		play: 0,
		pause: true,
		hoverPause: true
	});
	
	
	//选中改变价格和数量
	$('.carl input[type="checkbox"]').click(function(){
		 NumSum();
		 NumPrice();
	});
	
	//取消父级选中
	$('.checkSin').click(function(){
		if(!$(this).attr('checked')){
			$('.checkAll').attr('checked',false);
			$(this).closest('.mc').find('.checklist').attr('checked',false);
		}
	});
	
	//滚动确认订单固定
	
	$(window).scroll(function(){
		var it = $('.mf_nav_box').offset().top, itop = $(document).scrollTop(), ih = $(window).height(), iH = $('.mf_nav').height();
		$('.mf_nav').css('top',it);
		if(ih+itop<=it){
			$('.mf_nav').css('top',ih+itop-iH);
		}else{
			$('.mf_nav').css('top',it);
		}
		if(itop>100){
			$('.backUp').show();
		}else{ 
			$('.backUp').hide();
		}
		
	});
	
	
	//返回顶部
	$('.backUp').click(function(){
		$('html,body').animate({
			scrollTop : 0
		}, 200);
		return false;
	});
	
	
	
	
});

