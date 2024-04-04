const express = require("express");

const WorkoutRouter = require('./routes/workoutRoutes');

const app = express();
const PORT = process.env.PORT || 3000

app.use(express.json());
app.use('/api/workouts', WorkoutRouter)
app.get('/', (req, res) => {
    // res.send("Hello from Node");
    res.json({
        "userId": 1,
        "id": 1,
        "title": "Say hello from express server and it is indeed working"
    });
});

app.listen(PORT, () => console.log(`Server running on Port ${PORT}`))