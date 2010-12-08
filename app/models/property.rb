class Property < ActiveRecord::Base
  acts_as_solr :fields => [:name,{:name_s=>:string},
                          :description, :area, :no_of_bathrooms, :no_of_bedrooms, :created_at, :updated_at]
  
  def name_s
    self.name  
  end
end
