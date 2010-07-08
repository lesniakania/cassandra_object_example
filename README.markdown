# Cassandra Object Example

example app using Apache Cassandra with Cassandra Object

## Requirements

* ruby 1.8.7 >= 0
* rubygems 1.3.7
* rails 3

## Dependencies

* bundler
* Apache Cassandra

## Configuration

* copy cassandra_object.yml.example to cassandra_object.yml
* `bundle install`

## Running

* run Cassandra by `apache-cassandra-dir/bin/cassandra -f`
* `bundle exec rails server`

## Examples

* blog is simple and finds only by id but there are specified indexes for post's title and username
* if you want to search by title type: `Post.find_all_by_title('some_post_title').first`
