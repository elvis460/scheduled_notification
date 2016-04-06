class HomesController < ApplicationController

	def index
		require 'rest-client'
		RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: 'Hello World!', content_type: 'application/x-www-form-urlencoded' 
	end
end
