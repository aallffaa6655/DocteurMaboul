class Command

  def initialize(bot, command)
    @bot = bot
    @command = "?#{command}"
  end

  # When the command is called
  def command_called
    @bot.message(start_with: @command) do |event|
      yield event
    end
  end

end
