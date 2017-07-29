class FavoriteMailer < ApplicationMailer
  default from: "kara.a.flaherty@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@bloccit-karakarakaraff.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit-karakarakaraff.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@bloccit-karakarakaraff.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, bcc: "kara.a.flaherty@gmail.com", subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @post = post

    mail(to: post.user.email, subject: "You're following #{post.title}")
  end
end
