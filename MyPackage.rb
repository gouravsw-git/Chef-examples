package "httpd"

service "httpd" do
		action :start
end

package "ntp"

service "ntpd" do
action :start
end
