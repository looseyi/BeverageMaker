module BeverageMaker
  require 'claide'
  require 'colored2'
  
  class Command < CLAide::Command

    require 'beveragemaker/command/coffee'
    require 'beveragemaker/command/tea'

    self.abstract_command = true
  
    self.description = 'Make delicious beverages from the comfort of your' \
      'terminal.'
  
    # This would normally default to `beverage-make`, based on the class’ name.
    self.command = 'beverage-maker'
  
    def self.options
      [
        ['--no-milk', 'Don’t add milk to the beverage'],
        ['--sweetener=[sugar|honey]', 'Use one of the available sweeteners'],
      ].concat(super)
    end
  
    def initialize(argv)
      @add_milk = argv.flag?('milk', true)
      @sweetener = argv.option('sweetener')
      super
    end
  
    def validate!
      super
      if @sweetener && !%w(sugar honey).include?(@sweetener)
        help! "`#{@sweetener}' is not a valid sweetener."
      end
    end
  
    def run
      puts '* Boiling water…'
      sleep 1
      if @add_milk
        puts '* Adding milk…'
        sleep 1
      end
      if @sweetener
        puts "* Adding #{@sweetener}…"
        sleep 1
      end
    end
  end
end