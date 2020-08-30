# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do |topic|
  Topic.create(
    title: "topic #{topic}")
end

puts "4 portfoliio created"

10.times do |blog|
  Blog.create!(
    title: "my blog #{blog}",
    body: "A paragraph is a series of related sentences developing a central idea,
           called the topic. Try to think about paragraphs in terms of thematic 
           unity: a paragraph is a sentence or a group of sentences that supports one central",
    topic_id: Topic.last.id
    )
end
puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "skill #{skill}",
    percentage_completed: 15  
  )
end
 puts "5 skills created"

  6.times do |portfoliio_item|

  Portfoliio.create!(
    title: "portfoliio #{portfoliio_item}",
    subtitle:"this is sub title for rails",
    body: "A paragraph is a series of related sentences developing a central idea,
           called the topic. Try to think about paragraphs in terms of thematic 
           unity: a paragraph is a sentence or a group of sentences that supports one central",
    main_img: "https://via.placeholder.com/150x200",
    thumb_img:"https://via.placeholder.com/150x200",
    )
  end

  3.times do |portfoliio_item|

  Portfoliio.create!(
    title: "portfoliio #{portfoliio_item}",
    subtitle:"this is sub title for vue js",
    body: "A paragraph is a series of related sentences developing a central idea,
           called the topic. Try to think about paragraphs in terms of thematic 
           unity: a paragraph is a sentence or a group of sentences that supports one central",
    main_img: "https://via.placeholder.com/150x200",
    thumb_img:"https://via.placeholder.com/150x200",
    )
  end
  puts "9 portfoliio created"