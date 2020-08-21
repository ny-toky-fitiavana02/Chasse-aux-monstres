require 'bundler'

Bundler.require

#Récupérer les propriétés des monstres larves  avec HTTParty
class Larves
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

  def monstre_larve
    File.open("./db/monstre_larve.json", 'w') do |file|
      file.write(@type)
    end
    puts "Les larves capturés ;)!"
  end
end

#Récupérer les propriétés des monstres des cavernes avec HTTParty
class Monstres_des_cavernes

  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def monstre_caverne
    File.open("./db/monstre_caverne.json", 'w') do |file|
      file.write(@type)
    end
    puts "Les monstres des cavernes aussi 8)"
  end
end

#Récupérer les propriétés des monstres des plaines herbeuses avec HTTParty
class Monstres_des_plaines

  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def monstre_plaine_herbeuse
    File.open("./db/monstre_plaine_herbeuse.json", 'w') do |file|
      file.write(@type)
    end
    puts "Les monstres des plaines herbeuses et enfin mission accomplit!!!"
  end
end
