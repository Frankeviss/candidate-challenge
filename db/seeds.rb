require 'faker'

10.times do |candidate|
  Candidate.create(name: Faker::Name.name)
end

Candidate.all.each do |candidate|
  Task.create(title: 'test', candidate_id: [candidate.id], description: 'test description')
end