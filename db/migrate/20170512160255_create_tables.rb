class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |s|
      s.column(:name, :string)
  end
    create_table(:shoes) do |s|
      s.column(:name, :string)
      s.column(:brand, :string)
    end
  end
end
