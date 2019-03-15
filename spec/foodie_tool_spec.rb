RSpec.describe FoodieTool do
  it "has a version number" do
    expect(FoodieTool::VERSION).not_to be nil
  end

  it "broccoli is gross" do
    expect(FoodieTool::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(FoodieTool::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(FoodieTool::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
