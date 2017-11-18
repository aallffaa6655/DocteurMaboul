class Command

  def initialize(bot, command)
    @bot = bot
    @command = "?#{command}"

    command_called
  end

  # When the command is called
  def command_called
    @bot.message(start_with: @command) do |event|
      args = event.content.sub(@command, '').strip.split
      execute(event, args)
    end
  end

  # Execute action
  def execute(event, args)
    raise 'Not implemented'
  end

end
