const express = require("express");

const mainController = require("./controller/mainController.js");

const router = express.Router();

router.get("/init",mainController.init);
router.get("/events",mainController.events);
router.get("/bookings",mainController.bookings);
module.exports = router;