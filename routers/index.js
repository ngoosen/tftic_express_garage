const router = require("express").Router();
const clientRouter = require("../routers/clients.router");

router.use("/", clientRouter);

module.exports = router;
