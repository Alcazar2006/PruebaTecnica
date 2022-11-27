const BackendRoute = {
  BackendBaseUrl: "http://localhost:8080",

  ChequeraRoute: {
    get: "/chequera/get",
    add: "/chequera/add",
    edit: "/chequera/editar",
    delete: "/chequera/delete"
  },

  UsuarioRoute: {
    getByNombreDpi: "/usuario/getByNombreDpi",

  },

  CuentaRoute: {
    getByUser: "/cuenta/getByUser",

  },
};

export { BackendRoute };
