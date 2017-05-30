class CreatePostTranslations < ActiveRecord::Migration[5.1]
 
def up
    Post.create_translation_table!({
   
  :biographie => :text,
  :comment => :text
        }, {
          :migrate_data => true
        })
      end 

 
    def down
    	Post.drop_translation_table! :migrate_data => true 
    	
  end
end


#   class Project < ActiveRecord::Base
#  translates :biographie, :comment
# end

#  def self.up
#     Project.create_translation_table! :biographie => :text, :comment => :text
#   end

#  def self.down
#     Project.drop_translation_table!
#   end
# end
