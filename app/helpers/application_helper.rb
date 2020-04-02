module ApplicationHelper
  def current_user
    OpenStruct.new(id: 'user1-jer-test')
  end
end
