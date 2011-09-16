class Candidate < User
  delegate :race, :religion, :marital_status, :dob, :work_pass_visa, :nationality, :birth_place, :permanent_resident, :to => :candidate_bio, :allow_nil => true
end