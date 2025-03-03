const sql = require("mssql");

const { DB_USER, DB_NAME, DB_PASSWORD, DB_SERVER_NAME } = process.env;

const db = {
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  server: DB_SERVER_NAME,
  options: {
    trustServerCertificate: true,
  },
};

const connectDb = async () => {
  await sql.connect(db);
  console.log("Connexion à la DB effectué avec succès.");
};

module.exports = { sql, connectDb, };
