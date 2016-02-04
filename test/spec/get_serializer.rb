__END__
keep this


require_relative 'spec_init'

context "Serializer" do
  [:Write, :Read].each do |constant_name|
    test "Can be retrieved from the subject" do
      example = Serialize::Controls.example

      serializer_class = Serialize.const_get(constant_name)
      serializer = serializer_class.serializer(example, :some_serializer)

      assert(serializer == Serialize::Controls::Example::Serializer::SomeSerializer.const_get(constant_name))
    end
  end
end
