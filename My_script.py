
from asyncore import write
import os 
import shutil
import json
import os.path
import pymysql
import os, shutil
import sys
import MySQLdb as db
from venv import create

#---------------------cONNECTION vps---------------------
#import paramiko
#client = paramiko.SSHClient()
#client.connect('ssh.example.com', username='root', password='toor')
#stdin, stdout, stderr = client.exec_command('ls -l')
pname = "My_project"

#how create a folder ? 
newpath ='C:\\xampp\\htdocs\\'+pname
print("Project Name: ",pname)
if not os.path.exists(newpath):
 os.makedirs(newpath)
 
#how create a file in a folder 
folder_iter = os.walk(newpath)
for current_folder, _, _ in folder_iter:
  filename = "config.json"
  config = {"DB_DATABASE": "Hello", "key2": "value2"}
  with open(os.path.join(current_folder, filename), "w") as f:
   json.dump(config, f) 
print('------------ first step Done writing in json file done ----------- ')
    
# how past folder in an other folder in python
if not os.path.exists("C:\\xampp\\htdocs\\customer-portal.mcom.tn\\mcom2"):
 os.chdir('C:\\xampp\\htdocs\\customer-portal.mcom.tn')
 shutil.copytree('C:\\xampp\\htdocs\\'+pname,'mcom2')
 #reading data from a file 
with open('C:\\xampp\\htdocs\\customer-portal.mcom.tn\\mcom2\\config.json', 'r') as f:
     config = json.load(f)
    # edit the data
config['DB_DATABASE'] = 'value3'
    #write it back to the file
with open('C:\\xampp\\htdocs\\customer-portal.mcom.tn\\mcom2\\config.json', 'w') as f:
        json.dump(config, f)  
print('\n -------------------Read data from a file!-----------------------')
print('-------------your folder is copied and changed her name-------------')


#how modify in file of folder in python
fichier = open("C:\\xampp\\htdocs\\customer-portal.mcom.tn\\mcom2\\config.json", "a")
 # with open('config.json', 'r') as f:
 #  config = json.load(f)
for current_folder, _, _ in folder_iter:
 filename = "config.json"
    #edit the data
 config['DB_DATABASE'] = 'value3'
    #write it back to the file
 with open('config.json', 'w') as f:
  json.dump(config, f) 
#fichier.write('Hellooooooooooooooooo') 
fichier.close()
print('------------- the content of your file config.json is changed Done  -------------')

#database connection
connection = pymysql.connect(host="localhost",user="root",passwd="1234",database="customer_portal_db" )
cursor = connection.cursor()
selectquery="select * from clients"
cursor.execute(selectquery)
records=cursor. fetchall ()
# #afficher all nom des tables of my DB
# cursor.execute("Show tables from customer_portal_db ")
# # fetchall() will store all the names of tables into query1
# query1 = cursor.fetchall()
# # print name of tables
# for i in query1:
#     print(i)
print("Nb of clients in the portail",cursor.rowcount)
# '''for row in records:
#     print("client id",row[0])
#     print("client name",row[1])
#     print("client lastName",row[2])
#     print("client email",row[3])
#     print()'''
cursor.close()
print('------------- connection with data base done  -------------')
# connection.close()
#creation d'un nouveau base dans phpmyadmin
# database which you want to backup
db = 'customer_portal_db'
name = 'Arvea'
truncate_table = ["clients","appspecifications"]
  
connection = pymysql.connect(host='localhost', user='root',
                       password='1234', database=db)
cursor = connection.cursor()
  
# Getting all the table names
cursor.execute('SHOW TABLES;')
table_names = []
for record in cursor.fetchall():
    table_names.append(record[0])
  
backup_dbname = name + '_db'
try:
    cursor.execute(f'CREATE DATABASE {backup_dbname}')
except:
    pass
  
cursor.execute(f'USE {backup_dbname}')
  
for table_name in table_names:
    cursor.execute(
        f'CREATE TABLE {table_name} SELECT * FROM {db}.{table_name}')

for name in truncate_table:
    
    cursor.execute(
        f'TRUNCATE TABLE {name}') 
          
print ("---------------------------------------your new data base created THANK YOU !--------------------- ")

# to vider a folder 
#initialiser your path you need 
folder = ("C:\\Users\\Ben Nasr Chaima\\Desktop\\images")
for filename in os.listdir(folder):
    file_path = os.path.join(folder, filename)
    try:
        if os.path.isfile(file_path) or os.path.islink(file_path):
            os.unlink(file_path)
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path)
    except Exception as e:
        print('Failed to delete %s. Reason: %s' % (file_path, e))
print('------------------------------------------------your folder is vide---------------------------------------')
# commande to run
os.system("python --version")



