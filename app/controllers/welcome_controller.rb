class WelcomeController < ApplicationController
  def index
    @popular_topics = Topic.reorder('posts_count DESC').limit(4)
    @top_posts = Post.reorder('rank DESC').limit(3)
    @recent_comments = Comment.order('created_at DESC').limit(2)
  end

  def faq
  end
end
