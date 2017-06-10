import web
import urllib, json
from bson import json_util
import mongodb
from bson.json_util import dumps
from configDB import *
from pymongo import GEO2D

def loadDatosPuntosCarga():
	url = DATOS_PUNTOS_URL
	response = urllib.urlopen(url)
	data = json.loads(response.read())
	coll = mongodb.getColeccionPuntosCarga()

	for elemento in data['result']['records']:
		elemento['loc'] = [float(elemento['LONGITUD']), float(elemento['LATITUD'])]
		coll.update({'_id':elemento['_id']}, elemento, True)
	coll.create_index([('loc', GEO2D)])
	mongodb.close()
	return

def getDatosPuntosCarga(longitud, latitud, radio):
	#query = {"loc": {"$within": {"$center": [[float(longitud), float(latitud)], float(radio)/6371]}}}
	query = {'loc': {'$geoWithin': {'$centerSphere': [ [float(longitud),float(latitud)], float(radio)/6371 ] } } }
	coll = mongodb.getColeccionPuntosCarga().find(query)
	#for elemento in coll:
	#	respuesta['respuesta'].append(json.dumps(elemento, sort_keys=True, indent=4, default=json_util.default))
	mongodb.close()
	#print respuesta
	return dumps(coll)