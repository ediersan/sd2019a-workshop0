yum_package 'httpd' do
	action :install
end

remote_file '/var/www/html/index.html' do
	source 'http://www.icesi.edu.co'
	owner 'vagrant'
	group 'vagrant'
	mode '0755'
	action :create
end

service 'httpd' do
	action [:enable, :start]
end
