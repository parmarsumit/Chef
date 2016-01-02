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
