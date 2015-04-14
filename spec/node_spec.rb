describe Chef::Node do
  subject { Chef::Node.new }
  let(:attributes) { { rails_4: true, rbac: false } }

  before :each do
    subject.default_attrs = attributes
  end

  describe "#feature_enabled?" do
    context "when the feature is enabled on the node" do
      it 'returns true' do
        expect(subject.feature_enabled?(:rails_4)).to be_truthy
      end
    end

    context "when the feature is not enabled" do
      it 'returns false' do
        expect(subject.feature_enabled?(:rbac)).to be_falsey
      end
    end

    context "when the feature is unknown" do
      it 'returns false' do
        expect(subject.feature_enabled?(:oauth)).to be_falsey
      end
    end
  end
end
