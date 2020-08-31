module BeverageMaker
  # This command uses an argument for the extra parameter, instead of
  # subcommands for each of the flavor.
  
  class Tea < Command
    self.summary = 'Drink based on cured leaves'

    self.description = <<-DESC
      An aromatic beverage commonly prepared by pouring boiling hot
      water over cured leaves of the Camellia sinensis plant.

      The following flavors are available: black, green, oolong, and white.
    DESC

    self.arguments = [
      CLAide::Argument.new('FLAVOR', true),
    ]

    def self.options
      [['--iced', 'the ice-tea version']].concat(super)
    end

    def initialize(argv)
      @flavor = argv.shift_argument
      @iced = argv.flag?('iced')
      super
    end

    def validate!
      super
      if @flavor.nil?
        help! 'A flavor argument is required.'
      end
      unless %w(black green oolong white).include?(@flavor)
        help! "`#{@flavor}' is not a valid flavor."
      end
    end

    def run
      super
      puts "* Infuse #{@flavor} tea…"
      sleep 1
      if @iced
        puts '* Cool off…'
        sleep 1
      end
      puts '* Enjoy!'
    end
  end
end