require 'beveragemaker/version'

module BeverageMaker
  class Error < StandardError; end
  # Your code goes here...

  autoload :Command,          'beveragemaker/command'
end

# module BeverageMaker
#   # require 'pathname'
#   # require 'claide'
#   # require 'colored2'

#   class PlainInformative < StandardError
#     include CLAide::InformativeError
#   end

#   # class Informative < PlainInformative
#   #   def message
#   #     super !~ /\[!\]/ ? "[!] #{super}\n".red : super
#   #   end
#   # end

  # autoload :Command,          'beveragemaker/command'
# end
