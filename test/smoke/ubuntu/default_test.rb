# # encoding: utf-8

# Inspec test for recipe the_silver_searcher::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
#

describe package('silversearcher-ag') do
  it { should be_installed }
end
