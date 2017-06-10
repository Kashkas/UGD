import urllib, json
from pymongo import MongoClient
from configDB import *

def getClient():
	direccion = MONGO_ADDRESS
	puerto = MONGO_PORT
	global cliente
	cliente = MongoClient(direccion,puerto)
	return cliente

def getColeccionPuntosCarga():
	cliente = getClient()
	db = cliente[MONGO_DATABASE]
	coll = db[COLL_PUNTOS_CARGA]
	return coll

def close():
	cliente.close()