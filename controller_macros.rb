module ControllerMacros
  def login_user
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      @user = User.create email: "suporte@nudesign.com.br", password: "123456", password_confirmation: "123456"
      sign_in @user
    end
  end
end