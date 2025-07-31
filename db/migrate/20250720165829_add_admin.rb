class AddAdmin < ActiveRecord::Migration[8.0]
  def change
    User.create! do |u|
      u.first_name = "John"
      u.last_name = "Doe"
      u.email = "admin@test.com"
      u.password = "180901"
      u.admin = true
    end
  end
end
