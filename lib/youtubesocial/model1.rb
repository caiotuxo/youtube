module Youtubesocial
  module Model
    
    class YoutubeModel
      include Mongoid::Document
      
      field :search_term
      field :account_name
      field :url
      field :category # Sports, Comedy, Travel....
      field :feed_id  #most_viewed, top_rated, most_recent.....
      field :priority, type: Integer
      field :area_id, type: Integer
      validates_uniqueness_of :area_id, :message => "area id ja existente"
      validates_presence_of :area_id, :message => "nao pode ser nulo"
    end
  
  end
end

