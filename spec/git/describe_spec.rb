RSpec.describe Git::Describe do

  it "has a version number" do
    expect(Git::Describe::VERSION).not_to be nil
  end

  it 'has a :git class method' do
    expect(Git::Describe.respond_to?(:git)).to be true
  end

  it 'has a :git class method that actually does its job' do
    expect(Git::Describe.git).to match(/^v[0-9]+\.[0-9]+.*\-[a-z0-9]+/)
  end

end
