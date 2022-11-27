import React from "react";
import Button from "@mui/material/Button";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import DialogTitle from "@mui/material/DialogTitle";
import * as chequeraService from "../Services/ChequeraService";

export default function DeleteChequeraComponent(props) {
  //################################# HOOKS ##################################
  const { open, setOpen, alertFuncion, chequeraActual, resetSearch } = props;

  //############################## FUNCIONES #####################################
  const eliminarChequera = () => {
    chequeraService
      .deleteChequera({
        idChequera: chequeraActual.idChequera,
      })
      .then((response) => {
        if (response?.valid) {
          alertFuncion(true, false, "Eliminada con exito");
          resetSearch();
          setOpen(false);
        } else {
          alertFuncion(true, true, "Error al asignar");
        }
      })
      .catch((error) => {
        console.error(error);
        alertFuncion(true, true, "Error al asignar");
      });
  };
  const handleClose = () => {
    setOpen(false);
  };
  return (
    <div>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title">
          {"¿Desea eliminar la Chequera: " + chequeraActual.idChequera + " ?"}
        </DialogTitle>
        <DialogContent></DialogContent>
        <DialogActions>
          <Button onClick={eliminarChequera}>Eliminar</Button>
          <Button onClick={handleClose} autoFocus>
            Volver
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}
