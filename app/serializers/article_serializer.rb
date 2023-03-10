# frozen_string_literal: true

class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  # Bring the user data
  belongs_to :user
end
