namespace :events do
	task breakfast: :environment do
		require 'rest-client'
		message = Message.all.sample.content
		response = RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: "早安，村民！#{message}", content_type: 'application/x-www-form-urlencoded' 
		puts "#{response},#{Time.now}"
	end
	task lunch: :environment do
		require 'rest-client'
		#food_to_eat = Food.find(rand(1..Food.count)).name
		message = Message.all.sample.content
		response = RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: "午安，村民！#{message}", content_type: 'application/x-www-form-urlencoded' 
		puts "#{response},#{Time.now}"
	end	
	task dinner: :environment do
		require 'rest-client'
		#food_to_eat = Food.find(rand(1..Food.count)).name
		message = Message.all.sample.content
		response = RestClient.post 'http://im.kayac.com/api/post/elvis' ,message: "晚安，村民！#{message}", content_type: 'application/x-www-form-urlencoded' 
		puts "#{response},#{Time.now}"
	end	
end