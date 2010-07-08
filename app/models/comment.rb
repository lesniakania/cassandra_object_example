class Comment < CassandraObject::Base
  attribute :username,   :type => :string
  attribute :content,    :type => :text
  attribute :created_at, :type => :time_with_zone

  key :uuid

  association :post, :unique => true, :inverse_of => :comments
  
end