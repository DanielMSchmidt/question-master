class AddTexBooleanToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :tex, :boolean
  end
end
