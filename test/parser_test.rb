require "test_helper"

class ParserTest < Minitest::Test

  def test_lab_results_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab_results.txt')
    assert_equal parser.mapped_results.first.class, LabResultParser::LaboratoryTestResult
    assert_equal 'OBX', parser.mapped_results.first.prefix
    assert_equal '1', parser.mapped_results.first.id
    assert_equal 'C100', parser.mapped_results.first.code
    assert_equal '20.0', parser.mapped_results.first.result
  end
  
  def test_lab_1_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab1.txt')
    assert_equal parser.mapped_results.first.class, LabResultParser::LaboratoryTestResult
    assert_equal 'OBX', parser.mapped_results.first.prefix
    assert_equal '1', parser.mapped_results.first.id
    assert_equal 'C100', parser.mapped_results.first.code
    assert_equal '20.0', parser.mapped_results.first.result
    assert_equal 'NTE', parser.mapped_results[1].prefix
    assert_equal '1', parser.mapped_results[1].id
  end

  def test_lab_2_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab2.txt')
    assert_equal parser.mapped_results.first.class, LabResultParser::LaboratoryTestResult
    assert_equal 'OBX', parser.mapped_results.first.prefix
    assert_equal '1', parser.mapped_results.first.id
    assert_equal 'A250', parser.mapped_results.first.code
    assert_equal 'NEGATIVE', parser.mapped_results.first.result
  end

  def test_lab_comments_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab_comments.txt')
    assert_equal parser.comments_mapped_results.first.class, LabResultParser::LaboratoryTestComment
    assert_equal 'NTE', parser.comments_mapped_results.first.prefix
    assert_equal '1', parser.comments_mapped_results.first.laboratory_test_result_id
    assert_equal 'Comment for C100 result', parser.comments_mapped_results.first.comment
    assert_equal 'NTE', parser.comments_mapped_results[3].prefix
    assert_equal '4', parser.comments_mapped_results[3].laboratory_test_result_id
    assert_equal 'Comment 1 for -2.0 result', parser.comments_mapped_results[3].comment
  end
end