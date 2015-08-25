require 'polymer_form/polymer_helper'
require 'polymer_form/polymer_form_builder'
module PolymerForm
  class Railtie < Rails::Railtie
    initializer 'polymer_form.view_helpers' do
      ActionView::Base.send :include, PolymerHelper
    end
  end
end
