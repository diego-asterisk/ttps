puts 'Good Year'
p 666
t = Time.local(2000, "jan", 1, 20, 15, 1)
puts ActiveSupport::TimeZone.new('America/New_York').local_to_utc(t)
puts Time.zone.local_to_utc(t)
