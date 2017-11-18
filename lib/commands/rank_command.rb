require_relative 'command'

class RankCommand < Command

  def execute(event, args)
    server_emojis = @bot.servers[238975753969074177].emoji

    emojis = emojis = [
      373471020255936512, 280064661255356416, 277877297774854144, 366584524542312449,
      300944484521213952, 362598667527389186, 278171206094553089, 363654935369482241,
      292633985132134401, 278266325023981568
    ].map { |id| server_emojis[id] }

    message = event.channel.send_embed do |embed|
      embed.title = 'Rangs 💡'
      embed.description = 'Vous pouvez cliquer sur les réactions des rôles pour vous les ajouter ! :smile:'
      embed.colour = 8413087
    end

    emojis.each do |emoji|
      message.create_reaction(emoji.to_reaction)
    end
  end

end
