const databaseConnection = require ("../../config/database");

const renderHome = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos',(error,data)=>{
        if(error){
            console.log(error)
        }else{   
            res.render('pages/index',{ 
                data 
            })
        }
    }); 
}

const getAllProducts = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/productos',{
                data 
            })
        }
    }); 
}

const getMunecas = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos WHERE categoria="Muñecas"',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/munecas',{
                data 
            })
        }
    }); 
}

const getAnimales = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos WHERE categoria="Animales"',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/animales',{
                data 
            })
        }
    }); 
}

const getPersonajes = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos WHERE categoria="Personajes"',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/personajes',{
                data 
            })
        }
    }); 
}

const getPlantas = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos WHERE categoria="Plantas"',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/plantas',{
                data 
            })
        }
    }); 
}

const getContacto = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/contacto',{
                data 
            })
        }
    }); 
}

const getSobreNosotros = (req,res)=>{

    databaseConnection.query('SELECT * FROM productos',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/sobreNosotros',{
                data 
            })
        }
    }); 
}

module.exports= {
    renderHome,
    getAllProducts,
    getMunecas,
    getAnimales,
    getPersonajes,
    getPlantas,
    getContacto,
    getSobreNosotros
};