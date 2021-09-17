class RegistrationsController < Devise::RegistrationsController
    #this method overwrites the signup and account_update params shipped with devise
    #to accept the name attribute the we add recently to the migration table
    
    private

    def signup_params
        params.require(:user).permit( :name,
                                      :email,
                                      :password,
                                      :password_confirmation)
    end
    def account_update_params
        params.require(:user).permit(:name,
                                     :email,
                                     :password,
                                     :password_confirmation)
    end
end
