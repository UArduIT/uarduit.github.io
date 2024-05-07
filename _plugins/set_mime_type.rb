module Jekyll
  class SetMimeType < Generator
    def generate(site)
      site.static_files.each do |file|
        if File.extname(file.path).empty?
          file.data['mime_type'] = 'application/json'
        end
      end
    end
  end
end
