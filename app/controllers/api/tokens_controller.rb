# coding: utf-8
module Api
  class TokensController < Api::BaseController
    skip_before_filter :verify_authenticity_token
    respond_to :json   # Since all requests sent should be in JSON
    before_filter :skip_trackable # To prevent every request being considered as a new sign-in see http://rdoc.info/github/plataformatec/devise/master/Devise/Models/TokenAuthenticatable

    def show
      @user=User.find_by_authentication_token(params[:id])
      if @user.nil?
        render :json=>{:state => 'error',:message=>"Invalid token."}
      else
       
        render :json=>{ :state => 'ok', :token=>@user.authentication_token, :user=>@user }
      end
    end

    def create
    # Grab the required params
      email = params[:email]
      password = params[:password]
      #if request.format != :json  # Ensure the request is JSON   
          #render :status=>406, :json=>{:message=>"The request must be json"}
          #return
      #end

      if email.nil? or password.nil?  # Ensure that both email and password are not nil
         render :json=>{:state => 'error', :message=>"The request must contain the user email and password."}
         return
      end

      @user=User.find_by_email(email.downcase) #Find the User
      if @user.nil? # If user does not exist
        render :json=>{:message=>"Invalid email or passoword.", :state => 'error'}
        return
      end

      @user.ensure_authentication_token! #Generates a new token for the user
      if not @user.valid_password?(password) # Check the password
        render :json=>{:state => 'error', :message=>"Invalid email or password."}

      else
        render :json=> {:state => 'ok', :token=>@user.authentication_token, :user=>@user}
        #Return the token back to the user{:token=>@user.authentication_token}
        @user.save # Save the token into the database
      end
    end

    def destroy
      @user=User.find_by_authentication_token(params[:id])
      if @user.nil?
        render :json=>{ state: 'error', message: "Invalid token."}
      else
        @user.reset_authentication_token!
        render :json=>{state: 'ok', token: params[:id], message: 'Token was deleted' }
      end
    end



    private
    def skip_trackable
      request.env['devise.skip_trackable'] = true
    end
  end
end