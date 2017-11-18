require 'discordrb'
require_relative 'commands/info_command'
require_relative 'commands/rank_command'

unless ARGV.size == 1
  puts 'Invalid args size'
  exit
end

bot = Discordrb::Bot.new(token: ARGV[0])

# Commands initialization
InfoCommand.new(bot, 'info')
RankCommand.new(bot, 'rank')

bot.run
