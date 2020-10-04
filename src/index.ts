import express from "express"

const app = express()

app.listen(8000, '0.0.0.0', () => {
  console.info(`Server Running on http://localhost:${8000}`)
})
