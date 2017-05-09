module UsersHelper
  def has_posts? 
    current_user.posts.count != 0
  end
end
