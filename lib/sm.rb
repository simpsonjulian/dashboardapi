# System Manager section of the Meraki Dashboard API
# @author Craig Ulliott
module SM
  # List the devices enrolled in an SM network with various specified fields and filters
  # @param [String] network_id network that you want to get devices for
  # @param [String] fields Additional fields that will be displayed for each device. Multiple 
  #   fields can be passed in as comma separated values. The default fields are: id, name, tags, 
  #   ssid, wifiMac, osName, systemModel, uuid, and serialNumber. The additional fields are: ip, 
  #   systemType, availableDeviceCapacity, kioskAppName, biosVersion, lastConnected, missingAppsCount, 
  #   userSuppliedAddress, location, lastUser, publicIp, phoneNumber, diskInfoJson, deviceCapacity, 
  #   isManaged, hadMdm, isSupervised, meid, imei, iccid, simCarrierNetwork, cellularDataUsed, isHotspotEnabled, 
  #   createdAt, batteryEstCharge, quarantined, avName, avRunning, asName, fwName, isRooted, loginRequired, 
  #   screenLockEnabled, screenLockDelay, autoLoginDisabled, hasMdm, hasDesktopAgent, diskEncryptionEnabled, 
  #   hardwareEncryptionCaps, and passCodeLock.
  # @param [String] wifiMacs Filter devices by wifi mac(s). Multiple wifi macs can be passed in as comma separated values.
  # @param [String] serials Filter devices by serial(s). Multiple serials can be passed in as comma separated values.
  # @param [String] ids Filter devices by id(s). Multiple ids can be passed in as comma separated values.
  # @param [String] scope Specify a scope (one of withAny, withAll, withoutAny, or withoutAll) and a set of tags as comma separated values.
  # @param [String] batchToken On networks with more than 1000 devices, the device list will be limited to 1000 
  #   devices per query. If there are more devices to be seen, a batch token will be returned as a part of the device 
  #   list. To see the remainder of the devices, pass in the batchToken as a parameter in the next request. Requests made 
  #   with the batchToken do not require additional parameters as the batchToken includes the parameters passed in with the 
  #   original request. Additional parameters passed in with the batchToken will be ignored.
  # @return [Array] array of hashes containing device information for matching devices in the network
  def list_sm_devices_in_network(network_id, options)
    self.make_api_call("/networks/#{network_id}/sm/devices", 'GET', options)
  end

end
