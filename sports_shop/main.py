from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def main():
    return {"status": "ok", "message": "U Home"}


@app.get("/health")
def health():
    return {"status": "ok"}
