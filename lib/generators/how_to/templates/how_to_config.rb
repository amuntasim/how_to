HowTo.configure do |config|
  #to enable rich text editor make the following line uncommented with the value true
  #HowTo uses mercury  <https://github.com/jejacks0n/mercury> for rich text editor
  #You have to install mercury to your application
  #config.rich_text_enabled = false

  #in your application controller:
  # def authorize_to_manage_how_to
  #  redirect_to :somewhere_else unless <condition>
  # end
  #
  #config.authorization_method_to_manage = :authorize_to_manage_how_to!
  #
  # if you want to set some permission to vew the how to then you can set a method name and define it as like  authorization_method_to_manage
  #  def allowed_to_view_how_to
  #    redirect_to main_app.root_path, :notice => t('notifications.admin_section_access_error') unless current_user
  #  end
  #config.authorization_method_to_view = nil #nil allows everybody to vew the how lo page

  #this method should return true/false
  #config.permitted_to_manage_how_to = :permitted_to_manage_how_to?
end
