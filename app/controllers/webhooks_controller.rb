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

        p "*"*150
        p "params"
        p params
        p "*" * 150
        p ".data"
        p params.data 
        p "*"*150
       
       
       # if request.request_parameters["data"]["item"]["user"]["email"]
 #
  ##             p "Convert the Lead to a User here"
    #    else
     #       p"*"*100 
      #      p "Error 486: Something has gone horribly pear-shaped"
       # end
    end
end
