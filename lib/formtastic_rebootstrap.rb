# encoding: utf-8
require 'formtastic_rebootstrap/engine' if defined?(::Rails)
require 'formtastic_rebootstrap/util'
require "formtastic_rebootstrap/helpers"
require "formtastic_rebootstrap/inputs"
require "formtastic_rebootstrap/actions"
require 'formtastic_rebootstrap/form_builder'
# require "action_view/helpers/text_field_date_helper"

module FormtasticRebootstrap
  extend ActiveSupport::Autoload

  # autoload :Helpers
  # autoload :HtmlAttributes
  # autoload :LocalizedString
  # autoload :Localizer
  # autoload :NamespacedClassFinder
  # autoload :InputClassFinder
  # autoload :ActionClassFinder
  # autoload :Deprecation

  # eager_autoload do
  #   autoload :I18n
  #   autoload :FormBuilder
  #   autoload :Inputs
  #   autoload :Actions
  #   autoload :Util
  # end

  # @private
  mattr_accessor :deprecation
  self.deprecation = Formtastic::Deprecation.new('4.0', 'Formtastic')

  if defined?(::Rails) && Util.deprecated_version_of_rails?
    deprecation.warn("Support for Rails < #{Util.minimum_version_of_rails} will be dropped")
  end

  # @public
  class UnknownInputError < NameError
  end

  # @private
  class UnknownActionError < NameError
  end

  # @private
  class PolymorphicInputWithoutCollectionError < ArgumentError
  end

  # @private
  class UnsupportedMethodForAction < ArgumentError
  end

  # @private
  class UnsupportedEnumCollection < NameError
  end

end
