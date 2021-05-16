describe Fastlane::Actions::BuildAppForSimulatorAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The build_app_for_simulator plugin is working!")

      Fastlane::Actions::BuildAppForSimulatorAction.run(nil)
    end
  end
end
