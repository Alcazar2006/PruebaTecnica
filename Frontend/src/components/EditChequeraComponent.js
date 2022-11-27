import React, {  useEffect } from "react";
import Button from "@mui/material/Button";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import DialogTitle from "@mui/material/DialogTitle";
import Typography from "@mui/material/Typography";
import * as chequeraService from "../Services/ChequeraService";
import MenuItem from "@mui/material/MenuItem";

import Box from "@mui/material/Box";
import InputLabel from "@mui/material/InputLabel";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";

export default function AddChequeraComponent(props) {
  //################################# HOOKS ##################################
  const { open, setOpen, alertFuncion, chequeraActual, resetSearch } = props;

  const [selectedEstado, setSelectedEstado] = React.useState(1);

  useEffect(() => {
    if(chequeraActual?.estadoChequeraModel?.idEstado)
    setSelectedEstado(chequeraActual?.estadoChequeraModel?.idEstado);
  }, [chequeraActual]);

  //############################## FUNCIONES #####################################
  const editarChequera = () => {
    chequeraService
      .editarChequera({ idChequera: chequeraActual.idChequera, idEstadoChequera: selectedEstado})
      .then((response) => {
        if (response?.valid) {
          alertFuncion(true, false, "Editada con exito");
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
        sx={{ "& .MuiDialog-paper": { width: "80%", maxHeight: 435 } }}
        maxWidth="xs"
        onClose={handleClose}
      >
        <DialogTitle>Editar Chequera</DialogTitle>
        <DialogContent>
          <Typography variant="h6" color="initial">
            Codigo de Chequera: {chequeraActual?.idChequera}
          </Typography>

          <Box sx={{ minWidth: 120 }}>
            <FormControl fullWidth>
              <InputLabel variant="standard" htmlFor="uncontrolled-native">
                Estado Chequera
              </InputLabel>
              <Select
                value={selectedEstado}
                onChange={(event) => {
                  setSelectedEstado(event.target.value);
                }}
              >
                <MenuItem key={1} value={1}>
                  En Proceso
                </MenuItem>
                <MenuItem key={2} value={2}>
                  Entregada
                </MenuItem>
              </Select>
            </FormControl>
          </Box>
        </DialogContent>

        <DialogActions>
          <Button onClick={editarChequera}>Editar</Button>
          <Button onClick={handleClose}>Cancelar</Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}

////////////////////////////////////////////////////////////////
