# This migration comes from bootsy (originally 20120628124845)
# frozen_string_literal: true
class CreateBootsyImageGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :bootsy_image_galleries do |t|
      t.references :bootsy_resource, polymorphic: true, index: { name: 'idx_bootsy_i\
mage_galleries'  }                                   
      t.timestamps
    end
  end
end
