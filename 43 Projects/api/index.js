const express = require('express')

const port = process.env.PORT || 5000
const app = express()

app.get('/ping', (req,res) => {
    res.send('pong')
})

app.listen(port, () => console.log('listening on port ${port'))