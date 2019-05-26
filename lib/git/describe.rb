require "git/describe/version"

module Git
  module Describe
    class Error < StandardError; end

    PATH = File.expand_path(File.join('..', 'describe'), __FILE__)

  end
end

%w{
    version
    git
}.each { |f| require File.join(Git::Describe::PATH, f) }
