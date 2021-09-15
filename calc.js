function calc(fn) {
    return new Function('return ' + fn)();
}
