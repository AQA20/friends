# <%= render "devise/shared/error_messages", resource: resource %>

fields = [
  {
    name: 'email',
    type: :email_field,
    class_name: 'col-12 col-sm-8'
  },
  {
    name: 'password',
    type: :password_field,
    class_name: 'col-12'
  }
]

fields.each do |field|
  puts field[:name]
end
