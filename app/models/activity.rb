class Activity < ActiveRecord::Base
  validates_uniqueness_of :name, { :case_sensitive => false }
  validates_uniqueness_of :tag, { :case_sensitive => false }
  validate :tag, presence => true
end
