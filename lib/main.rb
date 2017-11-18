require 'discordrb'

unless ARGV.size == 1
  raise 'Wrong size of args.'
  exit
end

token = ARGV[0]
bot = Discordrb::Bot.new(token: token)

Kernel.at_exit { bot.stop }

bot.run
