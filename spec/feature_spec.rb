describe Apron::Feature do
  subject { Apron::Feature.new(node) }
  let(:node) { { profiles: true } }

  describe "#enabled?" do
    context "when the attribute is enabled" do
      it "returns true" do
        expect(subject).to be_enabled(:profiles)
      end
    end

    context "when the attribute is not enabled" do
      it "returns false" do
        expect(subject).to_not be_enabled(:free_coffee)
      end
    end
  end
end
