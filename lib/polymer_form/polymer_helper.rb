require 'polymer_form/action_view/helpers/tags/paper_input'
require 'polymer_form/action_view/helpers/tags/paper_textarea'

module PolymerHelper
  def paper_input(object_name, method, options = {})
    ActionView::Helpers::Tags::PaperInput.new(object_name, method, self, options).render
  end

  def paper_textarea(object_name, method, options = {})
    ActionView::Helpers::Tags::PaperTextarea.new(object_name, method, self, options).render
  end

  def polymer_form_for(object, *args, &block)
    options = args.extract_options!
    form_for(object, *(args << options.merge(builder: PolymerFormBuilder)), &block)
  end
end
