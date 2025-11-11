class CreateFindings < ActiveRecord::Migration[7.1]
  def change
    create_table :findings do |t|
      t.references :audit, null: false, foreign_key: true
      t.string :title
      t.integer :severity
      t.text :description
      t.text :remediation
      t.date :due_on
      t.integer :status

      t.timestamps
    end
  end
end
