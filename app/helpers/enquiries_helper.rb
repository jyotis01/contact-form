module EnquiriesHelper
  def current_page_params
    # Modify this list to whitelist url params for linking to the current page
    request.params.slice("locale")
  end
end
