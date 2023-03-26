class CreateFeatureResources < ActiveRecord::Migration[7.0]
  def change
    create_table :feature_resources do |t|
      t.references :feature, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true
      t.boolean :value, default: true

      t.timestamps
    end
  end
end
