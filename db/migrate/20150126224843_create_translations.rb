class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :hanzi
      t.string :english
      t.references :list, index: true

      t.timestamps
    end
  end
end
