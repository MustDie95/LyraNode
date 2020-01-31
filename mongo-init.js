
db = db.getSiblingDB('admin');
db.auth('root', 'password');

db = db.getSiblingDB('lyra');
db.createUser(
        {
            user: "lexuser",
            pwd: "lexpassword",
            roles: [
                {
                    role: "readWrite",
                    db: "lyra"
                }
            ]
        }
);

db = db.getSiblingDB('dex');
db.createUser(
        {
             user:'dexuser',
             pwd:'dexpassword',
             roles: [
               {
                  role:'readWrite',
                  db:'dex'
               }
             ]
        }
);
