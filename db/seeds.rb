Event.populate 5 do | e |
  e.name = Faker::Company.type
  e.location = Faker::Address.street_address

  Talk.populate 2 do | t |
    t.name = Faker::Company.industry
    t.event_id = e.id
  end

  Speaker.populate 4 do | s |
    s.first_name = Faker::Name.first_name
    s.last_name = Faker::Name.last_name
    s.birth_date = Faker::Date.between(from: '1941-01-01', to: '2003-12-31')
    s.event_id = e.id
  end
end

# TalkSpeakers.all.each do | ts |
#   ts.speakers = Speaker.all.limit(2)
#   ts.save
# end
