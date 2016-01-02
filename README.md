# Chef
This will a reference repo for us for all chef related work
# Installing chef-solo
```bash
curl -L https://www.opscode.com/chef/install.sh | bash
chef-solo -v
```
## Organise chef-files structure
```bash
wget http://github.com/opscode/chef-repo/tarball/master
tar -zxf master
mv chef-chef-repo* chef-repo
rm master
cd chef-repo
```
## Setup knife to manage cookbooks
```bash
mkdir .chef
echo "cookbook_path [ '/root/chef-repo/cookbooks' ]" > .chef/knife.rb
```
### Create first cookbook
```bash
knife cookbook create firstcookbook
```
```text
This cookbook will be created in the directory "/root/chef-repo/cookbooks"
```
### Downloading cookbooks from chef supermarket
```bash
cd cookbooks
git init
git add --all
git commit -m "Initial commit"
cd ..
knife cookbook site install apt
```

### Create chef-solo config file and specifying run-list for chef-recipes
Create a new file called solo.rb in chef-repo directory
```text
file_cache_path "/root/chef-solo"
cookbook_path "/root/chef-repo/cookbooks"
```
Place the above lines in solo.rb

Now we'll create config file for specifying our run-list of recipies to be applied on a machine.
Create a new file config.json in chef-repo directory.
```text
{
  "nginx":{
    "default_root": "/usr/share/nginx/html
  },
  "run_list": [ "recipe[nginx]" ]
}
```
Place the above content in config.json file

# Installing nginx
```bash
knife cookbook site install nginx
chef-solo -c solo.rb -j config.json
```
