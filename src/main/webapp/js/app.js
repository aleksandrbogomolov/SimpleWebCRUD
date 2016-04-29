'use strict';

function removeClass() {
    var el = document.getElementById('collapseForm');
    el.classList.remove('collapse');
}

function checkParam(per) {
    var param = location.search.substring(1).split('?');
    if (param == per) {
        removeClass();
    }
}

checkParam('hello');

