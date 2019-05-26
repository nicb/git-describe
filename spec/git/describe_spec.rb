RSpec.describe Git::Describe do

  it "has a version number" do
    expect(Git::Describe::VERSION).not_to be nil
  end

  it 'has a :git class method' do
    expect(Git::Describe.respond_to?(:git)).to be true
  end

  it 'has a :git class method that actually does its job' do
    expect(Git::Describe.git).to match(/^v[0-9]+\.[0-9]+.*[^\n]/)
  end

  it 'will return an empty string if it is not inside a git repository' do
    #
    # this is actually quite tricky to be testes especially in continuous
    # integration environments like travis-ci & the like. (It requires to be
    # tested +outside+ of a repository but the code is actually in a
    # repository, so the only trick could be to change to an upper directory and
    # check, but this is tricky in a chrooted environment)
    #
    skip('This cannot be easily tested with regression tests')
  end

end
