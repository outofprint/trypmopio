require_relative 'helper'
require 'server'

describe Link do
  let(:link) { Link.create(url: 'foo') }

  before do
    Link.dataset.delete
  end

  it 'has a hashid' do
    link.hashid.wont_be_nil
  end

  it 'finds by hashid' do
    Link.find_by_hashid(link.hashid).wont_be_nil
  end

  it 'will not find if hashid is bad' do
    Link.find_by_hashid('bad').must_be_nil
  end
end
