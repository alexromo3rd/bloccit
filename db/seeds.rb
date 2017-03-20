require 'random_data'

# Unique Post
unique_post = Post.find_or_create_by(title: "Unique Title", body: "Unique Body")
unique_post.comments.find_or_create_by(body: "Comment Body")
# Create Posts
50.times do
	# #1
	Post.create!(
		# #2
		title: RandomData.random_sentence,
		body: RandomData.random_paragraph
	)
end
posts = Post.all

# Create Comments
# #3
100.times do
	Comment.create!(
		# #4
		post: posts.sample,
		body: RandomData.random_paragraph
	)
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
