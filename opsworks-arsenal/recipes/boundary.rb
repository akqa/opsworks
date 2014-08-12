	execute "install boundary" do
		command "curl -s -d '{\"token\":\"api.5c51d35b83\"}' -H 'Content-Type: application/json' https://premium.boundary.com/agent/install | sh"
	end


