require 'discordrb'
require 'colorize'
require_relative 'commands'

# Exit if doesn't have requested size of args
abort 'Wrong size of args.'.red unless ARGV.size == 1

token = ARGV[0]
# Load discord bot
bot = Discordrb::Commands::CommandBot.new(token: token, prefix: '?')

puts 'The bot is loaded. For exit type CTRL + C'.green

# Load all bot commands
Commands.new(bot)

Kernel.at_exit { bot.stop }

bot.run
