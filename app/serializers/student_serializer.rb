class StudentSerializer < ActiveModel::Serializer
  require "date"
  attributes :id, :name, :recently_joined

  def recently_joined
      Date.today != object.created_at
  end
end
