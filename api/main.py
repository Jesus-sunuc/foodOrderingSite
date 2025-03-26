from fastapi import FastAPI
from routes.item_router import router as item_router
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()


@app.get("/")
def root():
    return {"message": "Hello from Azure! 🎉"}


app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(item_router, prefix="/api")
