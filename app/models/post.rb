require 'base'
class Post < Base
  attribute :username,    :type => :string
  attribute :title,       :type => :string
  attribute :content,     :type => :string
  attribute :created_at,  :type => :time_with_zone

  validates_presence_of :username, :title

  key :uuid

  association :comments, :unique => false, :inverse_of => :post

  index :username, :reversed => false
  index :title, :reversed => false
end