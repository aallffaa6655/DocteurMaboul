class Command

  def initialize(bot, command)
    @bot = bot
    @command = "?#{command}"

    command_called
  end

  # When the command is called
  def command_called
    @bot.message(start_with: @command) do |event|
      execute event
    end
  end

  # Execute action
  def execute(event)
    raise 'Not implemented'
  end

end
