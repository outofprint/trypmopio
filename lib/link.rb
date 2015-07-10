require 'hashids'

class Link < Sequel::Model
  MIN_HASH_LENGTH = 2

  class << self
    attr_reader :hashids

    def find_by_hashid(hashid)
      first(id: hashids.decode(hashid))
    end
  end

  def hashid
    self.class.hashids.encode(id)
  end

  @hashids = Hashids.new(App.salt, MIN_HASH_LENGTH)
end
