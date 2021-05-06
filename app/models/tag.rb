class Tag < ApplicationRecord
    has_many :gossiips, through: :gossip_tags
end
