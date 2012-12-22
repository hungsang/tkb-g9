$(document).ready(function() 
{ 
$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 4000, true);
$("#nav li").hover(function(){ 
        $(this).find('ul:first').css({visibility: "visible",display: "none"}).show(500); 
        },function(){ 
        $(this).find('ul:first').css({visibility: "hidden"}); 
        }); 

$("#myController").jFlow({
    slides: "#slides",
    controller: ".jFlowControl", // must be class, use . sign
    slideWrapper : "#jFlowSlide", // must be id, use # sign
    selectedWrapper: "jFlowSelected",  // just pure text, no sign
    auto: true,		//auto change slide, default true
    width: "935px",
    height: "220px",
    duration: 800,
    prev: ".jFlowPrev", // must be class, use . sign
    next: ".jFlowNext" // must be class, use . sign
});

}); 
