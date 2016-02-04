module Serialize
  module Write
    extend Serialize

    def self.call(subject, form)
      serializer = serializer(subject, form)

      mode = :call
      assure_mode(serializer, mode)
      serializer.send mode, subject
    end

    def self.raw_data(instance)
      serializer_namespace = serializer_namespace(instance)
      serializer_namespace.write(instance)
    end

    def self.mode_constant_name
      :Write
    end
  end
end
