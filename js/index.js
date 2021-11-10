/* ============== index.js ============== */
/* index.html의 js파일 */

$(function() {
    var cont = $('.container')      // #category1_carousel #window ul
    var btns = $('.button')         // #category1_carousel ul
    var prev = $('.prev')           // #category1_carousel #clarr
    var next = $('.next')           // #category1_carousel #crarr
    var currentTab = $(this).attr("id")         // button selected

    prev.click(function() { // 왼쪽화살표, 왼쪽으로 1004px 이동
        if(currentTab != 1) {
            currentTab--;
            btns.removeClass("selected");
            $(btns[currentTab-1]).addClass("selected");
            cont.css("transitionDuration", "700ms");
            cont.css("transform", "translateX("+ -1004*(currentTab-1) +"px)")
        }
    })
    next.click(function() { // 오른쪽화살표, 오른쪽으로 1004px 이동
        if(currentTab != 4) {
            currentTab++;
            btns.removeClass("selected");
            $(btns[currentTab-1]).addClass("selected");
            cont.css("transitionDuration", "700ms");
            cont.css("transform", "translateX("+ -1004*(currentTab-1) +"px)")
        }
    })
    btns.click(function () { // 이미지[btns selected id]로 이동
        currentTab = $(this).attr("id");
        btns.removeClass("selected");
        $(this).addClass("selected");
        cont.css("transitionDuration", "700ms");
        cont.css("transform", "translateX("+ -1004*(currentTab-1) +"px)");
    })
});