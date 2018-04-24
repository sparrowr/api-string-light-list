class TaskSerializer < ActiveModel::Serializer
  attributes :id, :text, :condition
  has_one :user
end
