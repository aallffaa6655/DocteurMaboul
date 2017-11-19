class Commands

  def initialize(bot)
    @bot = bot

    info
    poll
  end

  def poll
    @bot.command :poll do |event|
      event.channel.start_typing
      question = event.content.sub('?poll', '').strip
      event.message.delete

      choices = {'Oui' => '✅', 'Non' => '❌', 'Indécis' => '🤔'}

      # Send the poll embed
      message = event.channel.send_embed do |embed|
        embed.title = "#{question} 📣"
        embed.colour = 16771337
        embed.author = Discordrb::Webhooks::EmbedAuthor.new(
          name: event.author.display_name,
          icon_url: event.author.avatar_url
        )
        embed.description = choices.to_a.map{ |choice| choice * ' '} * "\n"
      end

      choices.each do |_, emoji|
        message.create_reaction emoji
      end

      nil
    end
  end

  def info
    @bot.command :info do |event|
      # Start typing and delete the message
      event.channel.start_typing
      event.message.delete

      # Send the information embed
      event.channel.send_embed do |embed|
        embed.title = 'Informations 💡'
        embed.colour = 16771337
        embed.description = 'Je suis développé en Ruby <:ruby:373471020255936512> et open-source. Si vous voulez proposer un changement sur moi, contactez un Pilier de la commuanuté. 😁'
        embed.add_field(name: '?info', value: 'Affiche ce message.')
        embed.add_field(name: '?poll Question', value: 'Pose une question.')
      end
    end
  end

end
