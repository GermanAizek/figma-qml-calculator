function calculate_result(fn) {
    return new Function('return ' + fn)();
}

function verify_operator(buffer) {
    let result = false;
    ["+","-","*","/","(",")","."].forEach(v => {
        if (buffer.length > 0 && buffer.substr(-1) === v) {
            result = true;
            return;
        }
    });
    console.log(buffer);
    console.log(result);
    return result;
}
