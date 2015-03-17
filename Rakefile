# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Pebble'

  app.vendor_project('vendor/Pebble/PebbleVendor.framework', :static, :products => ['PebbleVendor'], :headers_dir => 'Headers')
  app.vendor_project('vendor/Pebble/PebbleKit.framework', :static, :products => ['PebbleKit'], :headers_dir => 'Headers')

  app.frameworks += %w(
    MessageUI
    CFNetwork
    CoreMotion
    CoreBluetooth
    ExternalAccessory
    CoreGraphics
    UIKit
    Foundation
  )

  app.libs << '/usr/lib/libz.dylib'

  app.info_plist['UISupportedExternalAccessoryProtocols'] = ['com.getpebble.public']
  app.info_plist['UIBackgroundModes'] = ['external-accessory']
end
