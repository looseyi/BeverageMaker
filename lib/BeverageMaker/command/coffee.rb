module BeverageMaker
  # Unlike the Tea command, this command uses subcommands to specify the
  # flavor.
  #
  # Which one makes more sense is up to you.
  class Coffee < Command
    self.abstract_command = true

    self.summary = 'Drink brewed from roasted coffee beans'

    self.description = <<-DESC
      Coffee is a brewed beverage with a distinct aroma and flavor
      prepared from the roasted seeds of the Coffea plant.
    DESC

    def run
      super
      puts "* Grinding #{self.class.command} beans…"
      sleep 1
      puts '* Brewing coffee…'
      sleep 1
      puts '* Enjoy!'
    end

    class BlackEye < Coffee
      self.summary = 'A Black Eye is dripped coffee with a double shot of ' \
        'espresso'
    end

    class Affogato < Coffee
      self.summary = 'A coffee-based beverage (Italian for "drowned")'
    end

    class CaPheSuaDa < Coffee
      self.summary = 'A unique Vietnamese coffee recipe'
    end

    class RedTux < Coffee
      self.summary = 'A Zebra Mocha combined with raspberry flavoring'
    end
  end
end