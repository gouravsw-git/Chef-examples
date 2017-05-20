
package "tomcat"

service "tomcat" do
action :start
end

package "wget"

bash 'extract_module' do
  user 'root'
  cwd '/root'
  code <<-EOH
    wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war 
    cp /root/jenkins.war /usr/share/tomcat/webapps
    EOH
end
