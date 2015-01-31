class AddAttachmentImageToTranslations < ActiveRecord::Migration
  def self.up
    change_table :translations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :translations, :image
  end
end
