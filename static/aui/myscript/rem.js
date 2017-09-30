(function(doc, win) {
	var docEl = doc.documentElement;
	var resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize';
	var recalc = function() {
		var clientWidth = docEl.clientWidth;
		if(clientWidth>750){
			clientWidth=750
		}
		console.log(clientWidth)
		if(!clientWidth) return;
		docEl.style.fontSize = (clientWidth / 18.75).toFixed(1) + 'px';
	};
	recalc();
	if(!doc.addEventListener) return;
	win.addEventListener(resizeEvt, recalc, false);
})(document, window);