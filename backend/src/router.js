const express = require("express");

const router = express.Router();

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// Import itemControllers module for handling item-related operations
const langagesControllers = require("./controllers/langagesControllers");
const elevesControllers = require("./controllers/elevesControllers");

// Route to get a list of items
router.get("/langages", langagesControllers.getLangages);
router.get("/eleves", elevesControllers.getEleves);

// Route to get a specific item by ID
router.get("/langages/:id", langagesControllers.getLangagesById);
router.get("/eleves/:id", elevesControllers.getElevesById);

// Route to add a new item
// router.post("/items", itemControllers.add);

/* ************************************************************************* */

module.exports = router;
