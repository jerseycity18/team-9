require 'byebug'

def score(buddy, member)
  result = 0
  %i(zipcode interest communication availability ).each do |method|
    result += buddy[method] == member[method] ? 1 : 0
  end
  result
end

def find_matches
  members = Member.all
  buddies = Buddy.all
  hsh = {}
  buddies.each do |buddy|
    hsh[buddy.id] ||= {}
    members.each do |member|
      hsh[buddy.id][member.id] = score(buddy, member)
    end
  end
end

puts find_matches()
