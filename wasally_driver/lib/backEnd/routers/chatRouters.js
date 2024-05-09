const EXPRESS = require("express");
const CHAT_CONTROLLER = require("../controllers/chatController");

const CHAT_ROUTER = EXPRESS.Router();

CHAT_ROUTER.route("/")
	.get(CHAT_CONTROLLER.getAllChats)
	.post(CHAT_CONTROLLER.addNewChat);
CHAT_ROUTER.route("/:ChatId")
	.get(CHAT_CONTROLLER.getChatById)
	.patch(CHAT_CONTROLLER.UpdateChat)
	.delete(CHAT_CONTROLLER.deleteChat);

module.exports = CHAT_ROUTER;
