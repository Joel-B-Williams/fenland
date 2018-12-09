class WebhooksController < ApplicationController

  def initialize
    p "*" * 50
    p 'You have initialized the app'
    canvas = {
      content: {
        components: [
          { type: "button", label: "Click ME!!!!", style: "primary", id: "url_button", action: {type: "submit"} }
        ]
      }
    }

    respond_to do |format|
      format.json do
        render json: canvas.to_json
      end
    end
    
  end
  
  def submit
    p "*" * 50
    p 'You have submitted the app'
  end
	
end
