# dato.config.rb

directory "_data/" do
  create_data_file "candidate.yml", :yaml,
                   first_name: dato.candidate.first_name,
                   last_name: dato.candidate.last_name,
                   bio: dato.candidate.bio,
                   office: dato.candidate.office,
                   photo: dato.candidate.photo.url

  create_data_file "homepage.yml", :yaml,
    call_to_action: dato.homepage.call_to_action
end
