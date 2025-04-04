// import { camel_to_snake } from "../../utils/apiMapper";
import { axiosClient } from "../../utils/axiosClient";
import { Item } from "../types/Item";

export const itemService = {
  async getItems(): Promise<Item[]> {
    const res = await axiosClient.get("/items");
    return res.data;
  },
  async addItem(item: Item): Promise<void> {
    await axiosClient.post("/items", item);
  },
  async updateItem(item: Item): Promise<void> {
    await axiosClient.put(`/items/${item.id}`, item);
  },
  async deleteItem(id: string): Promise<void> {
    await axiosClient.delete(`/items/${id}`);
  },
};
