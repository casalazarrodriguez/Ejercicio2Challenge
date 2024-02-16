function fn(){
    var env + karate.env;
    var urlBase = ''

    karate.log('Se realizó la ejecución en el ambiente: ', env);
    karate.configure('ssl',true)

    if (!env){
        env = 'dev';
    }

    if (env === 'dev'){

    }else if (env === 'cert'){
    var urlBase = 'https://petstore.swagger.io'

    }
    var config = {
    env: env;
    urlBase: urlBase

    }
    return config;


}