class Category < ActiveRecord::Base

  belongs_to :restaurant
  has_many :menu_items

  has_many :sub_categories,
  :class_name => 'Category',
  :foreign_key => 'parent_category_id'

  belongs_to :parent_category,
             :class_name => 'Category',
             :foreign_key => 'parent_category_id'

  def children
    (menu_items + sub_categories).sort { |a,b| a.order <=> b.order }
  end

end
