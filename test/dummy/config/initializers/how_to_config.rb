HowTo.configure do |config|
  #to enable rich text editor make the following line uncommented with the value true
  #HowTo uses mercury  <https://github.com/jejacks0n/mercury> for rich text editor
  #You have to install mercury to your application
  config.rich_text_enabled = true


  # You can override the layout name
  #
  #config.layout_name = 'application'


  #in your application controller:
  # def authorize_to_manage_how_to
  #  redirect_to :somewhere_else unless <condition>
  # end
  #
  #config.authorization_method_to_manage = :authorize_to_manage_how_to!
  #
  # if you want to set some permission to vew the how to then you can set a method name and define it as like  authorization_method_to_manage
  #
  #config.authorization_method_to_view = nil #nil allows everybody to vew the how lo page
  #config.permitted_to_manage_how_to = :permitted_to_manage_how_to?
end
