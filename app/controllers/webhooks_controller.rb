class WebhooksController < ApplicationController
    skip_before_filter :verify_authenticity_token
    after_filter :cors_set_access_control_headers

    require 'net/http'
    require 'uri'
    require 'json'

    def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST'
        headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
        headers['Access-Control-Max-Age'] = "1728000"
    end

    def hook

        p "*"*150
        p "params"
        p params
        p "*" * 150
       # p ".data"
        #p params['data'] 
        #p "*"*150
        #p "user_id"
        #params = JSON.parse(params)
       # p params.data.item
       # p params['data']['item']
        #p params['data']['item']['user']['user_id']
       # p "*"*150
       # p email
       # p params['data']['item']['user']['email']
       # p "*"*323
       
=begin

        uri = URI.parse("https://api.intercom.io/contacts/convert")
        request = Net::HTTP::Post.new(uri)
        request.content_type = "application/json"
        request["Authorization"] = "Bearer <%= ENV['API_TOKEN'] %>"
        request["Accept"] = "application/json"
        request.body = JSON.dump({
        "contact" => {
            "user_id" => params['data']['item']['user']['user_id']
        },
        "user" => {
            "email" => params['data']['item']['user']['email']
        }
        })

        req_options = {
        use_ssl: uri.scheme == "https",
        }

        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        p "*"* 150
        p "curl response"
        p http.request(request)
        end
=end
        # response.code
        # response.body
       
       
       # if request.request_parameters["data"]["item"]["user"]["email"]
 #
  ##             p "Convert the Lead to a User here"
    #    else
     #       p"*"*100 
      #      p "Error 486: Something has gone horribly pear-shaped"
       # end
    end
end
