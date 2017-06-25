# -*- coding: utf-8 -*-

from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String


Base = declarative_base()


class Diary(Base):
    __tablename__ = 'diary'
    
    id = Column(Integer, primary_key=True)
    title = Column(String)