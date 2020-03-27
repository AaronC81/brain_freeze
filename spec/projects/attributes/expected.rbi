# typed: true

module A
  sig { returns(String) }
  attr_accessor :a

  sig { params(b: Integer).returns(Integer) }
  attr_writer :b

  sig { returns(T::Boolean) }
  attr_reader :c
end