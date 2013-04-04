require 'spec_helper'

describe Writegood::Duplicate do
  it 'finds duplicate words on the same line' do
    duplicate = Writegood::Duplicate.new('Many readers are not aware that the the')
    expect(duplicate).to be_violated
  end

  it 'finds duplicate words split over multiple lines' do
    duplicate = Writegood::Duplicate.new(multiline_string_with_duplicates)

    expect(duplicate).to be_violated
  end

  def multiline_string_with_duplicates
    <<-EOS
      Many readers are not aware that the
      the brain will automatically ignore
      a second instance of the word "the"
      when it starts a new line.
    EOS
  end
end
