module LabResultParser
  class LaboratoryTestResult
    attr_accessor :prefix, :id, :code, :result, :format

    def initialize(prefix:, id:, code:, result:, format:)
      @prefix = prefix
      @id = id
      @code = code
      @result = result
      @format = format
    end  
  end
end



