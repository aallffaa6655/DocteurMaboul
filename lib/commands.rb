class Commands

  def initialize(bot)
    @bot = bot
  end

  def info
    @bot.command :info do |event|
      event.channel.send_embed do |embed|
        embed.title = 'Informations 💡'
        embed.colour = 16771337
        embed.description = 'Je suis développé en Ruby <:ruby:373471020255936512> et open-source. Si vous voulez proposer un changement sur moi, contactez un Pilier de la commuanuté. 😁'
      end
    end
  end

end
