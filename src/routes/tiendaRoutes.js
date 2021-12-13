const express = require ('express');

const routes = express.Router();

const {renderHome, getAllProducts, getMunecas, getAnimales, getPersonajes, getPlantas, getContacto, getSobreNosotros} =require ('../controllers/tiendaControllers');

routes.get('/', renderHome); 

routes.get('/productos', getAllProducts);

routes.get('/munecas', getMunecas);

routes.get('/animales', getAnimales);

routes.get('/personajes', getPersonajes);

routes.get('/plantas', getPlantas);

routes.get('/contacto', getContacto);

routes.get('/sobrenosotros', getSobreNosotros);

module.exports = routes;