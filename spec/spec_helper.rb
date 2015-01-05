require 'base64'
require 'json'

RSpec.configure do |config|
  
  encoded_answers = "eyIxIjoiQ1JFQVRFIFRBQkxFIGNhdHM7IiwiMiI6IlNFTEVDVCAqIEZST00g\nY2F0czsiLCIzIjoiU0VMRUNUIENPVU5UKCopIEZST00gY2F0czsiLCI0Ijpb\nIlNFTEVDVCBuYW1lIEZST00gY2F0cyBXSEVSRSBpZCA9IDI7IiwiU0VMRUNU\nIG5hbWUgRlJPTSBjYXRzIFdIRVJFIGlkPTI7Il0sIjUiOlsiVVBEQVRFIGNh\ndHMgU0VUIGFnZSA9IDcgV0hFUkUgbmFtZSA9IFwiTWFydVwiIiwiVVBEQVRF\nIGNhdHMgU0VUIGFnZT03IFdIRVJFIG5hbWU9XCJNYXJ1XCIiXSwiNiI6IlNF\nTEVDVCAqIEZST00gY2F0cyBPUkRFUiBCWSBhZ2U7IiwiNyI6WyJERUxFVEUg\nRlJPTSBjYXRzIFdIRVJFIGlkID0gNDsiLCJERUxFVEUgRlJPTSBjYXRzIFdI\nRVJFIGlkPTQ7Il0sIjgiOiJEUk9QIFRBQkxFIGNhdHM7In0=\n"
  json = Base64.decode64(encoded_answers)
  answers = JSON.parse(json)

  answers.each_with_index do |index, ans|
    define_method("answer_#{index}") do 
      ans
    end
  end

end

def __
  raise 'Replace the underscore with your answer in "quotes"'
end
