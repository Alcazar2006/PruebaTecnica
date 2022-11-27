import React, { useState, useEffect } from "react";

import Typography from "@mui/material/Typography";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import * as chequeraService from "../Services/ChequeraService";
import IconButton from "@mui/material/IconButton";
import AddCircleOutlineIcon from "@mui/icons-material/AddCircleOutline";
import Stack from "@mui/material/Stack";
import AlertMessage from "./AlertComponent";
import AddChequeraComponent from "./AddChequeraComponent";
import EditChequeraComponent from "./EditChequeraComponent";
import DeleteChequeraComponent from "./DeleteChequeraComponent";
import EditIcon from "@mui/icons-material/Edit";
import DeleteIcon from "@mui/icons-material/Delete";
import MoreVertIcon from "@mui/icons-material/MoreVert";

function Gestion(props) {
  //################################# HOOKS ##################################
  const [chequeraList, setChequeraList] = useState([]);
  const [openAlert, setOpenAlert] = useState(false);
  const [messageAlert, setMessageAlert] = useState("");
  const [messageError, setMessageError] = useState(false);
  const [openAdd, setOpenAdd] = useState(false);
  const [openEdit, setOpenEdit] = useState(false);
  const [openDelete, setOpenDelete] = useState(false);
  const [searchValue, setSearchValue] = useState({ searchValue: "" });
  const [chequeraActual, setChequeraActual] = useState({});

  useEffect(() => {
    chequeraService
      .getChequera(searchValue)
      .then((response) => {
        if (response?.valid) {
          setChequeraList(response.data);
        } else {
          alertFuncion(true, true, response.msg + "Error al obtener Chequeras");
        }
      })
      .catch((error) => {
        console.error(error);
        alertFuncion(true, true, "Error al obtener Chequeras");
      });
  }, [searchValue]);

  //############################## FUNCIONES #####################################

  const alertFuncion = (openAlert, error, message) => {
    setOpenAlert(openAlert);
    setMessageError(error);
    setMessageAlert(message);
  };

  const resetSearch = () => {
    chequeraService
      .getChequera(searchValue)
      .then((response) => {
        if (response?.valid) {
          setChequeraList(response.data);
        } else {
          alertFuncion(true, true, response.msg + "Error al obtener Chequeras");
        }
      })
      .catch((error) => {
        console.error(error);
        alertFuncion(true, true, "Error al obtener Chequeras");
      });
  };

  return (
    <React.Fragment>
      <AlertMessage
        open={openAlert}
        handleClose={() => {
          setOpenAlert(false);
        }}
        message={messageAlert}
        messageError={messageError}
      />
      <br />
      <Stack direction="row" spacing={1}>
        <Typography variant="h4" color="initial">
          Lista de Chequeras
          <IconButton
            aria-label="Add"
            color="success"
            onClick={() => {
              setOpenAdd(true);
            }}
          >
            <AddCircleOutlineIcon />
          </IconButton>
        </Typography>
      </Stack>

      <AddChequeraComponent
        open={openAdd}
        setOpen={setOpenAdd}
        alertFuncion={alertFuncion}
        resetSearch={resetSearch}
      />

      <EditChequeraComponent
        open={openEdit}
        setOpen={setOpenEdit}
        alertFuncion={alertFuncion}
        setSearchValue={setSearchValue}
        chequeraActual={chequeraActual}
        resetSearch={resetSearch}
      />

      <DeleteChequeraComponent
        open={openDelete}
        setOpen={setOpenDelete}
        alertFuncion={alertFuncion}
        setSearchValue={setSearchValue}
        chequeraActual={chequeraActual}
        resetSearch={resetSearch}
      />
      <br />
      <TableContainer component={Paper}>
        <Table sx={{ minWidth: 650 }} aria-label="chequera table">
          <TableHead>
            <TableRow>
              <TableCell>Chequera</TableCell>
              <TableCell>Fecha de Creación</TableCell>
              <TableCell>Estado</TableCell>
              <TableCell>Cuenta</TableCell>
              <TableCell>Titular</TableCell>
              <TableCell>Acciones</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {chequeraList?.map((chequera) => (
              <TableRow key={chequera.idChequera}>
                <TableCell>{chequera.idChequera}</TableCell>
                <TableCell>{chequera.fechaCreacion}</TableCell>
                <TableCell>{chequera?.estadoChequeraModel?.detalle}</TableCell>
                <TableCell>
                  {chequera?.cuentaBancariaModel?.idCuenta +
                    " - " +
                    chequera?.cuentaBancariaModel?.tipoCuentaModel?.detalle}
                </TableCell>
                <TableCell>
                  {chequera?.cuentaBancariaModel?.usuarioModel?.nombre +
                    chequera?.cuentaBancariaModel?.usuarioModel?.apellido +
                    " - " +
                    chequera?.cuentaBancariaModel?.usuarioModel?.dpi}
                </TableCell>
                <TableCell>
                  {chequera?.estadoChequeraModel?.idEstado === 1 && (
                    <React.Fragment>
                      <IconButton
                        aria-label="edit"
                        color="primary"
                        onClick={() => {
                          setOpenEdit(true);
                          setChequeraActual(chequera);
                        }}
                      >
                        <EditIcon />
                      </IconButton>

                      <IconButton
                        aria-label="delete"
                        color="error"
                        onClick={() => {
                          setOpenDelete(true);
                          setChequeraActual(chequera);
                        }}
                      >
                        <DeleteIcon />
                      </IconButton>
                    </React.Fragment>
                  )}

                  <IconButton
                    aria-label="Ver Cheques"
                    onClick={() => {
                     // setOpenAdd(true);
                      setChequeraActual(chequera);
                    }}
                  >
                    <MoreVertIcon />
                  </IconButton>
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </React.Fragment>
  );
}

export default Gestion;
