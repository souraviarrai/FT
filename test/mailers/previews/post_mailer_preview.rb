# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/post_created
  def post_created_preview
    PostMailer.with(user: @user, post: @post).post_created
  end

end
