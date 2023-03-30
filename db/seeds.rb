3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
Blog.create!(
title: "Travel Adventures #{blog}",
body: "In this post, I'll share my recent travel adventures to different parts of the world. From exploring the hidden gems of Bali to hiking the Inca trail in Peru, I've had some unforgettable experiences that I can't wait to share with you. Join me on this journey and let's discover the world together!",
topic_id: Topic.last.id
)
end

puts "10 blog posts created"

Skill.create!(title: "Ruby on Rails", percent_utilized: 80)
Skill.create!(title: "React", percent_utilized: 60)
Skill.create!(title: "JavaScript", percent_utilized: 70)
Skill.create!(title: "Python", percent_utilized: 50)
Skill.create!(title: "AWS", percent_utilized: 90)

puts "5 skills created"

8.times do |portfolio_items|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_items}",
    subtitle: "Ruby on rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
  )
end

1.times do |portfolio_items|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_items}",
    subtitle: "Anguler",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
  )
end

puts "9 portfolio items created"
