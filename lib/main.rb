require 'discordrb'
require_relative 'commands'

unless ARGV.size == 1
  raise 'Wrong size of args.'
  exit
end

token = ARGV[0]
bot = Discordrb::Commands::CommandBot.new(token: token, prefix: '?')

commands = Commands.new(bot)
commands.info

Kernel.at_exit { bot.stop }

bot.run
