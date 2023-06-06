from sqlalchemy import Column, ForeignKey, Integer, String, Date, Float
from sqlalchemy.orm import relationship
from .database import Base


class AutoExtra(Base):
    __tablename__ = "auto_extra"

    id = Column(Integer, primary_key=True)
    extra_id = Column(Integer, ForeignKey('extras.id'))
    auto_id = Column(Integer, ForeignKey('autos.id'))


class AutoZubehoer(Base):
    __tablename__ = "auto_zubehoer"

    id = Column(Integer, primary_key=True)
    zubehoer_id = Column(Integer, ForeignKey('zubehoer.id'))
    auto_id = Column(Integer, ForeignKey('autos.id'))


class Auto(Base):
    __tablename__ = "autos"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    kennzeichen = Column(String)
    hersteller = Column(String)
    typ = Column(String)
    baujahr = Column(Date)
    ps = Column(Integer)
    ccm = Column(Integer)
    farbe = Column(String)
    kraftstoff = Column(String)
    sitzplaetze = Column(Integer)
    versicherungsnummer = Column(String)
    tuev = Column(Date)
    asu = Column(Date)

    preisgruppe_id = Column(Integer, ForeignKey("preisgruppen.id"))

    preisgruppe = relationship("Preisgruppe", back_populates="autos", uselist=False)
    extras = relationship("Extra", secondary="auto_extra", back_populates="autos")
    zubehoer = relationship("Zubehoer", secondary="auto_zubehoer", back_populates="autos")
    verleihdaten = relationship("Verleihdaten", back_populates="auto")


class Extra(Base):
    __tablename__ = "extras"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    bezeichnung = Column(String)

    autos = relationship("Auto", secondary="auto_extra", back_populates="extras")


class Zubehoer(Base):
    __tablename__ = "zubehoer"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    bezeichnung = Column(String)

    autos = relationship("Auto", secondary="auto_zubehoer", back_populates="zubehoer")


class Preisgruppe(Base):
    __tablename__ = "preisgruppen"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    eur_tag = Column(Float)
    eur_km = Column(Float)
    eur_stunde = Column(Float)

    autos = relationship("Auto", back_populates="preisgruppe")


class Personal(Base):
    __tablename__ = "personal"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    vorname = Column(String)
    nachname = Column(String)

    verleihdaten = relationship("Verleihdaten", back_populates="personal")


class Kunde(Base):
    __tablename__ = "kunden"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    vorname = Column(String)
    nachname = Column(String)
    geburtsdatum = Column(Date)

    adresse_id = Column(Integer, ForeignKey("adressen.id"))

    adresse = relationship("Adresse", back_populates="kunden", uselist=False)
    verleihdaten = relationship("Verleihdaten", back_populates="kunde")


class Adresse(Base):
    __tablename__ = "adressen"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    strasse = Column(String)
    nummer = Column(String)

    land_id = Column(Integer, ForeignKey("laender.id"))
    ort_id = Column(Integer, ForeignKey("orte.id"))

    kunden = relationship("Kunde", back_populates="adresse")
    ort = relationship("Ort", back_populates="adressen", uselist=False)
    land = relationship("Land", back_populates="adressen", uselist=False)

class Land(Base):
    __tablename__ = "laender"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    bezeichnung = Column(String)

    adressen = relationship("Adresse", back_populates="land")

class Ort(Base):
    __tablename__ = "orte"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    plz = Column(Integer)
    ort = Column(String)

    adressen = relationship("Adresse", back_populates="ort")


class Verleihdaten(Base):
    __tablename__ = "verleihdaten"

    id = Column(Integer, primary_key=True, autoincrement=True, index=True)
    ausleihdatum = Column(Date)
    rueckgabedatum = Column(Date)
    start_km = Column(Integer)
    end_km = Column(Integer)

    auto_id = Column(Integer, ForeignKey('autos.id'))
    personal_id = Column(Integer, ForeignKey('personal.id'))
    kunde_id = Column(Integer, ForeignKey('kunden.id'))

    auto = relationship("Auto", back_populates="verleihdaten", uselist=False)
    personal = relationship("Personal", back_populates="verleihdaten", uselist=False)
    kunde = relationship("Kunde", back_populates="verleihdaten", uselist=False)
