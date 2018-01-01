class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :middleName, :lastName, :birthdate
end
