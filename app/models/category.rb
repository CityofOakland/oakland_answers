class Category < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :access_count, :name, :description
  has_many :articles

  before_validation :set_access_count_if_nil

  friendly_id :name, use: [:slugged, :history]

  default_scope order('name ASC')
  scope :by_access_count, reorder('access_count DESC')

  private

  def hits
    self.access_count
  end

  def set_access_count_if_nil
    self.access_count = 0 if self.access_count.nil?
  end                                        
  
  def articles_by_access_count
    articles.by_access_count
  end

end
# == Schema Information
#
# Table name: categories
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  access_count :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  article_id   :integer
#  description  :text
#

