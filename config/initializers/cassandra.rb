module Config
  DATABASE = Yamler.load('config/cassandra_object.yml')
end

@connection = CassandraObject::Base.establish_connection(Config::DATABASE[Rails.env]['keyspace'])