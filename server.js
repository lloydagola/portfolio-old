const express = require('express')
const path = require('path')

const app = express()

app.use(express.static('dist'))
app.use('*', express.static(path.join(__dirname, 'dist')))

app.listen(4000, () => console.log('ready...'))