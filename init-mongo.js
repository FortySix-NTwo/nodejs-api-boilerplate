const dotenv = require('dotenv-safe')
const path = require('path')

const file = path.resolve(`${__dirname}../../docker/.env.docker`)
dotenv.config({ file })

const admin = process.env.MONGODB_USER
const password = process.env.MONGODB_PASSWORD
const database = process.env.MONGODB_DB
const permissions = process.env.MONGODB_ROLE

db.createUser({
  user: admin,
  pwd: password,
  roles: [
    {
      role: permissions,
      db: database,
    },
  ],
})
