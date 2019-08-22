RSpec.describe HashArrayFlatten do
  it "has a version number" do
    expect(HashArrayFlatten::VERSION).not_to be nil
  end

  it "should do nothing with unnested hashes." do
    expect(HashArrayFlatten.visit({"a" => 1, "b" => 2}, nil)).to eq({"a" => 1, "b" => 2})
  end

  it "should flatten nested hash." do
    expect(HashArrayFlatten.visit({"a" => 1, "b" => {"bb" => 2}}, nil)).to eq({"a" => 1, "b.bb" => 2})
  end

  it "should flatten array converting index as key" do
    expect(HashArrayFlatten.visit({"a" => 1, "b" => [10, 20]}, nil)).to eq({"a" => 1, "b.0" => 10, "b.1" => 20})
  end
end
