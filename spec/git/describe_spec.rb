RSpec.describe Git::Describe do
  it "has a version number" do
    expect(Git::Describe::VERSION).not_to be nil
  end

end
