onstart{
  option_port = ["Port série:", "Débit:"]
  valeurs_standard = ["COM3", "115200"]
  liste_debit = ["", "4800|9600|14400|19200|28800|38400|57600|115200"]
  serialsettings = UI.inputbox(option_port, valeurs_standard, liste_debit, "Paramètres du port série:")

  if serialsettings != FALSE
    $comport = serialsettings[0]
    $baudrate = serialsettings[1].to_i

    begin
      @serial = Serial.new($comport, $baudrate)
    rescue RubySerial::Exception => e
      @serial.close if @serial
      MSketchyPhysics3::SketchyPhysicsClient.physicsReset
      UI.messagebox("Port série introuvable!")
    end
  else
    MSketchyPhysics3::SketchyPhysicsClient.physicsReset
  end
}

ontick{
  MSketchyPhysics3.closeControlPanel if frame == 1
  $serialdata = @serial.read(1024)
  x, y = $serialdata.split(",")
  $x = x.to_f
  $y = y.to_f
  logLine("port série: " + $comport.to_s)
  logLine("Débit en bauds: " + $baudrate.to_s)
  logLine("Données reçues: " + $serialdata.to_s)
  #logLine("")
  #logLine("Données Capteur A0: " + $x.to_s)
  #logLine("Données Capteur A1: " + $y.to_s)
  logLine("")
  logLine("")
  logLine("")
}

onend{
  @serial.close if @serial
}
