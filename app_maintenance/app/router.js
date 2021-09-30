
const express = require('express');
const router = express.Router();

// import des controllers
const mainController = require('./controllers/mainController');
const currentIncidentController = require('./controllers/currentIncidentController');
const newIncidentController = require('./controllers/newIncidentController');

// détail des incidents
router.get('/', mainController.home);

// détail d'un incident
router.get('/incident/:id', currentIncidentController.getIncidentById);

router.post('/incident/:id', currentIncidentController.modifyOneIncident);

// ouverture d'un incident
router.get('/incident/new');

router.post('/incident/new', newIncidentController.createIncident);


module.exports = router;