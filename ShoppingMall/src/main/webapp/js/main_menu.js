(function() {

  'use strict';

  var m = document.querySelector("main"),
    h = document.querySelector("header"),
    c = document.querySelector(".counter"),
    counter = 0,
    hHeight;

  function setTopPadding() {
    hHeight = h.offsetHeight;
    m.style.paddingTop = hHeight + "px";
  }

  function onScroll() {

    window.addEventListener("scroll", _.throttle(callbackFunc, 200));
    /**
     * Replace the line above with the following one 
     * to see how many more times the "callbackFunc" is executed
     */
    // window.addEventListener("scroll", callbackFunc);

    function callbackFunc() {
      c.style.visibility = "visible";
      c.innerHTML = counter++;
      var y = window.pageYOffset;
      if (y > 150) {
        h.classList.add("scroll");
      } else {
        h.classList.remove("scroll");
      }
    }
  }

  window.onload = function() {
    setTopPadding();
    onScroll();
  };

  window.onresize = function() {
    setTopPadding();
  };
})();