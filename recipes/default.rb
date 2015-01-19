include_recipe 'apt' if node['platform_family'] == 'debian'

node['wkhtmltopdf']['dependency_packages'].each do |p|
  package p do
    action :install
  end
end

include_recipe 'wkhtmltopdf::binary'
