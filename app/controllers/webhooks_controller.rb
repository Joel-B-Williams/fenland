class WebhooksController < ApplicationController

    def hook
        p "*"* 50 
        p request
    end
end
