require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create a unique post
Post.find_or_create_by(
  title: "Unique post",
  body: "Unique post body"
)

# Create a unique comment
Comment.find_or_create_by(
  post: Post.find_by_title("Unique post"),
  body: "Unique comment"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
