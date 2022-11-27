import React, { useState, useEffect } from "react";
import Button from "@mui/material/Button";
import TextField from "@mui/material/TextField";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import DialogTitle from "@mui/material/DialogTitle";
import Typography from "@mui/material/Typography";
import Autocomplete from "@mui/material/Autocomplete";
import * as usuarioService from "../Services/UsuarioService";
import * as cuentaService from "../Services/CuentaService";
import * as chequeraService from "../Services/ChequeraService";
export default function AddChequeraComponent(props) {
  //################################# HOOKS ##################################
  const { open, setOpen, alertFuncion, resetSearch } = props;
  const [usuarioList, setUsuarioList] = useState([]);
  const [usuarioInputValue, setUsuarioInputValue] = React.useState("");
  const [selectedUsuario, setSelectedUsuario] = React.useState({});
  const [cuentaList, setCuentaList] = useState([]);
  const [cuentaInputValue, setCuentaInputValue] = React.useState("");
  const [selectedCuenta, setSelectedCuenta] = React.useState({});

  useEffect(() => {
    usuarioService
      .getByNombreDpi({ searchValue: usuarioInputValue })
      .then((response) => {
        if (response?.valid) {
          setUsuarioList(response.data);
        }
      })
      .catch((error) => {
        console.error(error);
      });
  }, [usuarioInputValue, setUsuarioInputValue, alertFuncion]);

  useEffect(() => {
    setSelectedCuenta({});
    setCuentaList([]);
    cuentaService
      .getByNombreDpi({ idUsuario: selectedUsuario?.id })
      .then((response) => {
        if (response?.valid) {
          setCuentaList(response.data);
        }
      })
      .catch((error) => {
        console.error(error);
      });
  }, [selectedUsuario]);

  //############################## FUNCIONES #####################################
  const agregarChequera = () => {
    if(!selectedCuenta?.id){
        alertFuncion(true,true,"seleccione una cuenta");
        return;
    }
    chequeraService
      .addChequera({ idCuenta: selectedCuenta?.id })
      .then((response) => {
        if (response?.valid) {
            alertFuncion(true,false,"Asignada con exito");
            resetSearch();
            setOpen(false);
            
        } else {
            alertFuncion(true,true,"Error al asignar");
        }
      })
      .catch((error) => {
        console.error(error);
        alertFuncion(true,true,"Error al asignar");
      });
  };
  const handleClose = () => {
    setOpen(false);
  };

  return (
    <div>
      <Dialog
        open={open}
        sx={{ "& .MuiDialog-paper": { width: "80%", maxHeight: 435 } }}
        maxWidth="xs"
        onClose={handleClose}
      >
        <DialogTitle>Agregar Chequera</DialogTitle>
        <DialogContent>
          <Typography variant="h7" color="initial">
            Seleccionar Usuario
          </Typography>

          <Autocomplete
            id="idSearchNombre"
            freeSolo
            inputValue={usuarioInputValue}
            onInputChange={(event, searchValue) => {
              setUsuarioInputValue(searchValue);
            }}
            onChange={(event, newValue) => {
              setSelectedUsuario(newValue);
            }}
            options={
              usuarioList?.map((usuario) => ({
                id: usuario.idUsuario,
                label:
                  usuario.nombre + " " + usuario.apellido + " - " + usuario.dpi,
              })) || []
            }
            renderInput={(params) => <TextField {...params} label="Usuario" />}
          />
        </DialogContent>

        <DialogContent>
          <Typography variant="h7" color="initial">
            Seleccionar Cuenta Bancaria
          </Typography>

          <Autocomplete
            id="idSearchCuenta"
            freeSolo
            inputValue={cuentaInputValue}
            onInputChange={(event, searchValue) => {
              setCuentaInputValue(searchValue);
            }}
            onChange={(event, newValue) => {
              setSelectedCuenta(newValue);
            }}
            options={
              cuentaList?.map((cuenta) => ({
                id: cuenta.idCuenta,
                label:
                  cuenta.idCuenta + " - " + cuenta?.tipoCuentaModel?.detalle,
              })) || []
            }
            renderInput={(params) => (
              <TextField {...params} label="Cuenta Bancaria" />
            )}
          />
        </DialogContent>

        <DialogActions>
          <Button onClick={agregarChequera}>Agregar</Button>
          <Button onClick={handleClose}>Cancelar</Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}
