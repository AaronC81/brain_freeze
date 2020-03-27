# typed: strict

module A
  extend T::Sig
  
  sig { params(name: String).returns(String) }
  def self.greet(name)
    "Hello, #{name}"
  end

  sig { params(str: String).returns(T::Boolean) }
  def self.is_polite?(str)
    !str.include?("sup")
  end
end
