class Nomination < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search,
                  :against => [
                    :year,
                    :category,
                    :nominee,
                    :won?],
                      :using => {:tsearch => {:dictionary => "english"}
                  }

end
