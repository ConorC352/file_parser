module LabResultParser
  class LaboratoryTestResult
    attr_accessor :prefix, :id, :code, :result, :format, :comment

    def initialize(prefix:, id:, code:, result:, format:, comment:)
      @prefix = prefix
      @id = id
      @code = code
      @result = result
      @format = format
      @comment = comment
    end  
  end
end



