const { sql } = require("../config/database");

const ClientsService = {
  getClients: async () => {
    try {
      const result = await sql.query(`
        SELECT *
        FROM clients
      `);

      if (!result) {
        return {
          message: "Pas de résultat trouvé",
        };
      }

      return result.recordset;
    } catch (e) {
      console.log(e);
    }
  },
};

module.exports = ClientsService;
