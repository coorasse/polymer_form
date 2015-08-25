class PolymerFormBuilder < ActionView::Helpers::FormBuilder
  def paper_input(method, options = {})
    @template.send(
      "paper_input",
      @object_name,
      method,
      objectify_options(options))
  end

  def paper_textarea(method, options = {})
    @template.send(
      'paper_textarea',
      @object_name,
      method,
      objectify_options(options))
  end
end
