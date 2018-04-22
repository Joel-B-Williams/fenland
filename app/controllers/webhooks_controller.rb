class WebhooksController < ApplicationController
	skip_before_action :verify_authenticity_token
	# before_filter :set_headers
	after_filter :set_headers

	def receive
		if request.headers['Content-Type'] == 'application/json'
			data = JSON.parse(request.body.read)
		else
			data = params.as_json
		end

		p "*"*30
		p data
		p "*"*30

		redirect_to "/hook/#{data["newColor"]}"
		# redirect_to root_path
# Parse and "do stuff" with data
		# Webhook::Received.save(data: data, integration: params[:integration_name])
# Need to find good way to pass this through to JS - instant possible?  not easy.
		# render nothing: true
	end

	private

		def set_headers 
			headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
			headers['Access-Control-Allow-Methods'] = 'POST'
			headers['Access-Control-Request-Method'] = 'receive'
			headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
			headers['Access-Control-Max-Age'] = "1728000"
		end

end
