class FavoriteMailer < ApplicationMailer
   default from: "iloveburningman@gmail.com"
   def new_comment(user, post, comment)

   # #18
       headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
       headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
       headers["References"] = "<post/#{post.id}@your-app-name.example>"

       @user = user
       @post = post
       @comment = comment

   # #19
       mail(to: user.email, subject: "New comment on #{post.title}")
       #is this how I add another e-mail
       mail(to: example@email.com, subject: "New comment on #{post.title}" )
     end
     def new_post(post)
       headers["Message-ID"] = "<post/#{post.id}@your-app-name.example>"
       headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
       headers["References"] = "<post/#{post.id}@your-app-name.example>"
       @post =post
       mail(to: post.user.email, subject: "You are following #{post.title}.")
     end

end
