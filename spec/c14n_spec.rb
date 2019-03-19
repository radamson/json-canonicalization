require_relative 'spec_helper'

describe "conversions" do
  Dir.glob(File.expand_path("../input/*.json", __FILE__)).each do |input|
    it "converts #{input.split('/').last}" do
      expected = File.read(input.sub('input', 'output'))
      data = JSON.parse(File.read(input))
      expect(data.to_json_c14n).to eq expected
    end
  end
end
