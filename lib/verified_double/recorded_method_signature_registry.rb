module VerifiedDouble
  class RecordedMethodSignatureRegistry < Array
    def add_method_signature(a_double, method)
      simple_double = SimpleDouble.new(a_double)

      self << RecordedMethodSignature.new(
        class_name: simple_double.class_name,
        method_operator: simple_double.method_operator,
        method: method.to_s,
        stack_frame: StackFrame.new(caller(0).detect{|line| line =~ /_spec\.rb/ }))
    end
  end
end