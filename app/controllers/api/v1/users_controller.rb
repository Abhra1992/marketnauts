class Api::V1::UsersController < ApplicationController
  def authenticate
    auth = request.env['omniauth.auth']

    uid = auth['uid']
    username = auth['info']['nickname']
    name = auth['info']['name']
    avatar = auth['info']['image']

    user = User.find_or_create_by_uid(uid)
    user.username = username
    user.name = name
    user.avatar = avatar
    user.save

    sign_in user

    redirect_to '/'
  end

  def unauthenticate
    sign_out
    render json: true
  end
end
