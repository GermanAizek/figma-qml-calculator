function calculate_result(fn) {
    return new Function('return ' + fn)();
}

function verify_operator(buffer, index=-1) {
    let result = false;
    ["+","-","*","/","%","(",")","."].forEach(v => {
        if (buffer.substr(index) === v) {
            result = true;
            return;
        }
    });
    return result;
}
