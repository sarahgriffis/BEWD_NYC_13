class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    auth_data = request.env['omniauth.auth']

    #binding.pry
    @user = User.find_or_create_by(email: auth_data[:info][:email]) do |user|
      user.first_name = auth_data[:info][:first_name]
      user.last_name = auth_data[:info][:last_name]
      user.industry = auth_data[:extra][:raw_info][:industry]
      user.job_title = auth_data[:extra][:raw_info][:headline]
      user.home_city = auth_data[:extra][:raw_info][:location][:name]

      user.linkedin_picture_url = auth_data[:info][:image]
      user.linkedin_token = auth_data[:credentials][:token]
      user.linkedin_public_profile_url = auth_data[:info][:urls][:public_profile]
    end

    sign_in @user
    redirect_to new_reservation_path
  end
end
