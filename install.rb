module Dandelion
  class Main
    def self.setup
      puts "1. Ubuntu or Debian"
      puts "2. Alpine"
      puts "What is ur distro?"
      distro = gets.chomp
      if distro == "ubuntu"
      puts "Installing dandelion..."
      	system("sudo apt install metacity dmenu polybar hsetroot latte-dock")
      	system("sudo mkdir /usr/share/dandelion")
	system("sudo mv ./dandelion.sh /usr/share/dandelion")
	system("sudo mv ./dandelion.desktop /usr/share/xsessions")
	system("chmod +x /usr/share/dandelion/dandelion.sh")
	system("sudo mv ./background.jpg /usr/share/dandelion/")
	puts "Dandelion installed with sucess!"
	end
      if distro == "alpine"
	puts "Run as sudo"
      	system("apk add metacity dmenu polybar hsetroot latte-dock")
      	system("mkdir /usr/share/dandelion")
	system("mv ./dandelion.sh /usr/share/dandelion")
	system("mv ./dandelion.desktop /usr/share/xsessions")
	system("chmod +x /usr/share/dandelion/dandelion.sh")
	system("sudo mv ./background.jpg /usr/share/dandelion/")
	puts "Dandelion installed with sucess!"
      end
    end
  end
  Main.setup
end
