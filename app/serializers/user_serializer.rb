class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :cash

  def id
    object.username
  end
end
