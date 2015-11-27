require_relative 'spec_init'

describe "Get Raw Data from Serializer Before it's Converted" do
  specify "Ruby hash" do
    example = Serialize::Controls.example
    val = Serialize::Write.(example, :some_serializer, mode: :raw_data)

    assert(val == 'some raw data')
  end
end
