class WebhooksController < ApplicationController
  protect_from_forgery with: :null_session

  def init
    p "*" * 50
    p 'You have initialized the app'
    response = {
      canvas: {
        content: {
          components: [{ 
            type: "button", 
            label: "Click ME!!!!", 
            style: "primary", 
            id: "url_button", 
            action: {type: "submit"} 
          }]
        }
      }
    }

    render json: response.to_json
    
  end
  
  def submit
    p "*" * 50
    p 'You have submitted the app'
  end
	
end
