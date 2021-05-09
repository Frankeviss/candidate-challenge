require 'faker'

10.times do |candidate|
  Candidate.create(name: Faker::Name.name)
end

