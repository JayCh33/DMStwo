# README
DMS TWO v0.4a

**Initial setup**
1. rake db:create

2. rake db:migrate

3. rake db:seed

4. rails server

5. login using "admin@example.com" and "password" as credentials,
    you may edit your user details later
    
    
    
##### **_v0.4a patch notes:_**

-Added admin_users with superadmin (boolean) as role

-Added clients (including their vehicle details form in the client model)

-Added service appointment management (connected to clients)

-Added products-parts (also added the ability to upload image)

-Added purchase orders (connected to the suppliers)

-Added feature to download in excel (.xls) form the index of models

##### _**Incoming patch features:**_

-Car retail management

-Add completed service appointment status

-Add Used/New status in products(parts)
