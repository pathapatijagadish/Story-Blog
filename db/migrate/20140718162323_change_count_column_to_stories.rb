class ChangeCountColumnToStories < ActiveRecord::Migration
  def change  		
  	add_column :stories, :story_views, :integer , :default=>0
  end
end
