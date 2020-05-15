class AddSeparatedToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :separated, :boolean
  end
end
