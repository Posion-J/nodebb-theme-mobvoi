<div class="administrator-post">
    <div class="swiper-content">
        <ul class="ul1" id="ul1">
            <li>
                <img src="https://d1yt8qkhp8oydd.cloudfront.net/ticbuy/img/index-0627-1.jpg" class="swiper-img">
                <div class="tips-bg">
                    <p class="slide-p1">Our latest happenings and campaigns!It had no problem coping with longer workouts and happenings and…    1</p>
                </div>
            </li>
            <li>
                <img src="/assets/uploads/system/common-subscribe-bg-mobile.jpg" class="swiper-img">
                <div class="tips-bg">
                    <p class="slide-p1">Our latest happenings and campaigns!It had no problem coping with longer workouts and happenings and…          2</p>
                </div>
            </li>
            <li>
                <img src="/assets/uploads/system/home-page-product-2.jpg" class="swiper-img">
                <div class="tips-bg">
                    <p class="slide-p1">Our latest happenings and campaigns!It had no problem coping with longer workouts and happenings and…             3</p>
                </div>
            </li>
        </ul>
        <ul class="ul2 indexs" id="ul2">
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>

    <ul class="post-list">
        <li>
            <img src="/assets/uploads/system/site-logo-x50.png" alt="" class="administrator-post-img">
            <div class="content">
                <div class="title">On those terms, it is a practical option which .</div>
                <div class="text">It had no problem coping with longer workouts and was quiet.
                    On those terms, it is a practical option which can problemIt had no problem coping with longer workouts and was quiet.
                    On those terms, it is a practical option which can problem</div>
            </div>
        </li>
        <li>
            <img src="/assets/uploads/system/site-logo-x50.png" alt="" class="administrator-post-img">
            <div class="content">
                <div class="title">On those terms, it is a practical option which .</div>
                <div class="text">It had no problem coping with longer workouts and was quiet.
                    On those terms, it is a practical option which can problemIt had no problem coping with longer workouts and was quiet.
                    On those terms, it is a practical option which can problem</div>
            </div>
        </li>
        <li>
            <img src="/assets/uploads/system/site-logo-x50.png" alt="" class="administrator-post-img">
            <div class="content">
                <div class="title">On those terms, it is a practical option which .</div>
                <div class="text">It had no problem coping with longer workouts and was quiet.
                    On those terms, it is a practical option which can problemIt had no problem coping with longer workouts and was quiet.
                    On those terms, it is a practical option which can problem</div>
            </div>
        </li>
        <img src="/assets/images/header/hot.svg" alt="" class="hot-img">
    </ul>
</div>
<script>
            var imgs = document.getElementById("ul1").children; //找到需要操作的所有图片
			var botton = document.getElementById("ul2").children; //找到需要操作的所有下方点击按钮
			var leftbotton = document.getElementById("left-botton"); //找到需要操作的左切换按钮
			var rightbotton = document.getElementById("right-botton"); //找到需要操作的右切换按钮
			var index = 0; //标记当前展示图片的索引
			var dingshiqi; //定义定时器
			chongqi(); //调用重启定时器

			//绑定定时器自动切换事件
			function chongqi() {
				dingshiqi = setInterval(function() {
					index++; //跳转到下一张图片
					if (index == imgs.length) {
						index = 0;
					} //使图片无限循环播放
					for (var i = 0; i < imgs.length; i++) {
						imgs[i].style.cssText = "z-index:0;"; //隐藏所有图片
						botton[i].style.cssText = "background:#000000;"; //使所有点击按钮的背景颜色变成白色
					}
					imgs[index].style.cssText = "z-index:100;"; //显示当前图片
					botton[index].style.cssText = "background:#0090FF;"; //使当前指定点击按钮的背景颜色变成红色
				}, 4000); //定时器每隔4秒自动跳转到下一张图片
			}

			// //绑定左切换按钮的点击事件
			// leftbotton.onclick = function() {
			// 	clearInterval(dingshiqi); //关闭定时器
			// 	index--; //跳转到上一张图片
			// 	if (index < 0) {
			// 		index = imgs.length - 1;
			// 	}
			// 	for (var i = 0; i < imgs.length; i++) {
			// 		imgs[i].style.cssText = "z-index:0;"; //隐藏所有图片
			// 		botton[i].style.cssText = "background:white;"; //使所有点击按钮的背景颜色变成白色
			// 	}
			// 	imgs[index].style.cssText = "z-index:100;"; //显示当前图片
			// 	botton[index].style.cssText = "background:orangered;"; //使当前指定点击按钮的背景颜色变成红色
			// 	chongqi(); //重启定时器
			// }

			// //绑定右切换按钮的点击事件
			// rightbotton.onclick = function() {
			// 	clearInterval(dingshiqi); //关闭定时器
			// 	index++; //跳转到下一张图片
			// 	if (index > imgs.length - 1) {
			// 		index = 0;
			// 	} 
			// 	for (var i = 0; i < imgs.length; i++) {
			// 		imgs[i].style.cssText = "z-index:0;"; //隐藏所有图片
			// 		botton[i].style.cssText = "background:white;"; //使所有点击按钮的背景颜色变成白色
			// 	}
			// 	imgs[index].style.cssText = "z-index:100;"; //显示当前图片
			// 	botton[index].style.cssText = "background:orangered;"; //使当前指定点击按钮的背景颜色变成红色
			// 	chongqi(); //重启定时器
			// }

			//绑定所有点击按钮的点击事件
			for (let i = 0; i < imgs.length; i++) {
				botton[i].onclick = function() {
					clearInterval(dingshiqi); //关闭定时器
					index = i;
					for (let i = 0; i < imgs.length; i++) {
						imgs[i].style.cssText = "z-index:0;"; //隐藏所有图片
						botton[i].style.cssText = "background:#000000;"; //使所有点击按钮的背景颜色变成白色
					}
					imgs[index].style.cssText = "z-index:100;"; //显示当前图片
					this.style.cssText = "background:#0090FF;"; //使当前指定点击按钮的背景颜色变成红色
					chongqi(); //重启定时器
				}
			}
</script>