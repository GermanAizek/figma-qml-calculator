function calculate_result(fn) {
    return new Function('return ' + fn)();
}

function verify_operator(buffer) {
    let result = false;
    ["+","-","*","/","%","(",")","."].forEach(v => {
        if (buffer.substr(-1) === v) {
            result = true;
            return;
        }
    });
    return result;
}
