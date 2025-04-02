// import axios from "axios";

// const baseURL =
//   import.meta.env.MODE === "development"
//     ? "http://localhost:8000/api"
//     : "http://lunch-box-api-chdtdbcbg8bzbjfh.westus-01.azurewebsites.net/api";

// export const axiosClient = axios.create({
//   baseURL,
// });

import axios from "axios";

const baseURL = import.meta.env.VITE_API_URL;

export const axiosClient = axios.create({
  baseURL,
});


// import axios from "axios";

// const baseURL =
//   import.meta.env.MODE === "development"
//     ? "http://localhost:8000/api"
//     : import.meta.env.VITE_API_URL || "http://lunchbox6.duckdns.org/api";

// export const axiosClient = axios.create({
//   baseURL,
// });
