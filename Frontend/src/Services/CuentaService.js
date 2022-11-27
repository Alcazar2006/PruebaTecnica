import { BackendRoute } from "./BackendRoute";
import { default as axios } from "axios";
const { BackendBaseUrl, CuentaRoute } = BackendRoute;

export async function getByNombreDpi(objSearch) {
  try {
    const { data } = await axios.get(BackendBaseUrl + CuentaRoute.getByUser, {
      params: objSearch,
    });
    return data;
  } catch (error) {
    console.error(error);
    return {};
  }
}
