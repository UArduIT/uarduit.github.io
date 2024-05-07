module SetMimeType
  class Generator < Jekyll::Generator
    def generate(site)
      site.static_files.each do |file|
        if File.extname(file.path).empty?
          file.data['Content-Type'] = 'application/json'
        end
      end
    end
  end
end
