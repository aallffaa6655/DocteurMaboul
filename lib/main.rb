require 'discordrb'
require_relative 'commands/info_command'

unless ARGV.size == 1
  puts 'Invalid args size'
  exit
end

bot = Discordrb::Bot.new(token: ARGV[0])
InfoCommand.new(bot, 'info')
bot.run
