
import NavBar from "./components/NavBar";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Inicio from "./components/Inicio";
import RutaNoEncontrada from "./components/RutaNoEncontrada";
import Gestion from "./components/Gestion";
function App() {
 
  return (
    <div className="App">
      <NavBar/>
      <Router>
        <Routes>
          <Route path="/" element={<Inicio/>} />
          <Route path="/Inicio" element={<Inicio/>} />
          <Route path="/Gestion" element={<Gestion/>} />
          <Route path="/*" element={<RutaNoEncontrada/>} />
        </Routes>
      </Router>

    </div>
  );
}

export default App;
