# demo1cb

TODO: Enter the cookbook description here

Clone this repo inside the chef-repo-> cookbooks -> git clone git-url


TODO: Enter the cookbook description here.

````
  knife cookbook upload demo1cb
````
````
  knife node run_list add dev recipe[demo1cb::default]   
````  
 #### change dev -> to ur env on chef dev server.
````
  knife node run_list add production recipe[demo1cb::default]   
````
 #### change pord -> to ur env on chef  prod server.

# Adding Enviorment

  chef-repo-> environments -> create  chef-learn-dev.json
````
{
    "name": "development",
    "description": "",
    "cookbook_versions": {
            "demo1cb": "= 0.1.0"
    },
    "json_class": "Chef::Environment",
    "chef_type": "environment",
    "default_attributes": {
    },
    "override_attributes": {
            "demo1cb": {
                 "env": "development",
                 "name": "Vimalesh"
            }
    }
 }

````    
#### for prod dept 

 chef-repo-> environments -> create  chef-learn-prod.json 
 
````
{
    "name": "production",
    "description": "",
    "cookbook_versions": {
            "demo1cb": "= 0.1.0"
    },
    "json_class": "Chef::Environment",
    "chef_type": "environment",
    "default_attributes": {
    },
    "override_attributes": {
            "demo1cb": {
                 "env": "production",
                 "name": "Kowsalya"
            }
    }
 }
````
Then upload the environment files 
````
knife environment from file dev.json
````
for other node production  
````
 knife environment from file prod.json
````

In chef server(chef portal) change enviroment to chef-development from dev env.
In chef server change enviroment to chef-production from prod env.

Then run the dev and prod instances and run the below commands 
````
sudo chef-client 
````

Click the ip address of dev and prod instances and see the output

