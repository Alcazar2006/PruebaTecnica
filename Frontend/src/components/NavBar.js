import React from "react";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import Button from "@mui/material/Button";

import { ThemeProvider, createTheme } from "@mui/material/styles";

function NavBar() {
  const darkTheme = createTheme({
    palette: {
      mode: "dark",
      primary: {
        main: "#1976d2",
      },
    },
  });

  return (
    <Box sx={{ flexGrow: 1 }}>
      <ThemeProvider theme={darkTheme}>
        <AppBar position="static">
          <Toolbar>
            <Button
              sx={{ my: 2, color: "white", display: "block" }}
              href="/Inicio"
            >
              Inicio
            </Button>
            <Button
              sx={{ my: 2, color: "white", display: "block" }}
              href="/Gestion"
            >
              Gestión de Chequeras
            </Button>
          </Toolbar>
        </AppBar>
      </ThemeProvider>
    </Box>
  );
}

NavBar.propTypes = {};

NavBar.defaultProps = {};

export default NavBar;
