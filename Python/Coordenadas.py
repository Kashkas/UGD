import web, json
from model import geoCoordenates
from configServer import *

urls = ('/servicioCoordenadas','servicioCoordenadas')

class servicioCoordenadas:
	def GET(self):
		data = web.input()
		respuesta = geoCoordenates.getDatosPuntosCarga(data.long, data.lat, data.radio)
		web.header('Access-Control-Allow-Origin','*')
		web.header('Content-Type', 'application/json')
		return respuesta;
		
class App(web.application):
	def run(self, port=SERVER_PORT, *middleware):
		func = self.wsgifunc(*middleware)
		return web.httpserver.runsimple(func, ('0.0.0.0', port))

if __name__ == "__main__":
	geoCoordenates.loadDatosPuntosCarga()
	app = App(urls, globals())
	app.run()