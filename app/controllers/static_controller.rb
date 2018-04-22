class StaticController < ApplicationController
		after_filter :set_headers, only: [:hook]

	def home
	end

	def hook
		@color = params[:color]
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
