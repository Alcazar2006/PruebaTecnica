import { BackendRoute } from "./BackendRoute";
import { default as axios } from "axios";
const { BackendBaseUrl, ChequeraRoute } = BackendRoute;

export async function getChequera(objSearch) {
  try {
    const { data } = await axios.get(BackendBaseUrl + ChequeraRoute.get, {
      params: objSearch,
    });
    return data;
  } catch (error) {
    console.error(error);
    return {};
  }
}

export async function addChequera(objSearch) {
  try {
    const { data } = await axios.post(BackendBaseUrl + ChequeraRoute.add, {
      ...objSearch,
    });
    return data;
  } catch (error) {
    console.error(error);
    return {};
  }
}

export async function editarChequera(objSearch) {
    try {
      const { data } = await axios.put(BackendBaseUrl + ChequeraRoute.edit, {
        ...objSearch,
      });
      return data;
    } catch (error) {
      console.error(error);
      return {};
    }
  }

  export async function deleteChequera(objSearch) {
    try {
      const { data } = await axios.delete(BackendBaseUrl + ChequeraRoute.delete, {
        params: objSearch,
      });
      return data;
    } catch (error) {
      console.error(error);
      return {};
    }
  }