class WebhooksController < ApplicationController
  protect_from_forgery with: :null_session

  def init
    response = {
      canvas: {
        content: {
          components: [
            { 
              type: "text", 
              text: "Please select your favorite part of the cats", 
              style: "header", 
              align: "center" 
            },
            { 
              type: "button", 
              label: "Tiny little toe beans", 
              style: "primary", 
              id: "toe_beans", 
              action: {type: "submit"} 
            },
            { 
              type: "button", 
              label: "Little snoofer boops", 
              style: "primary", 
              id: "snoofer", 
              action: {type: "submit"} 
            },
            { 
              type: "button", 
              label: "The softest of bellies", 
              style: "primary", 
              id: "bellies", 
              action: {type: "submit"} 
            }
          ]
        }
      }
    }

    render json: response.to_json
    
  end
  
  def submit
    catParts = {
      "toe_beans" => "https://drive.google.com/open?id=1zAysPbk0z4cARfz_TAc_sOHfActQb6EZ",
      "snoofer" => "https://drive.google.com/open?id=1YaTEIOSK3zFdEZ23BsM7fBmwbqeovvzL",
      "bellies" => "https://drive.google.com/open?id=1gkUGqER0BxumrOihxDgAY8HjJtC_bEka" 
    }
    
    img_link = catParts[params["component_id"]]

    response = {
      canvas: {
        content: {
          components: [
            { 
              type: "text", 
              text: "You have selected wisely", 
              style: "header", 
              align: "center" 
            },
            {
              type: "text",
              text: img_link,
              align: "center"
            }
          ] 
        }
      }
    }
    
    render json: response.to_json
  end
	
end
