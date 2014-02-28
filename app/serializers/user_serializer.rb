class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar

  def id
    object.username
  end
end
