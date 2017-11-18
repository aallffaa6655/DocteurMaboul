require 'discordrb'

unless ARGV.size == 1
  puts 'Invalid args size'
  exit
end

bot = Discordrb::Bot.new(token: ARGV[0])

bot.run
