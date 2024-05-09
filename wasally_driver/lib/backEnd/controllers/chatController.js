const CHAT_MODEL = require("../models/chatModel");
const MONGOOSE = require("mongoose");

exports.getAllChats = async (req, res) => {
	try {
		let allChats = await CHAT_MODEL.find();
		res.status(200).json({
			status: "success",
			requestedAt: req.requestTime,
			numberOfChats: allChats.length,
			data: allChats,
		});
	} catch (error) {
		res.status(400).json({
			status: "fail",
			message: `the error is 🔥   :-  ${error}`,
		});
	}
};

exports.getChatById = async (req, res) => {
	try {
		const ID = req.params.ChatId;
		let ChatById = await CHAT_MODEL.findById(ID);
		res.status(200).json({
			status: "success",
			requestedAt: req.requestTime,
			data: ChatById,
		});
	} catch (error) {
		res.status(400).json({
			status: "fail",
			message: `the error is 🔥   :-  ${error}`,
		});
	}
};

exports.UpdateChat = async (req, res) => {
	try {
		const ID = req.params.ChatId;
		let UpdatedChat = await CHAT_MODEL.findByIdAndUpdate(ID, req.body, {
			new: true,
			runValidators: false,
		});
		res.status(200).json({
			status: "success",
			requestedAt: req.requestTime,
			data: UpdatedChat,
		});
	} catch (error) {
		res.status(400).json({
			status: "fail",
			message: `the error is 🔥   :-  ${error}`,
		});
	}
};

exports.deleteChat = async (req, res) => {
	try {
		const ID = req.params.ChatId;
		let chat = await CHAT_MODEL.findByIdAndDelete(ID);
		res.status(204).json({
			status: "success",
			data: null,
		});
	} catch (error) {
		res.status(400).json({
			status: "fail",
			message: `the error is 🔥   :-  ${error}`,
		});
	}
};

exports.addNewChat = async (req, res) => {
	try {
		let newChat = await CHAT_MODEL.create(req.body);
		res.status(201).json({
			status: "success",
			requestedAt: req.requestTime,
			data: newChat,
		});
	} catch (error) {
		res.status(400).json({
			status: "fail",
			message: `the error is 🔥   :-  ${error}`,
		});
	}
};
