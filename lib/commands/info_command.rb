require_relative 'command'

class InfoCommand < Command

  def execute(event, args)
    event.channel.send_embed do |embed|
      embed.title = 'Informations 💡'
      embed.description = 'Je suis un robot développé en Ruby, je permet de vous ajouter des rôles et plus encore par la suite. Si vous avez une suggestion, contactez un membre des Piliers de la communauté.'
      embed.colour = 8413087
    end
  end

end
