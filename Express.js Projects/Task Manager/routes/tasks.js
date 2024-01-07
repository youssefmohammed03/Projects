const express = require('express')
const router = express.Router();
const methods = require('../controllers/tasks')

router.route('/').get(methods.getAllTasks);

router.route('/:id').get(methods.getTask);

router.route('/').post(methods.addTask);

router.route('/:id').patch(methods.editTask);

router.route('/:id').delete(methods.deleteTask);

module.exports = router;