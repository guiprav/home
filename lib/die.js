module.exports = function() {
	var message;
	var code = -1;
	switch(arguments.length) {
		case 0:
			break;
		case 1:
			if(typeof(arguments[0]) === "number") {
				code = arguments[0];
			}
			else {
				message = arguments[0];
			}
			break;
		case 2:
			message = arguments[0];
			code = arguments[1];
			break;
		default:
			throw new Error("Bad arguments.");
	}
	if(message) {
		console.error(message);
	}
	process.exit(code);
};
