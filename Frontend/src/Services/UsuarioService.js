import { BackendRoute } from "./BackendRoute";
import { default as axios } from "axios";
const { BackendBaseUrl, UsuarioRoute } = BackendRoute;

export async function getByNombreDpi(objSearch) {
  try {
    const { data } = await axios.get(BackendBaseUrl + UsuarioRoute.getByNombreDpi, {
      params: objSearch,
    });
    return data;
  } catch (error) {
    console.error(error);
    return {};
  }
}
