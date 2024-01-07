const Task = require('../models/task')
const asyncWrapper = require('../middleware/async')
const {createCustomError} = require('../errors/custom-error')


const getAllTasks = asyncWrapper( async (req, res) => {
        const tasks = await Task.find();
        res.json({ tasks });
})

const getTask = asyncWrapper( async (req, res, next) => {
    const id = req.params.id;
    const task = await Task.findById(id);

    if(!task){
        return next(createCustomError(`No task with id: ${id}`, 404))
    }
    res.json({ task });   
})

const addTask = asyncWrapper( async (req, res) => {
        const task = await Task.create(req.body);
        res.json({ task });
})

const editTask = asyncWrapper(async (req, res) => {
    const id = req.params.id;
    const task = await Task.findByIdAndUpdate(id, req.body, {
        new:true,
        runValidators:true,
    });
    if(!task){
        return next(createCustomError(`No task with id: ${id}`, 404))
    }
    res.json({ task });
})

const deleteTask = asyncWrapper( async (req, res) => {
        const id = req.params.id;
        const task = await Task.findByIdAndDelete(id);
        if(!task){
            return next(createCustomError(`No task with id: ${id}`, 404))
        }
        res.json({ task });
})


module.exports = {
    getAllTasks, getTask, addTask, editTask, deleteTask, 
}