class AlterLessonsAddRowOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :row_order, :integer # added column to lessons, 
    # add_column(table_name, column_name, type, options = {}) public
    add_index :lessons, :row_order
    # add_index(table_name, column_name, options = {})
  end
end
