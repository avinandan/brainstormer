var tpj=jQuery;

tpj(document).ready(function() {

if (tpj.fn.cssOriginal!=undefined)
	tpj.fn.css = tpj.fn.cssOriginal;
        
	tpj('.front-showbiz-1').services(
		{										
			width:940,
			height:234,							
			slideAmount:3,
			slideSpacing:20,							
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:0,
			hovereffect:"on",
			callBack:function() { }
			
		});					
			
});