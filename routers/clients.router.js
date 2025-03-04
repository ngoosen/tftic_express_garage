const router = require("express").Router();
const clientsController = require("../controllers/clients.controller");

router.get("/", clientsController.getClients);

module.exports = router;
