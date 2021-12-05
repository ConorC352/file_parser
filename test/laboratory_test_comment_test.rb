require "test_helper"

class LaboratoryTestCommentTest < Minitest::Test

  describe LabResultParser::LaboratoryTestComment do
    before do
      @lab_test_comment = LabResultParser::LaboratoryTestComment.new(prefix: 'NTE', laboratory_test_result_id: '2', comment: 'Comment for C200 result')
    end
  
    describe "lab test comment attribute test" do

      it "should contain a prefix" do
        assert_equal "NTE", @lab_test_comment.prefix
      end

      it "should contain a laboratory_test_result_id" do
        assert_equal "2", @lab_test_comment.laboratory_test_result_id
      end

      it "should contain comment attribute input" do
        assert_equal "Comment for C200 result", @lab_test_comment.comment
      end
    end
  end
end