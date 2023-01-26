class Album < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_many :album_artists
    has_many :artists, :through => :album_artists
    validates :name, presence: true
    validates_length_of :name, maximum: 100
    before_save(:titleize_album)

    scope :rock, -> { where(genre: "Rock") }

    private
    def titleize_album
        self.name = self.name.titleize
    end
end