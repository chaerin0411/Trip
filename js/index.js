/* ============== index.js ============== */
/* index.html의 js파일 */

$(function() {
    var cont = $('.container')
    var carr = $('.carr')
    var btns = $('.button')

    carr.click(function() {
        var currentTab = getCurrentTab();
        btns.removeClass("selected");
        cont.removeClass("selected");
        $(btns[currentTab]).addClass("selected");
        $(".cimg:nth-child("+ currentTab +")").addClass("selected");
        cont.css("transform", "translateX("+ -1004*(currentTab-1) +"px)")
        cont.css("transitionDuration", "700ms");
    })

    btns.click(function () {
        var currentTab = getCurrentTab();
        btns.removeClass("selected");
        cont.removeClass("selected");
        $(this).addClass("selected");
        $(".cimg:nth-child("+ currentTab +")").addClass("selected");
        cont.css("transform", "translateX("+ -1004*(currentTab-1) +"px)")
        cont.css("transitionDuration", "700ms");
    })

    function getCurrentTab() {
        var btns = $('.button')
        for(var i =0; i < btns.length; i++){
            if($(btns[i]).hasClass("selected")){
                return currentTab = $(btns[i]).attr("id");
        }
    }
    }
});