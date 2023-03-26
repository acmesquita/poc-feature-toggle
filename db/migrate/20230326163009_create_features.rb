class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.string :flag
      t.references :feature_resources

      t.timestamps
    end
  end
end
