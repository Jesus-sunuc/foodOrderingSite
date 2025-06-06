import React from "react";
import { Button, Card } from "react-bootstrap";
import { Item } from "../features/items/types/Item";

interface ItemCardProps {
  item: Item;
  onEdit: (item: Item) => void;
  onDelete: (id: string) => void;
  theme: "light" | "dark";
}

const ItemCard: React.FC<ItemCardProps> = ({
  item,
  onEdit,
  onDelete,
  theme,
}) => {
  return (
    <Card
      className={`mb-3 flex-fill shadow-sm ${theme === "dark" ? "custom-card-dark" : "bg-light text-dark"
        }`}
    >
      <Card.Img
        variant="top"
        src={item.image_url}
        style={{ height: "200px", objectFit: "cover" }}
      />
      <Card.Body className="d-flex flex-column">
        <Card.Title>{item.item_name}</Card.Title>
        <Card.Text className="flex-grow-1">
          {item.description}
          <br />
          <strong>Price:</strong> ${item.price.toFixed(2)}
        </Card.Text>
        <div className="mt-auto">
          <Button
            variant="warning"
            className="me-2"
            onClick={() => onEdit(item)}
          >
            Edit
          </Button>
          <Button
            variant="danger"
            onClick={() => {
              if (item.id) {
                onDelete(item.id);
              } else {
                console.error("Item ID is missing. Cannot delete.");
              }
            }}
          >
            Delete
          </Button>

        </div>
      </Card.Body>
    </Card>
  );
};

export default ItemCard;
