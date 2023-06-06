from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session, joinedload
from datetime import datetime
from database.database import Base, engine, get_db
from database.models import *

Base.metadata.create_all(bind=engine)

app = FastAPI()

@app.get("/Verleihdaten/")
async def verleihdaten(db: Session = Depends(get_db)):
    result = db.query(Verleihdaten).options(joinedload('*')).all()
    return result

@app.post("/Verleihdaten/")
async def verleihdaten(verleihdaten: dict, db: Session = Depends(get_db)):
    verleihdaten["ausleihdatum"] = datetime.strptime(verleihdaten["ausleihdatum"], "%Y-%m-%d")
    verleihdaten["rueckgabedatum"] = datetime.strptime(verleihdaten["rueckgabedatum"], "%Y-%m-%d")
    verleihdaten_object = Verleihdaten(**verleihdaten)
    db.add(verleihdaten_object)
    db.commit()
    return verleihdaten_object
