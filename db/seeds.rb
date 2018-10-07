# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
    Blog.create!(
        title:"My blog post #{blog}", 
        body:"Lorem impsum  #{blog}"
        )
end

5.times do |skill|
    Skill.create!(
        title:"rails #{skill}",
        percent_utilized:15
    )
end

9.times do |portfolio_item|
    SPortfolio.create!(
        title:"Portfolio #{portfolio_item}",
        subtitle:"my great aunt sally's service",
        body:"Lorem askjdnakjsdnaksjndaksndakjsdnakjsdnakjdnakjdnakjdn",
        main_image:"https://via.placeholder.com/350x200",
        thumb_image:"https://via.placeholder.com/600x400"
    )
end
