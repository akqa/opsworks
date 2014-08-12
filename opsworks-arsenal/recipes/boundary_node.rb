include_recipe "opsworks-arsenal::boundary"

node[:deploy].each do |application, deploy|

	execute "install graphdat" do
		cwd "#{deploy[:deploy_to]}/current/"
	  	command "npm install graphdat"
	end

	template "#{deploy[:deploy_to]}/current/server.js" do
  		source "server_js.erb"
  		mode 00700
  		owner "root"
  		group "root"
	end

	execute "do" do
		command "monit restart #{application}"
	end

end
