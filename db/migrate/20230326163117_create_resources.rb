class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :uid
      t.references :feature_resources

      t.timestamps
    end
  end
end
