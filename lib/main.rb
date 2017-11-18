require 'discordrb'

unless ARGV.size == 1
  puts 'Invalid args size'
  exit
end

bot = Discordrb::Bot.new(token: ARGV[0])

message = bot.channel(381378777365741568).load_message(381399874119401472)
p message.reactions
bot.run
