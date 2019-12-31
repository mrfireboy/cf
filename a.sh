#!/bin/sh


# 先创建管理员
echo "db.createUser({user: 'lvyunAdmin',pwd: 'lvyunpms2017',roles: [ { role: 'userAdminAnyDatabase', db: 'admin' } ]})" | mongo localhost:32938/admin;

# 添加数据库账号
echo "db.createUser({user: 'lvyun-pms',pwd: 'lvyunpms2017',roles: [ { role: 'readWrite', db: 'record'}]})" | mongo localhost:32938/record;

# 3. 添加auth 重启mongod
vi /etc/mongod.conf 
systemctl restart mongod


# 


