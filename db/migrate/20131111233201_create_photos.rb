class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.belongs_to :album
  		t.string :file
  		t.string :caption

  		t.timestamps
  	end
  end
end
