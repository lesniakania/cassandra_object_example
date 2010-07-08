class Base < CassandraObject::Base
  def to_key
    key.to_param.blank? ? nil : [key.to_param]
  end

  def persisted?
    !key.to_param.blank?
  end
end