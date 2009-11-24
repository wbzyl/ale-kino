module FilmyHelper
  def add_seans_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :seansy, :partial => 'seans', :object => Seans.new
    end
  end

  def fields_for_seans(seans, &block)
    prefix = seans.new_record? ? 'new' : 'existing'
    fields_for("film[#{prefix}_seans_attributes][]", seans, &block)
  end
end
