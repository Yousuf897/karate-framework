
function fn() {

   var env = karate.env;
   karate.log('karate.env system.env', env);

   if (!env) {
        env = 'dev';
   }

   var environment = {
        dev: {
            baseUrl: 'https://jsonplaceholder.typicode.com/',
            dbUrl: 'http://localhost:3000'
            timeouts: {
                connection: 5000,
                read: 10000
            },
        },
     qa: {
                baseUrl: 'https://jsonplaceholder.typicode.com/',
                dbUrl: 'http://localhost:3000'
                timeouts: {
                    connection: 5000,
                    read: 10000
                },
            },
         prod: {
                    baseUrl: 'https://jsonplaceholder.typicode.com/',
                    dbUrl: 'http://localhost:3000'
                    timeouts: {
                        connection: 5000,
                        read: 10000
                    },
                },
   };

   var envConfig = environment[env];

   var config = {
        baseUrl: envConfig.baseUrl,
        dbUrl: envConfig.dbUrl,
        connectionTimeout: envConfig.timeouts.connection,
        readTimeout: envConfig.timeouts.read,
   };

   return config;

}