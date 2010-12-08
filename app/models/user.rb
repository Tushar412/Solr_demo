class User < ActiveRecord::Base
  acts_as_solr :fields => [:name, :email, :nick_name]

end
