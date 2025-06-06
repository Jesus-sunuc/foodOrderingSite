import React, { useState, useEffect } from "react";
import { Modal, Button, Form, Image } from "react-bootstrap";
import { Item } from "../features/items/types/Item";
import "../App.css";

interface ItemModalProps {
  show: boolean;
  onClose: () => void;
  onSave: (item: Item) => void;
  initialData?: Item;
  theme: "light" | "dark";
}

const ItemModal: React.FC<ItemModalProps> = ({
  show,
  onClose,
  onSave,
  initialData,
  theme,
}) => {
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [image, setImage] = useState<string>("");
  const [price, setPrice] = useState<number>(0);

  useEffect(() => {
    if (initialData) {
      setTitle(initialData.item_name);
      setDescription(initialData.description);
      setImage(initialData.image_url);
      setPrice(initialData.price);
    } else {
      setTitle("");
      setDescription("");
      setImage("");
      setPrice(0);
    }
  }, [initialData]);


  const handleSave = () => {
    const newItem: Item = {
      id: initialData?.id || crypto.randomUUID(),
      item_name: title,
      description,
      image_url: image,
      price,
    };
    onSave(newItem);
    onClose();
  };

  return (
    <Modal
      show={show}
      onHide={onClose}
      contentClassName={theme === "dark" ? "custom-dark text-light" : ""}
    >
      <Modal.Header
        closeButton
        closeVariant={theme === "dark" ? "white" : undefined}
      >
        <Modal.Title>{initialData ? "Edit Item" : "Add New Item"}</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        <Form>
          <Form.Group controlId="formTitle">
            <Form.Label>Name</Form.Label>
            <Form.Control
              value={title}
              onChange={(e) => setTitle(e.target.value)}
            />
          </Form.Group>

          <Form.Group controlId="formDescription" className="mt-2">
            <Form.Label>Description</Form.Label>
            <Form.Control
              value={description}
              onChange={(e) => setDescription(e.target.value)}
            />
          </Form.Group>

          <Form.Group controlId="formPrice" className="mt-2">
            <Form.Label>Price ($)</Form.Label>
            <Form.Control
              type="number"
              min={0}
              step={0.01}
              value={price}
              onChange={(e) => setPrice(parseFloat(e.target.value))}
            />
          </Form.Group>
          <Form.Group controlId="formImage" className="mt-2">
            <Form.Label>Upload URL</Form.Label>
            <Form.Control
              type="text"
              accept="image"
              onChange={(e) => setImage(e.target.value)}            />
          </Form.Group>

          {image && (
            <div className="mt-3 text-center">
              <Image src={image} thumbnail style={{ maxHeight: "200px" }} />
            </div>
          )}
        </Form>
      </Modal.Body>

      <Modal.Footer>
        <Button variant="secondary" onClick={onClose}>
          Cancel
        </Button>
        <Button variant="primary" onClick={handleSave}>
          Save
        </Button>
      </Modal.Footer>
    </Modal>
  );
};

export default ItemModal;
