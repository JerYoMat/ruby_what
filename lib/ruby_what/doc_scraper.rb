require 'pry'

class RubyWhat::DocScraper

  @@ruby_version = "2.3.1"
  @@core_link = "https://ruby-doc.org/core-#{@@ruby_version}.html"



#Return an Array of all of the class names available for that version.
  def self.scrape_classes
    core_page = Nokogiri::HTML(open(@@core_link))
      core_page.xpath("//div [@id='class-index']/div[2]/p/a").each do |class_name|
        if !class_name.children.text.include?("::")
          class_names << class_name.text
        end
    binding.pry 
    end
    class_names
  end

end
