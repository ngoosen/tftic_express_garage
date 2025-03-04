const clientsService = require("../services/clients.service");

const ClientsController = {
  getClients: async (req, res) => {
    try {
      const clients = await clientsService.getClients();
      res.render("clients/clients", { clients });
    } catch (error) {
      console.log(error);
      res.status(500).json({
        message: "Une erreur est survenue.",
        error,
      });
    }
  },
};

module.exports = ClientsController;
