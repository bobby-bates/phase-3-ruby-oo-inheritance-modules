require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Dancer
  # # lend this class all of the class methods of the MetaDancing module
  # extend MetaDancing
  # # Lend this class all of the instance methods of the Dance module
  # include Dance

  # Refactor:
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize name
    @name = name
  end
end