class HandyGenerators::EditLinksHelperGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates/edit_delete_links', __dir__)
  class_option :pundit, type: :boolean, default: true

  def generate
    generate_edit_delete_links_helper
    if options['pundit']
      generate_edit_delete_links_partial
    else
      generate_edit_delete_links_partial_without_pundit
    end
  end

  private 

  def generate_edit_delete_links_helper
    copy_file 'edit_delete_links_helper.template', 'app/helpers/edit_delete_links_helper.rb'
  end

  def generate_edit_delete_links_partial
    copy_file 'edit_delete_links_partial.template', 'app/views/shared/_edit_delete_links.html.erb'
  end

  def generate_edit_delete_links_partial_without_pundit
    copy_file 'edit_delete_links_partial_no_pundit.template', 'app/views/shared/_edit_delete_links.html.erb'
  end
end

