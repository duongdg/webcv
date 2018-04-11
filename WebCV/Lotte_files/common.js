//$(document).ready(function () {
//    //var offset = $("#side-left").offset();
//    var offset1 = $("#side-right").offset();
//    var topPadding = 15;
//    $(window).scroll(function () {
//        //alert('scroll chuột');
//        if ($(window).scrollTop() > offset.top) {
//            //$("#side-left").stop().animate({
//            //    top: $(window).scrollTop() - offset.top + topPadding
//            //});
//            $("#side-right").stop().animate({
//                top: $(window).scrollTop() - offset1.top + topPadding
//            });
//        } else {
//            //$("#side-left").stop().animate({
//            //    top: 0
//            //});
//            $("#side-right").stop().animate({
//                top: 0
//            });
//        };
//    });
//});

//$(document).ready(function () {
//    $("#Ajax-Booking").fancybox();
//});

//$(document).ready(function () {
//    $("a[rel=example_group]").fancybox({
//        'transitionIn': 'none',
//        'transitionOut': 'none',
//        'titlePosition': 'over',
//        'titleFormat': function (title, currentArray, currentIndex, currentOpts) {
//            return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
//        }
//    });

//});

//$(document).ready(function () {
//    $("#ja_rp12").carouFredSel({
//        items: 4,
//        direction: "up",
//        auto: true,
//        scroll: 1
//    });
//});

$(document).ready(function () {
    $('a.tabsrp2').click(function () {
        $('.activerp2').removeClass('activerp2');
        $(this).addClass('activerp2');
        $('.dn_contentrp2').slideUp();
        var content_show = $(this).attr('title');
        $('#' + content_show).slideDown();
    });
});

$(document).ready(function () {
    $('a.sub1').click(function () {
        $('.activesub').removeClass('activesub');
        $(this).addClass('activesub');
        $('ul.tabcontent').slideUp();
        var content_show = $(this).attr('title');
        $('#' + content_show).slideDown();
    });
});

$(document).ready(function () {
    $('a.icon_partion').click(function () {
        $('.dn_subside').hide();
        var content_show = $(this).attr('title');
        $('#' + content_show).show();

    });
});

$(document).ready(function () {
    $('a.icon_partion_parent').click(function () {
        $('.dn_subside').hide();
        var content_show = $(this).attr('title');
        $('#' + content_show).show();

    });
});
$(document).ready(function () {
    $('a.close-sub').click(function () {
        var content_show = $(this).attr('title');
        $('#' + content_show).hide();

    });
});

function clickButton(e, buttonid) {
    var evt = e ? e : window.event;
    var bt = document.getElementById(buttonid);

    if (bt) {
        if (evt.keyCode == 13) {
            bt.click();
            return false;
        }
    }
}
function SetTextID() {
    if (this.document.getElementById('ctl00_UserName').value == "")
        this.document.getElementById('ctl00_UserName').value = "ID";
}
function ClearTextID() {
    if (this.document.getElementById('ctl00_UserName').value == "ID")
        this.document.getElementById('ctl00_UserName').value = "";
}

$(document).ready(function () {

    $("#nav a.item").hover(function () {

        $(this).find('.sub:first').css({ visibility: "visible", display: "none" }).show(400);
    }, function () {
        $(this).find('.sub:first').css({ visibility: "hidden" });

    });
});

$(document).ready(function () {

    $(".list li").hover(function () {

        $(this).find('.sub:first').css({ visibility: "visible", display: "none" }).show(400);
    }, function () {
        $(this).find('.sub:first').css({ visibility: "hidden" });

    });
});

//$(document).ready(function () {
//    $("#lotte-login").fancybox();
//    $("#lotte-register").fancybox();
//    $("#lotte-taikhoan").fancybox();
//    $("#lotte-profile").fancybox();
//});

//$(document).ready(function () {
//    $("#lotte-login-member").fancybox();
//    $("#lotte-register-member").fancybox();
//    $("#lotte-account-member").fancybox();
//    $("#lotte-ticket-detail").fancybox();
//    $("#lotte-booking").fancybox();
//    $("#show-Schedule").fancybox({
//        'width': '100%',
//        'height': '100%',
//        'autoScale': false,
//        'transitionIn': 'none',
//        'transitionOut': 'none',
//        'type': 'iframe'
//    });
//});

//plugin
//jQuery.fn.topLink = function (settings) {
//    settings = jQuery.extend({
//        min: 1,
//        fadeSpeed: 200
//    }, settings);
//    return this.each(function () {
//        //listen for scroll
//        var el = $(this);
//        el.hide(); //in case the user forgot
//        $(window).scroll(function () {
//            if ($(window).scrollTop() >= settings.min) {
//                el.fadeIn(settings.fadeSpeed);
//            }
//            else {
//                el.fadeOut(settings.fadeSpeed);
//            }
//        });
//    });
//};
//usage w/ smoothscroll
//$(document).ready(function () {
//    //set the link
//    $('#top-link').topLink({
//        min: 400,
//        fadeSpeed: 500
//    });
//    //smoothscroll
//    $('#top-link').click(function (e) {
//        e.preventDefault();
//        $.scrollTo(0, 300);
//    });
//});
/////////////////////////////


function showSpin() {
    $('#loading').addClass('showLoading');
}

function hideSpin() {
    $('#loading').removeClass('showLoading');
}