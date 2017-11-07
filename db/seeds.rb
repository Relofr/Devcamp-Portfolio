User.create!(
  email: 'admin@admin.com',
  name: 'Site Admin',
  password: 'asdfasdf', 
  password_confirmation: 'asdfasdf',
  roles: 'site_admin'
  )

puts "1 Admin user created"

User.create!(
  email: "regular@regular.com",
  name: "Regular User",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
)

puts "1 regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )

end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "random body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15

    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "random portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom" ,
    main_image: "http://via.placeholder.com/600x400" ,
    thumb_image: "http://via.placeholder.com/350x200" ,

  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "random portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom portfolio body textrandom" ,
    main_image: "http://via.placeholder.com/600x400" ,
    thumb_image: "http://via.placeholder.com/350x200" ,
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
    )
  end

puts "3 Technologies created"