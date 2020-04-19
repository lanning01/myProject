window.onload = function () {
    var price;
    var price_before;
    var obj;
    var name = getQueryString('productId');
    var s;
    var x;
    //获取所选颜色与型号

    function getQueryString(name) {
        var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
        if (result == null || result.length < 1) {
            return "";
        }
        return result[1];
    }

    $.ajax({
        url: '/project/ec/api/products_details.php?',
        type: 'get',
        data: {
            id: name
        },
        success: function (resp) {
            obj = JSON.stringify(resp);
            //encodeURI(obj)

            price = resp.price;
            price_before = resp.price_before;
            // console.log(resp);
            // console.log(resp.title);
            var html = template('img_tpl', {
                arr: resp
            });
            $('.details_pic').append(html);

            var htmls = template('info_tpl', {
                arr: resp
            });
            $('.details_info').append(htmls);

            s = $('.details_info .color .red').text();
            x = $('.details_info .memory .red').text();
            addOrder();
            allButtonNone();
            picChange();
            bigPic();
            memMoney();
            countSum();
            addCart();
            provinceChange();
            cartBuy();
            getNowDate();
            setInterval(getNowDate, 1000);
        },
        error: function (xhr) {}

    });

    function cartBuy() {
        $('.button3').on('click', 'div', function () {
            alert(qwe);
            var id = $(this).children('#cart_buy').text();
            location = './src/html/shopping.html?productId=' + id;
        });
    }
    function getNowDate() {
        var timerD = 33;
        var timerH = 24;
        var timerM = 59;
        var timerS = 59;
        var now = new Date();
        var date = now.getDate();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        var timer = '该商品距离活动结束还有' + (timerD - date) + '天' + (timerH - hours) + '小时' + (timerM - minutes) + '’' + (timerS - seconds) + '”';
        $('.group_time_over').html(timer);
    }
    function bigPic() {
        $('.details_pic .small').mouseover(function () {
            //alert('dffsfsdfdfdfdfsfsdfds');
            $('.mask, .big').show();
        }).mouseout(function () {
            $('.mask, .big').hide();
        }).mousemove(function (evt) {
            var left = evt.pageX - $('.mask').width() / 2,
                top = evt.pageY - $('.mask').height() / 2;

            left = left - $('.small').offset().left;
            top = top - $('.small').offset().top;
            if (left < 0) {
                left = 0;
            }
            if (left > $('.small').width() - $('.mask').width()) {
                left = $('.small').width() - $('.mask').width();
            }
            if (top < 0) {
                top = 0;
            }

            if (top > $('.small').height() - $('.mask').height()) {
                top = $('.small').height() - $('.mask').height();
            }

            $('.mask').css({
                left: left,
                top: top
            });

            var bigLeft = -left * 3,
                bigTop = -top * 3;
            $('.big img').css({
                left: `${bigLeft}px`,
                top: `${bigTop}px`
            });
        });
    }

    function picChange() {
        var imgs = document.querySelectorAll('.imgFive img');
        var imgarr = [];
        for (let i = 0; i < imgs.length; i++) {
            imgarr.push(imgs[i].src);

            imgs[i].onclick = function () {
                //alert('dfdfdf');
                var imgSmall = document.querySelector('.small img');
                var imgBig = document.querySelector('.big img');

                //alert(imgarr[i]);
                imgSmall.src = imgarr[i];
                imgBig.src = imgarr[i];
            };
        }
    }

    function provinceChange() {
        $('.province button').click(function () {
            $('.provinceChoose').show();
            $('.provinceChoose li').click(function () {
                $('.province button').html($(this).text() + '&nbsp;&nbsp;<i>▼</i>');
                // alert($(this).text());
                $('.provinceChoose').hide();
            });
        });
    }

    function addOrder() {
        $('.button2').on('click', function () {
            var id = this.dataset.id;
            var count = $('.countNum').val();
            var price = $('.pricenow').html();
            if (x === "") {
                alert('请选择内存型号');
            } else {
                location = './order.html?productId=' + id + '&count=' + count + '&color=' + s + '&xing=' + x + '&price=' + price + '&obj=' + obj;
            }
        });
    }

    function allButtonNone() {

        for (var i = 0; i < $(".allButton span").length; i++) {

            if ($(".allButton span").eq(i).html() === '<i></i>') {

                $(".allButton span").eq(i).parent().remove();
                i--;
            }
        }
    }

    $('.details_info').on('click', '.color span', function () {
        $('.details_info .color span').removeClass('red');
        $(this).addClass('red');
        s = $(this).text();
    });

    $('.details_info').on('click', '.memory span', function () {
        $('.details_info .memory span').removeClass('red');
        $(this).addClass('red');
        x = $(this).text();
    });

    function liChange() {
        var $allProduct = $('.allProducts');
        $allProduct.hide();
        $allProduct.eq(0).show();
        var $idx;
        $('.details_details li').click(function () {
            //alert('dfghjk');
            $('.details_details li').removeClass('selected');
            $(this).addClass('selected');
            $idx = $(this).index();
            $allProduct.hide();
            $allProduct.eq($idx).show();
        });
    }

    liChange();

    function memMoney() {
        var $idx;
        if ($('.memory .mem32 span').text() == '0') {
            $('.memory .mem32 span').hide();
        }
        if ($('.memory .mem64 span').text() == '0') {
            $('.memory .mem64 span').hide();
        }
        if ($('.memory .mem128 span').text() == '0') {
            $('.memory .mem128 span').hide();
        }
        if ($('.memory .mem256 span').text() == '0') {
            $('.memory .mem256 span').hide();
        }
        $('.memory div').click(function () {
            $idx = $(this).index();
            console.log($('.memory .mem64 span').text());
            $('.price_before').html(parseInt(price) + 1600 * $idx);
            var nepr = parseInt(price) + 1500 * $idx;
            $('.pricenow').text(nepr);
        });
    }

    function countSum() {
        $('.count').each(function () {
            var _this = $(this);
            var add = $(_this).find(".add"); //添加数量
            var reduce = $(_this).find(".reduce"); //减少数量
            var num = 1; //数量初始值
            var num_txt = $(_this).find(".countNum"); //接受数量的文本框
            $(add).click(function () {
                num = $(num_txt).val();
                num++;
                num_txt.val(num);
                //ajax代码可以放这里传递到数据库实时改变总价
            });
            /*减少数量的方法*/
            $(reduce).click(function () {
                //如果文本框的值大于0才执行减去方法
                num = $(num_txt).val();
                if (num > 0) {
                    //并且当文本框的值为1的时候，减去后文本框直接清空值，不显示0
                    if (num == 1) {
                        num--;
                        num_txt.val("1");
                    }
                    //否则就执行减减方法
                    else {
                            num--;
                            num_txt.val(num);
                        }
                }
            });
        });
    }

    $(function () {
        var min_height = 931;
        $(window).scroll(function () {
            var s = $(window).scrollTop();
            if (s > min_height) {
                if (s > min_height) {
                    $('.details_top_bar').css({
                        display: 'block'
                    });
                }
            } else if (s < min_height) {
                if (s < min_height) {
                    $('.details_top_bar').css({
                        display: 'none'
                    });
                }
            }
        });
    });
    $('.return_top').click(function () {
        $(window).scrollTop(0);
    });

    function addCart() {
        //alert(22222)
        $('#cart_buy').parent().click(function () {
            var cookie = document.cookie;
            cookie.match(/userid=(.*);/);
            if (!RegExp.$1) {
                alert('还没有登录');
                return false;
            }
            //user_id
            var userid = RegExp.$1;
            //购买数量
            var buyNum = $('.count .countNum').val();
            //购买商品id
            var goodid = $('#cart_buy').html();
            //选择的一些条件
            var color = $('div.color span.red').text(),
                memory = $('div.memory span.red').text();

            if (color && memory) {
                $.ajax({
                    type: "get",
                    url: "/project/ec/api/add_cart.php",
                    data: {
                        goodId: goodid,
                        userId: userid,
                        count: buyNum,
                        color: color,
                        memory: memory
                    },
                    success: function (resp) {
                        if (resp.ret) {
                            alert('添加购物车成功');
                        } else {
                            alert('添加购物车失败');
                        }
                    },
                    error: function (xhr) {
                        alert('出现错误');
                    }
                });
            } else {
                alert('内存容量未选择');
            }
        });
    }
};

window.onload = function () {
    function priceSearch() {
        $('.visible').on('mouseover', function () {
            $('.phone_list_ul').css({
                overflow: 'visible'

            });
            $('.visible').css({
                background: 'white',
                'box-shadow': ' 5px 5px 5px #888888'
            });
        }).on('mouseout', function () {
            $('.phone_list_ul').css({
                overflow: 'hidden'
            });
            $('.visible').css({
                'background': 'none',
                'box-shadow': ' none'
            });
        });
    };
    priceSearch();
    $(function () {
        var min_height = 850;
        $(window).scroll(function () {
            var s = $(window).scrollTop();
            if (s > min_height) {
                if (s > min_height) {
                    $('#logo-search-bar').css({
                        display: `block`
                    });
                }
            } else if (s < min_height) {
                if (s < min_height) {
                    $('#logo-search-bar').css({
                        display: `none`
                    });
                }
            }
        });
    });
    $('.return_top').click(function () {
        $(window).scrollTop(0);
    });

    $('.list_all_left').on('click', 'li', function () {
        var id = $(this).children('#allList').text();
        window.open('./src/html/details.html?productId=' + id);
    });

    $('.list_all_right').on('click', 'li', function () {
        var id = $(this).children('#allRight').text();
        window.open('./src/html/details.html?productId=' + id);
    });

    function animation(el, properties, callback) {
        clearInterval(el.phgap_id);
        el.phgap_id = setInterval(function () {

            var isAllFinished = true;
            for (var property in properties) {
                var target = properties[property];
                var current;
                if (property === 'opacity') {
                    current = Math.round(100 * parseFloat(getStyle(el, property)));
                } else {
                    current = parseInt(getStyle(el, property));
                }

                if (target !== current) {
                    isAllFinished = false;
                }

                //步进
                var speed = (target - current) / 10;
                speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);

                if (property === 'opacity') {
                    el.style[property] = (current + speed) / 100;
                } else {
                    el.style[property] = current + speed + 'px';
                }
            }

            if (isAllFinished) {
                clearInterval(el.phgap_id);
                //TODO:动画结束后，要执行的操作
                if (typeof callback === 'function') {
                    callback();
                }
            }
        }, 20);
    }

    function getStyle(el, property) {
        //该函数返回一个对象，包含了元素的所有css属性，
        // 其key为属性名，value为属性值
        if (window.getComputedStyle) {
            return window.getComputedStyle(el)[property];
        } else {
            return el.currentStyle[property];
        }
    }

    function bannerLunBo() {
        let index = 0;
        let items = document.querySelectorAll('.list .item');
        let id;
        let isStopped = false;

        function slideTo(idx) {
            for (var i = 0; i < items.length; i++) {
                //                items[i].style.opacity = 0;
                animation(items[i], {
                    opacity: 0
                });
            }
            if (idx === items.length) {
                index = idx = 0;
            }

            if (idx === -1) {
                index = idx = items.length - 1;
            }
            //            items[idx].style.opacity = 1;

            document.querySelector('.focus').className = 'bullet';
            document.querySelectorAll('.bullet')[idx].className = 'bullet focus';

            animation(items[idx], {
                opacity: 100
            }, function () {
                if (isStopped === false) {
                    autoPlay();
                }
            });
        }

        function slideNext() {
            index++;
            slideTo(index);
        }

        function slidePrev() {
            index--;
            slideTo(index);
        }

        function autoPlay() {
            clearInterval(id);
            id = setInterval(slideNext, 2000);
        }

        function stop() {
            clearInterval(id);
        }

        function init() {
            document.querySelector('.next').onclick = function () {
                isStopped = false;
                slideNext();
            };

            document.querySelector('.prev').onclick = function () {
                isStopped = false;
                slidePrev();
            };

            document.querySelector('.slider').onmouseover = function () {
                isStopped = true;
                stop();
            };
            document.querySelector('.slider').onmouseout = function () {
                isStopped = false;
                autoPlay();
            };

            var bullets = document.querySelectorAll('.bullet');
            for (let i = 0; i < bullets.length; i++) {
                bullets[i].onclick = function () {
                    isStopped = false;
                    index = i;
                    slideTo(index);
                };
            }
            autoPlay();
        }

        init();
    };
    bannerLunBo();

    function teamBuy() {
        let index = 0;
        let list = document.querySelector('.team-buying-three');
        let liWidth = list.children[0].offsetWidth;

        let slider1 = document.querySelector('.team-buying-three .item1:first-of-type');
        let slider2 = document.querySelector('.team-buying-three .item1:nth-of-type(2)');
        let slider3 = document.querySelector('.team-buying-three .item1:nth-of-type(3)');
        let slider7 = document.querySelector('.team-buying-three .item1:nth-of-type(7)');
        let slider8 = document.querySelector('.team-buying-three .item1:nth-of-type(8)');
        let slider9 = document.querySelector('.team-buying-three .item1:nth-of-type(9)');

        let slider1_cloned = slider1.cloneNode(true);
        let slider2_cloned = slider2.cloneNode(true);
        let slider3_cloned = slider3.cloneNode(true);
        let slider7_cloned = slider7.cloneNode(true);
        let slider8_cloned = slider8.cloneNode(true);
        let slider9_cloned = slider9.cloneNode(true);

        list.appendChild(slider1_cloned);
        list.appendChild(slider2_cloned);
        list.appendChild(slider3_cloned);
        list.insertBefore(slider7_cloned, slider1);
        list.insertBefore(slider8_cloned, slider1);
        list.insertBefore(slider9_cloned, slider1);

        list.style.width = liWidth * list.childElementCount + 'px';
        list.style.left = -3 * liWidth * index + 'px';
        let id;

        function slideTo(idx) {
            //            console.log(idx);
            if (idx >= list.childElementCount) {
                list.style.left = -liWidth + 'px';
                index = idx = 3;
            }

            if (idx <= -1) {
                list.style.left = (list.childElementCount - 3) * -liWidth + 'px';
                index = idx = list.childElementCount - 9;
            }

            var left = idx * liWidth;
            // console.log("IDX"+idx)

            // var focusIndex = idx - 1;
            // if (list.childElementCount - 1 === idx) {
            //     focusIndex = 0;
            // }
            // if (idx === 0) {
            //     focusIndex = document.querySelectorAll('.bullet').length - 1;
            // }
            // document.querySelector('.focus').className = 'bullet';

            // document.querySelectorAll('.bullet')[focusIndex].className = 'bullet focus';
            animation(list, {
                left: -1 * left
            });
        }

        function slideNext() {
            index += 3;
            slideTo(index);
        }

        function slidePrev() {
            index -= 3;
            slideTo(index);
        }

        function init() {
            document.querySelector('.next1').onclick = function () {
                slideNext();
            };

            document.querySelector('.prev1').onclick = function () {
                slidePrev();
            };

            document.querySelector('.team-buying-bottom').onmouseover = function () {
                stop();
            };

            document.querySelector('.team-buying-bottom').onmouseout = function () {
                autoPlay();
            };

            //监听子弹点击事件
            // let bullets = document.querySelectorAll('.bullet');
            // for (let i = 0; i < bullets.length; i++) {
            //     bullets[i].onclick = function () {
            //         index = i;
            //         slideTo(index);
            //     }
            // }

            autoPlay();
        }

        function autoPlay() {
            id = setInterval(slideNext, 2500);
        }

        function stop() {
            clearInterval(id);
        }

        init();
    };
    teamBuy();

    function teamChoose(x, y) {
        $(x).hover(function () {
            $(y).show().stop().animate({ height: "173px" });
        }, function () {
            $(y).stop().animate({ height: "0px" });
        });
    }

    teamChoose(".team-one", ".one-black");
    teamChoose(".team-two", ".two-black");
    teamChoose(".team-three", ".three-black");
    teamChoose(".team-four", ".four-black");
    teamChoose(".team-five", ".five-black");
    teamChoose(".team-six", ".six-black");
    teamChoose(".team-seven", ".seven-black");
    teamChoose(".team-eight", ".eight-black");
    teamChoose(".team-nine", ".nine-black");
    $('.team-buying-bottom').on('mouseover', function () {
        $('.btn1').show();
    }).on('mouseout', function () {
        $('.btn1').hide();
    });
};

//查询有多少订单
/*$.get('/project/ec/api/myOrder.php',function(resp){
	console.log(resp)
	var html = template('myOrdertd',{
		orders : resp
	})
	$('body').append(html);
	
})
*/
//查出每个订单里的所有商品
$.get('/project/ec/api/products.php', function (resp) {
    console.log(resp);

    var html = template('myOrdertd', {
        pro: resp
    });
    $('main').append(html);
});

function getQueryString(name) {
    var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
    if (result == null || result.length < 1) {
        return "";
    }
    return result[1];
}
//将字符串转化为16进制
function stringToHex(str) {
    var val = "";
    for (var i = 0; i < str.length; i++) {
        if (val == "") val = str.charCodeAt(i).toString(16);else val += str.charCodeAt(i).toString(16);
    }
    return val;
}

//获取url路径所带的参数
var id = parseInt(getQueryString('productId'));
var count = parseInt(getQueryString('count'));
var price = parseInt(getQueryString('price'));

var obj = getQueryString("obj");
//将最后一个参数转化为对象,得先解码
var kk = decodeURI(obj);
var zong = price * count;
//订单编号用日期生成
var date = new Date();
//var orderon = stringToHex(date.toLocaleString().replace(/[ ]/g,""));
var orderon = date.toLocaleString().replace(/[ ]/g, "");

//将字符串转化为json格式
var oo = JSON.parse(kk);

oo.pri = price;
oo.num = count;
oo.zong = zong;
oo.col = decodeURI(getQueryString("color"));
oo.xing = getQueryString("xing");

var html = template('order_info', {
    o: oo
});
$('.ttr').append(html);

$('button').click(function () {
    var arr = [{
        id: id,
        count: count,
        color: oo.col,
        memory: oo.xing,
        img1: oo.img1,
        price: price,
        title: oo.title
    }];
    $.ajax({
        type: "get",
        url: '/project/ec/api/order.php?',
        dataType: "json",
        data: {
            arr: arr
        },
        success: function (resp) {
            if (resp.ret) {
                alert("生成订单成功");
            } else {
                alert("生成订单失败");
            }
        },
        error: function () {
            alert("生成订单ok");
        }
    });
});

$('button').click(function () {
    var user = $('#user').val();
    var password = $('#pw').val();
    var tel = $('#phone').val();
    var email = $('#email').val();
    var addr = $('#address').val();

    if (user.length === 0) {
        $('#main .form .label .hint1').html('用户名不能为空');
    }
    for (var i = 0; i < user.length; i++) {
        var use = user.charCodeAt(i);
        if (!(use >= 48 && use <= 57 || use >= 65 && use <= 90 || use >= 97 && use <= 122 || use === 95)) {
            $('#main .form .label .hint1').html('用户名输入错误');
            return;
        } else if (!(user.length >= 3 && user.length <= 10)) {
            $('#main .form .label .hint1').html('用户名长度不低于3位，不高于10位');
            return;
        } else {}
    }
    var index = password.charCodeAt(0);
    if (index >= 48 && index <= 57) {
        $('#main .form .label .hint2').html('密码不能以数字开头');
        return;
    } else if (!(password.length >= 6 && password.length <= 20)) {
        $('#main .form .label .hint2').html('密码长度不低于6，不高于20');
        return;
    } else {}
    var passW = $('#pass').val();
    if (password !== passW) {
        $('#main .form .label .hint3').html('密码不一致');
        return;
    }
    if (tel.length !== 11) {
        $('#main .form .label .hint4').html('手机号码长度不为11位');
        return;
    }
    for (var j = 0; j < tel.length; j++) {
        var iphone = tel.charCodeAt(j);

        if (!(iphone >= 48 && iphone <= 57)) {
            $('#main .form .label .hint4').html('手机号码不是数字');
            return;
        }
    }
    if (email.indexOf('@') === -1) {
        $('#main .form .label .hint5').html('邮箱格式不正确');
        return;
    }

    if (addr.length === 0) {
        $('#main .form .label .hint6').html('地址不能为空');
        return;
    }
    $.post('/project/ec/api/register.php', {
        user: $('#user').val(),
        pw: $('#pw').val(),
        tel: $('#phone').val(),
        email: $('#email').val(),
        address: $('#address').val()
    }, function (resp) {
        console.log(resp);
        if (resp) {
            //注册成功
            alert('注册成功,请去登录');
            location = '/project/ec/src/html/login.html';
        } else {
            //注册失败
            alert('注册失败,请查看所填信息');
        }
    });
});

var cookie = document.cookie;
// console.log(cookie);
var arr = cookie.match(/username=([^;]*);?/);
var user = arr[1];
// console.log(arr);
document.querySelector('.welcome').innerHTML = "您好,&nbsp;&nbsp;&nbsp;" + user + "欢迎光临~";
document.querySelector('.exit a').innerHTML = "退出";
$('.exit a').click(function () {
    alert('退出成功');
    window.location.href = "/project/ec/src/html/login.html";
});
$.post('/project/ec/api/show_cart_count.php', {

    user: user

}, function (resp) {

    $('.quick-menu a span').html(resp);
    $('.mycart-count').html(resp);
    $('.quick-entry .icon3').html(resp);
});
/* nav.js zhaokun 20150709 主要应用于首页右侧导航栏 */
$(document).ready(function () {
    $('.tbar-cart-item').hover(function () {
        $(this).find('.p-del').show();
    }, function () {
        $(this).find('.p-del').hide();
    });
    $('.jth-item').hover(function () {
        $(this).find('.add-cart-button').show();
    }, function () {
        $(this).find('.add-cart-button').hide();
    });
    $('.toolbar-tab').hover(function () {
        $(this).find('.tab-text').addClass("tbar-tab-hover");$(this).find('.footer-tab-text').addClass("tbar-tab-footer-hover");$(this).addClass("tbar-tab-selected");
    }, function () {
        $(this).find('.tab-text').removeClass("tbar-tab-hover");$(this).find('.footer-tab-text').removeClass("tbar-tab-footer-hover");$(this).removeClass("tbar-tab-selected");
    });
    $('.tbar-tab-cart').click(function () {
        if ($('.toolbar-wrap').hasClass('toolbar-open')) {
            if ($(this).find('.tab-text').length > 0) {
                if (!$('.tbar-tab-follow').find('.tab-text').length > 0) {
                    var info = "<em class='tab-text '>我的关注</em>";
                    $('.tbar-tab-follow').append(info);
                    $('.tbar-tab-follow').removeClass('tbar-tab-click-selected');
                    $('.tbar-panel-follow').css({ 'visibility': "hidden", "z-index": "-1" });
                }
                if (!$('.tbar-tab-history').find('.tab-text').length > 0) {
                    var info = "<em class='tab-text '>我的足迹</em>";
                    $('.tbar-tab-history').append(info);
                    $('.tbar-tab-history').removeClass('tbar-tab-click-selected');
                    $('.tbar-panel-history').css({ 'visibility': "hidden", "z-index": "-1" });
                }
                $(this).addClass('tbar-tab-click-selected');
                $(this).find('.tab-text').remove();
                $('.tbar-panel-cart').css({ 'visibility': "visible", "z-index": "1" });
            } else {
                var info = "<em class='tab-text '>我的关注</em>";
                $('.toolbar-wrap').removeClass('toolbar-open');
                $(this).append(info);
                $(this).removeClass('tbar-tab-click-selected');
                $('.tbar-panel-cart').css({ 'visibility': "hidden", "z-index": "-1" });
            }
        } else {
            $(this).addClass('tbar-tab-click-selected');
            $(this).find('.tab-text').remove();
            $('.tbar-panel-cart').css({ 'visibility': "visible", "z-index": "1" });
            $('.tbar-panel-follow').css('visibility', 'hidden');
            $('.tbar-panel-history').css('visibility', 'hidden');
            $('.toolbar-wrap').addClass('toolbar-open');
        }
    });
    $('.tbar-tab-follow').click(function () {
        if ($('.toolbar-wrap').hasClass('toolbar-open')) {
            if ($(this).find('.tab-text').length > 0) {
                if (!$('.tbar-tab-cart').find('.tab-text').length > 0) {
                    var info = "<em class='tab-text '>购物车</em>";
                    $('.tbar-tab-cart').append(info);
                    $('.tbar-tab-cart').removeClass('tbar-tab-click-selected');
                    $('.tbar-panel-cart').css({ 'visibility': "hidden", "z-index": "-1" });
                }
                if (!$('.tbar-tab-history').find('.tab-text').length > 0) {
                    var info = "<em class='tab-text '>我的足迹</em>";
                    $('.tbar-tab-history').append(info);
                    $('.tbar-tab-history').removeClass('tbar-tab-click-selected');
                    $('.tbar-panel-history').css({ 'visibility': "hidden", "z-index": "-1" });
                }
                $(this).addClass('tbar-tab-click-selected');
                $(this).find('.tab-text').remove();
                $('.tbar-panel-follow').css({ 'visibility': "visible", "z-index": "1" });
            } else {
                var info = "<em class='tab-text '>我的关注</em>";
                $('.toolbar-wrap').removeClass('toolbar-open');
                $(this).append(info);
                $(this).removeClass('tbar-tab-click-selected');
                $('.tbar-panel-follow').css({ 'visibility': "hidden", "z-index": "-1" });
            }
        } else {
            $(this).addClass('tbar-tab-click-selected');
            $(this).find('.tab-text').remove();
            $('.tbar-panel-cart').css('visibility', 'hidden');
            $('.tbar-panel-follow').css({ 'visibility': "visible", "z-index": "1" });
            $('.tbar-panel-history').css('visibility', 'hidden');
            $('.toolbar-wrap').addClass('toolbar-open');
        }
    });
    $('.tbar-tab-history').click(function () {
        if ($('.toolbar-wrap').hasClass('toolbar-open')) {
            if ($(this).find('.tab-text').length > 0) {
                if (!$('.tbar-tab-follow').find('.tab-text').length > 0) {
                    var info = "<em class='tab-text '>我的关注</em>";
                    $('.tbar-tab-follow').append(info);
                    $('.tbar-tab-follow').removeClass('tbar-tab-click-selected');
                    $('.tbar-panel-follow').css({ 'visibility': "hidden", "z-index": "-1" });
                }
                if (!$('.tbar-tab-cart').find('.tab-text').length > 0) {
                    var info = "<em class='tab-text '>购物车</em>";
                    $('.tbar-tab-cart').append(info);
                    $('.tbar-tab-cart').removeClass('tbar-tab-click-selected');
                    $('.tbar-panel-cart').css({ 'visibility': "hidden", "z-index": "-1" });
                }
                $(this).addClass('tbar-tab-click-selected');
                $(this).find('.tab-text').remove();
                $('.tbar-panel-history').css({ 'visibility': "visible", "z-index": "1" });
            } else {
                var info = "<em class='tab-text '>我的足迹</em>";
                $('.toolbar-wrap').removeClass('toolbar-open');
                $(this).append(info);
                $(this).removeClass('tbar-tab-click-selected');
                $('.tbar-panel-history').css({ 'visibility': "hidden", "z-index": "-1" });
            }
        } else {
            $(this).addClass('tbar-tab-click-selected');
            $(this).find('.tab-text').remove();
            $('.tbar-panel-cart').css('visibility', 'hidden');
            $('.tbar-panel-follow').css('visibility', 'hidden');
            $('.tbar-panel-history').css({ 'visibility': "visible", "z-index": "1" });
            $('.toolbar-wrap').addClass('toolbar-open');
        }
    });
});
// function consoleURL(){
// 	var fileName="";
// 	fileName=document.getElementById("#img1").value;
// 	console.log(fileName);
// }


// var fileName=document.getElementById("#img1").value;
// alert(fileName);


// $('button').click(function () {
// alert("123");
// var name = $('#name').val();
// var price_before = $('#price_before').val();
// var price_now = $('#price_now').val();
// var tittle = $('#tittle').val();
// var imgnormal =$('#imgnormal').val();
// var brandimg =$('#brandimg').val();
// var img1 =$('#img1').val();
// var img2 =$('#img2').val();
// var img3 =$('#img3').val();
// var img4 =$('#img4').val();
// var img5 =$('#img5').val();
// var color1 =$('#color1').val();
// var color2 =$('#color2').val();
// var color3 =$('#color3').val();
// var color4 =$('#color4').val();
// var mem32 =$('#mem32').val();
// var mem64 =$('#mem64').val();
// var mem128 =$('#mem128').val();
// var mem256 =$('#mem256').val();

//     $.get('/project/ec/api/selleradd.php', {
//         name: $('#name').val(),
//         price_before: $('#price_before').val(),
//         price_now: $('#price_now').val(),
//         tittle: $('#tittle').val(),
//         imgnormal: $('#imgnormal').val(),
//         brandimg: $('#brandimg').val(),
//         img1: $('#img1').val(),
//         img2: $('#img2').val(),
//         img3: $('#img3').val(),
//         img4: $('#img4').val(),
//         img5: $('#img5').val(),
//         color1: $('#color1').val(),
//         color2: $('#color2').val(),
//         color3: $('#color3').val(),
//         color4: $('#color4').val(),
//         mem32: $('#mem32').val(),
//         mem64: $('#mem64').val(),
//         mem128: $('#mem128').val(),
//         mem256: $('#mem256').val()
//     }, function (resp) {
//         console.log(resp.ret);
//         if(resp.ret) {
//             //注册成功
//             alert('插入数据成功');
//             // location = '/project/ec/src/html/login.html';
//         } else {
//             //注册失败
//             alert('插入失败');
//         }
//     })

// });	
$('button').click(function () {
    $.post('/project/ec/api/sellerlogin.php', {
        user: $('#sellername').val(),
        password: $('#sellerpw').val()
    }, function (resp) {
        if (resp.ret) {
            //登录成功
            location = 'http://localhost:8080/project/ec/src/html/indexM.html';
        } else {
            //登录失败
            alert('登录失败');
        }
    });
});
//全选
function kk() {
    $('.cart-table input[type=checkbox]').change(function () {
        var selected = $(this).prop('checked');
        //alert(selected);
        $('li input[type=checkbox]').prop('checked', selected);
    });

    $('.shopbox input[type=checkbox]').on('change', function () {
        var all_count = $('li input[type=checkbox]').length;
        var checked_count = $('li input[type=checkbox]:checked').length;
        $('.cart-table input[type=checkbox]').prop('checked', all_count === checked_count);
    });
    $('.return_top').click(function () {
        $(window).scrollTop(0);
    });
}

function getQueryString(name) {
    var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
    if (result == null || result.length < 1) {
        return "";
    }
    return result[1];
}

var price;
var price_before;
var name = getQueryString('productId');
var resp2;

var cookie = document.cookie;
cookie.match(/userid=(.*);/);
if (RegExp.$1) {
    $.ajax({
        url: '/project/ec/api/cart.php?',
        type: 'get',
        data: {
            userid: RegExp.$1
        },
        success: function (resp) {
            resp2 = resp;
            var html = template('details_pic', {
                arr: resp
            });
            $('.details_pic').append(html);

            kk();
            totle();
        },
        error: function (xhr) {}

    });
} else {
    alert('没有登录,不能查看信息');
}

//计算小计,选中改变金额
function totle() {
    var money = 0;
    $('input[type=checkbox].inp').change(function () {
        var selected = $(this).prop('checked');
        if (selected) {
            money += parseFloat($(this).parents('.shopbox').find('div.totle').html());
        } else {
            money -= parseFloat($(this).parents('.shopbox').find('div.totle').html());
        }
        $('.pay-message .price b').html(money);
    });
}
$('#payId').click(function () {
    console.log($('li input[type=checkbox]:checked').length);
    var l = $('li input[type=checkbox]');
    var arrs = [];
    if ($('li input[type=checkbox]:checked').length === 0) {
        alert("请挑选商品");
        return;
    } else {
        for (var i = 0; i < l.length; i++) {
            if (l.eq(i).prop('checked')) {
                arrs.push(resp2[i]);
            } else {}
        }
    }

    //console.log(arrs);
    $.get('/project/ec/api/order.php?', { arr: arrs }, function (resp) {
        if (resp.ret) {
            // alert("结算成功");
        } else {
            alert(resp.ret);
        }
    });
});