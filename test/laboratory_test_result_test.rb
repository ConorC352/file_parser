require "test_helper"

class LaboratoryTestResultTest < Minitest::Test
  describe LabResultParser::LaboratoryTestResult do
    before do
      @lab_test_result = LabResultParser::LaboratoryTestResult.new(prefix: 'OBX', id: '1', code: 'C800', result: 'POSITIVE', format: 'boolean')
    end
  
    describe "lab test result attribute test" do
      it "should contain a prefix" do
        assert_equal "OBX", @lab_test_result.prefix
      end

      it "should contain an id" do
        assert_equal "1", @lab_test_result.id
      end

      it "should contain code attribute input" do
        assert_equal "C800", @lab_test_result.code
      end

      it "should contain result attribute input" do
        assert_equal "POSITIVE", @lab_test_result.result
      end

      it "should contain a format" do
        assert_equal "boolean", @lab_test_result.format
      end
    end
  end
end