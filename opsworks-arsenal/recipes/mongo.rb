node[:deploy].each do |application, deploy|

	template "#{deploy[:deploy_to]}/current/config/connections.js" do
  		source "connections_js.erb"
  		mode 00700
  		owner "root"
  		group "root"
  		variables({
    		:mongo_hostname => node[:mongo_hostname]
  		})
	end

end
