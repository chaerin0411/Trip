$(function () {

    var ratio = 32.91;
    var center = 2;
    $('.buttons .button').click(function () {
        $(".button").removeClass("active");
        $(".slide-item").removeClass("active");

        $(this).addClass("active");
        var currentTab = getCurrentTab();
        $(".slide-item:nth-child("+ currentTab +")").addClass("active");
    
        $('.slide').css("transform", "translateX("+ -ratio * (currentTab - center) +"%)")
        $(".slide-item.active").click(function () {
            var _name = $(this).find("input[name=movieName]").val();
            location.href = _name + ".html";
        })
    })

    $(".slide-item.active").click(function () {
        var _name = $(this).find("input[name=movieName]").val();
        location.href = _name + ".html";
    })
})

function getCurrentTab() {
    var buttons = $('.buttons div')
    for(var i =0; i < buttons.length; i++){
        if($(buttons[i]).hasClass("active")){
            var currentTab = $(buttons[i]).attr("id").substr(1);
            return currentTab;            
        }
    }
    
}