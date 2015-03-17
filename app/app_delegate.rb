class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    PBPebbleCentral.setDebugLogsEnabled(true)
    PBPebbleCentral.defaultCentral.setAppUUID('bb05cc07-e2e1-4eb4-a7a6-1898421f6e4a')

    @watch = PBPebbleCentral.defaultCentral.lastConnectedWatch
    if @watch
      NSLog('Watch found ...')
      @watch.appMessagesLaunch(lambda do |watch, error|
        NSLog("appMessagesLaunch sent, %@, %@", watch, error)
      end)
    end

    NSLog('Moving on ...')

    true
  end
end
