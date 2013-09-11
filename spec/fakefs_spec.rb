require 'spec_helper'

describe 'fakefs' do
  it 'tests csv' do
    require 'csv'
    FakeFS do
      File.open('a.csv', 'w') do |csv|
        csv << ['a', 'b', 'c']
      end
      File.should exist('a.csv')
    end
  end
end
