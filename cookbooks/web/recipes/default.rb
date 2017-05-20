#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


file "Hello.txt" do
        action :create
end


template '/var/www/html/index.html' do
	sourch 'index.html.erb'
end
