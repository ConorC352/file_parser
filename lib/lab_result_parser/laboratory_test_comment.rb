module LabResultParser
  class LaboratoryTestComment
    attr_accessor :prefix, :laboratory_test_result_id, :comment

    def initialize(prefix:, laboratory_test_result_id:, comment:)
      @prefix = prefix
      @laboratory_test_comment_id = laboratory_test_result_id
      @comment = comment
    end  
  end
end