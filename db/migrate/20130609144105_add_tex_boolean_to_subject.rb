class AddTexBooleanToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :tex, :boolean
  end
end
