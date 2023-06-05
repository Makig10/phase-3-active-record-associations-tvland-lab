class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
  
    def characters
      Character.where(show_id: id)
    end
  
    def network
      Network.find(network_id)
    end
  
    def actors_list
      actors.pluck(:full_name)
    end
end