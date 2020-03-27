RSpec.describe 'projects' do
  # Iterate over all projects and dynamically run tests for them
  Dir["#{__dir__}/projects/*"].each do |project|
    it "correctly processes project #{project.split('/').last}" do
      Dir.chdir(project) do
        # Run Brain Freeze, showing output based on env
        out_hash = ENV['BRAIN_FREEZE_TEST_OUTPUT'] ? {} : { [:out, :err] => File::NULL }
        system("brain_freeze output.rbi", out_hash)

        # Compare strings
        actual_output = File.read("#{project}/output.rbi")
        expected_output = File.read("#{project}/expected.rbi")
        expect(expected_output).to eq(actual_output)
      end
    end
  end
end