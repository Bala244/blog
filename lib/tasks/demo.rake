namespace :demo do 
    desc "demo"
    task say_hello: :environment do
        puts "Hello this is from custom rakes"
    end
end
