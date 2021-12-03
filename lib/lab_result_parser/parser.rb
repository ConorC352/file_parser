module LabResultParser
  class Parser
    attr_reader :file
    def initialize(file_path)
      @file = File.readlines(file_path)
    end
    
    def mapped_results
      @file.map do |line|
        result = line.split('|')
        @lab_test_result = LabResultParser::LaboratoryTestResult.new(prefix: result[0], id: result[1], code: result[2], result: result[3], format: result[4], comment: result[5])
      end
    end   
  end
end
