namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Gallery.create!(name: "Example Galler",
                 description: "Example Gallery Description")
    5.times do |n|
      name  = Faker::Name.name
      description  = "description"
      Gallery.create!(name: name,
                   description: description)
    end

     galleries = Gallery.all
      50.times do
        image = 'http://brooklynbased.net/wp-content/uploads/2012/04/yankees.jpg'
      galleries.each { |gallery| gallery.photos.create!(image: image) }
    end
  end
end
