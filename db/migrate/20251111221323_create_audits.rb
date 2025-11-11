class CreateAudits < ActiveRecord::Migration[7.1]
  def change
    create_table :audits do |t|
      t.string :title
      t.string :owner
      t.integer :status
      t.date :due_on
      t.text :details

      t.timestamps
    end
  end
end
