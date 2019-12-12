class Examples::BaseController < ApplicationController
  TYPES = [:vertical]

  private

  def user_params
    params.require(:user).permit(
      :name, :email, :password, :avatar, :bio, :birthday,
      :language, :friends, :mood, :awake, :first_kiss, :active,
      :terms, :color, :pill, :choices, :fruit, :music,
      choices: [], fruit: [], music: []
    )
  end
end