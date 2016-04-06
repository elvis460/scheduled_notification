namespace :events do
	task breakfast: :environment do
		require 'rest-client'
		response = RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: '早安，村民！準備迎接這美好的一天了嗎？', content_type: 'application/x-www-form-urlencoded' 
		puts "#{response},#{Time.now}"
	end
	task lunch: :environment do
		require 'rest-client'
		food_to_eat = Food.find(rand(1..Food.count)).name
		response = RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: "午安，村民！吃午餐囉～來個#{food_to_eat}如何？", content_type: 'application/x-www-form-urlencoded' 
		puts "#{response},#{Time.now}"
	end	
	task dinner: :environment do
		require 'rest-client'
		food_to_eat = Food.find(rand(1..Food.count)).name
		response = RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: '晚安，村民！辛苦了一天，來頓晚餐放鬆一下吧！#{food_to_eat}怎麼樣？', content_type: 'application/x-www-form-urlencoded' 
		puts "#{response},#{Time.now}"
	end	
end