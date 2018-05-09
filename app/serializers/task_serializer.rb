class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :priority, :due_date
end
