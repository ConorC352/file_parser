require "test_helper"

class ParserTest < Minitest::Test

  def test_lab_results_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab_results.txt')
    assert_equal parser.mapped_results.first.class, LabResultParser::LabortoryTestResult
    assert_equal 'OBX', parser.mapped_results.first.prefix
    assert_equal '1', parser.mapped_results.first.id
    assert_equal 'C100', parser.mapped_results.first.code
    assert_equal '20.0', parser.mapped_results.first.result
  end
  
  def test_lab_1_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab1.txt')
    assert_equal parser.mapped_results.first.class, LabResultParser::LabortoryTestResult
    assert_equal 'OBX', parser.mapped_results.first.prefix
    assert_equal '1', parser.mapped_results.first.id
    assert_equal 'C100', parser.mapped_results.first.code
    assert_equal '20.0', parser.mapped_results.first.result
    assert_equal 'NTE', parser.mapped_results[1].prefix
    assert_equal '1', parser.mapped_results[1].id
  end

  def test_lab_2_txt
    parser = LabResultParser::Parser.new('test/fixtures/lab2.txt')
    assert_equal parser.mapped_results.first.class, LabResultParser::LabortoryTestResult
    assert_equal 'OBX', parser.mapped_results.first.prefix
    assert_equal '1', parser.mapped_results.first.id
    assert_equal 'A250', parser.mapped_results.first.code
    assert_equal 'NEGATIVE', parser.mapped_results.first.result
  end
end