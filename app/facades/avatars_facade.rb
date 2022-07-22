class AvatarsFacade
  def self.nation_members(keyword)
    members = AvatarsService.get_all_nation_members(keyword)

    members.map do |member|
      Avatar.new(member)
    end
  end
end
