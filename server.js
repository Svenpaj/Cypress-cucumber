const express = require('express')
const app = express()
const port = 5500
// const path = require('path');

app.use(express.static('lumia-shop'))

app.listen(port, () => {
  console.log(`Test app listening on port ${port}`)
})