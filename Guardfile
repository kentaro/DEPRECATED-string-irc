guard 'rspec', :version => 2, :all_after_pass => false, :all_on_start => false do
  watch(%r{spec/.+_spec\.rb$})
  watch(%r{lib/string/(.+)\.rb$}) {|m| "spec/string/#{m[1]}_spec.rb" }
end
