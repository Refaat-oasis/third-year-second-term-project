const MONGOOSE = require("mongoose");

const CHAT_SCHEMA = new MONGOOSE.Schema({
	senderID: {
		type: String,
		required: false,
	},
	receiverID: {
		type: String,
		required: false,
	},
	message: {
		type: String,
		required: true,
	},
	creationDate: {
		type: Date,
		default: Date.now(),
	},
});

const CHAT = MONGOOSE.model("ChatCollection", CHAT_SCHEMA);

module.exports = CHAT;
