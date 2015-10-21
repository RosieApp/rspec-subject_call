require 'rspec/matchers/pretty'

module RSpec
  module Matchers
    autoload :BuiltIn, 'rspec/matchers/built_in'
  end

  module SubjectCall
    module Matchers
      class ReturnValueMatcher < RSpec::Matchers::BuiltIn::Eq
        def matches?(subject)
          @actual = subject.call
        end

        def description
          "return #{expected.inspect}"
        end
      end
    end
  end

  module Matchers
    def return_value(expected)
      ::RSpec::SubjectCall::Matchers::ReturnValueMatcher.new(expected)
    end
  end
end
