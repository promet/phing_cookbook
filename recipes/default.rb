include_recipe 'php'
php_pear "PEAR" do
  action :upgrade
end

phing = php_pear_channel "pear.phing.info" do
  action :discover
end

pdepend = php_pear_channel "pear.pdepend.org" do
  action :discover
end

drush = php_pear_channel "pear.drush.org" do
  action :discover
end

phpmd = php_pear_channel "pear.phpmd.org" do
  action :discover
end

phpunit = php_pear_channel "pear.phpunit.de" do
  action :discover
end

ez = php_pear_channel "components.ez.no" do
  action :discover
end

php_pear_channel "pear.symfony.com" do
  action :discover
end

php_pear_channel "pear.netpirates.net" do
  action :discover
end

php_pear "sqlite" do
  action :install
end

php_pear "phing" do
  channel phing.channel_name
  action :install
end

php_pear "phpcpd" do
  channel phpunit.channel_name
  action :install
end

php_pear "phploc" do
  channel phpunit.channel_name
  action :install
end

php_pear "drush" do
  channel drush.channel_name
  action :install
end

php_pear "PHPDocumentor" do
  action :install
end

php_pear "PHP_CodeSniffer" do
  action :install
end

php_pear "HTTP_Request2" do
  action :install
end

php_pear "PHP_CodeBrowser" do
  channel phpunit.channel_name
  action :install
  options "-a"
end
