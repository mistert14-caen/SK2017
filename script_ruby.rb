"""
Ce script fonctionne avec un executable concu sous Lazarus pour le rendre invisible. 
Le script Lazarus gere la liaison serie et copie la valeur sur le presse papier.
On utilise donc une librairie Ruby clipboard qui utilise l'API win32 a cette fin.
Dans notre exemple on lance deux fois le test et on ne valide que lorsque les deux valeurs sont stables
La liaison serie doit encadrer les messages par un @ au debut et une # a la fin.
AUTEUR Sébastien TACK
"""

require "clipboard"
onStart {
  
  puts  "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
  
  $user = ENV["USER"] || ENV["USERNAME"]
  
  $port = "COM10"
  # "D:\\_cours\\ssi_snt_2nde\\SI\\sketchup\\SK 2017\\sources lazarus\\gestserial.exe"
  @cmd = "C:\\Users\\"+$user+"\\AppData\\Roaming\\SketchUp\\SketchUp 2017\\SketchUp\\Plugins\\mistert\\gestserial.exe"
  puts @cmd
}

onTick {
  
  Example::Clipboard.text = $port
  $test1 = %x["#{@cmd}"]
  $data1 = Example::Clipboard.text 
  $data1 = $data1.to_f
  
  
  Example::Clipboard.text = $port
  #$test2 = %x["D:\\_cours\\ssi_snt_2nde\\SI\\sketchup\\SK 2017\\sources lazarus\\gestserial.exe"]
  $test2 = %x["#{@cmd}"]
  $data2 = Example::Clipboard.text 
  $data2 = $data2.to_f
  
  if $data1 == $data2
    
        $filedata = $data1 *  100
        puts($filedata)
    
  end
  
  
    
}