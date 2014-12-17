module PropertiesHelper


  def display_unit_info(units)
    # show page
    html = "<table><thead><tr><th>Unit Type</th><th>Unit Size</th><th>Unit Price*</th></tr></thead><tbody>"
    units.each do |u|
      html += "<tr>"
      html += "<td>#{u[0]}</td><td>#{u[2]}</td><td>#{number_to_currency(u[1], :unit => "", :precision => 0)}</td>"
      html += "</tr>"
    end
    html += "</tbody></table>"
    html
  end
end
