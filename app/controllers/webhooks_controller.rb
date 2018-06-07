class WebhooksController < ApplicationController
    skip_before_filter :verify_authenticity_token
    after_filter :cors_set_access_control_headers

    def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST'
        headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
        headers['Access-Control-Max-Age'] = "1728000"
    end

    def hook
        p "*"* 100
        p "webhook request_parameters" 
        p request.request_parameters
       
    end
end
