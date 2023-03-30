10.times do |blog|
Blog.create!(
title: "Travel Adventures #{blog}",
body: "In this post, I'll share my recent travel adventures to different parts of the world. From exploring the hidden gems of Bali to hiking the Inca trail in Peru, I've had some unforgettable experiences that I can't wait to share with you. Join me on this journey and let's discover the world together!"
)
end

puts "10 blog posts created"

Skill.create!(title: "Ruby on Rails", percent_utilized: 80)
Skill.create!(title: "React", percent_utilized: 60)
Skill.create!(title: "JavaScript", percent_utilized: 70)
Skill.create!(title: "Python", percent_utilized: 50)
Skill.create!(title: "AWS", percent_utilized: 90)

puts "5 skills created"

Portfolio.create!(
title: "E-commerce Platform",
subtitle: "Online shopping made easy",
body: "This e-commerce platform is built using Ruby on Rails and allows users to easily browse and purchase products online. It includes features such as shopping carts, payment processing, and order tracking.",
main_image: "https://source.unsplash.com/collection/542909/",
thumb_image: "https://source.unsplash.com/collection/542909/200x200"
)

Portfolio.create!(
title: "Travel Blog",
subtitle: "Documenting my travel experiences",
body: "This travel blog is built using WordPress and features articles, photos, and videos of my travel adventures around the world. It includes a responsive design for optimal viewing on all devices.",
main_image: "https://source.unsplash.com/collection/220381/",
thumb_image: "https://source.unsplash.com/collection/220381/200x200"
)

Portfolio.create!(
title: "Fitness Tracker",
subtitle: "Track your fitness goals",
body: "This fitness tracker is built using React and allows users to set fitness goals, track their progress, and view their stats over time. It includes features such as workout plans, nutrition tracking, and social sharing.",
main_image: "https://source.unsplash.com/collection/1429813/",
thumb_image: "https://source.unsplash.com/collection/1429813/200x200"
)

Portfolio.create!(
title: "Chat App",
subtitle: "Real-time messaging made easy",
body: "This chat app is built using Node.js and allows users to communicate with each other in real-time. It includes features such as private messaging, group chats, and file sharing.",
main_image: "https://source.unsplash.com/collection/1015373/",
thumb_image: "https://source.unsplash.com/collection/1015373/200x200"
)

Portfolio.create!(
title: "Restaurant Finder",
subtitle: "Discover new dining experiences",
body: "This restaurant finder is built using Python and allows users to discover new dining experiences based on their location, cuisine preferences, and other criteria. It includes features such as reviews, ratings, and recommendations.",
main_image: "https://source.unsplash.com/collection/1803891/",
thumb_image: "https://source.unsplash.com/collection/1803891/200x200"
)

puts "5 portfolio items created"
