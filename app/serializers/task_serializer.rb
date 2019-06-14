class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :deadline, :order, :done
  belongs_to :project
end
