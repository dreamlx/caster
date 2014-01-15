module Api
  class RegistrationsController < Api::BaseController
    respond_to :json
    def create
      @user = User.new(params[:user])
      if user.save
        render :json=> { user: @user,:token=>@user.authentication_token, :state => 'ok'}
        return
      else
        warden.custom_failure!
        render :json=> {message: @user.errors, state: 'error'}
      end
    end
  end
end