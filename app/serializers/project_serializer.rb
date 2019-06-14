class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title
  has_many :tasks
end
