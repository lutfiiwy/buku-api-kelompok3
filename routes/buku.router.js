const express = require("express");
const router = express.Router();

const bukuController = require("../controller/buku.controller");

router.get("/", bukuController.getAll);
router.get("/:id", bukuController.getById);
router.post("/", bukuController.create);
router.put("/:id", bukuController.update);
router.delete("/:id", bukuController.delete);

module.exports = router;
