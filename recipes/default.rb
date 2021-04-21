var1 = node['demo1cb']['env']
var2 = node['demo1cb']['name']
package 'apache2'  do
    action :install
end
file '/var/www/html/index.html' do
    content "<html>This is a placeholder for the #{var1} #{var2} page..!</html>"
      action :create
end
service 'apache2' do
    action [:enable,:start]
end






