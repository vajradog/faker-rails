namespace :db do
  desc "Erase and fill database"
	task :populate => :environment do 
    require 'faker'

    Rake::Task['db:reset'].invoke
    
    # Create 15 posts
    15.times do
      Post.create do |post|
        post.title = Faker::Lorem.sentence # all options available in readme
        post.body = Faker::Lorem.paragraph
      end
    end
  end
end