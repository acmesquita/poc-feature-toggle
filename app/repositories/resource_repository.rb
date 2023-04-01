class ResourceRepository
  def self.find_by_uid(uid)
    Resource.find_by(uid: uid)
  end
end