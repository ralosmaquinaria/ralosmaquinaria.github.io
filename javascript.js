<!--
/*var counter = 0;
if(self.name==top.name && name == 0){
location.href="../../index.htm?" + document.URL
counter++;
}*/

var hasParent = -1
/*var elem1 = document.getElementById('mCFixedToTop');
var comp = window.getComputedStyle(elem1, null);*/

if ( window.self === window.top ) { /* not in a frame */ 
hasParent = hasParent + 1;
/*document.getElementById('mCFixedToTop').style.display = "block";*/
/*comp.style.display = "block";*/
/*document.getElementById('hideIfChild').setAttribute("style","display: block;");*/
}
else { /* in a frame */ 
hasParent = hasParent + 2;
/*document.getElementById('mCFixedToTop').style.display = "none";*/
/*comp.style.display = "none";*/
/*document.getElementById('hideIfChild').setAttribute("style","display: none;");*/
}

-->