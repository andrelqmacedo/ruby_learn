module FileManagement
  # file_management/csv/reader.rb
  module CSV
    class Reader
      # Class that deals with reading CSV files
    end
  end

  # file_management/excel/reader.rb
  module Excel
    class Reader
      # Class that deals with reading Excel files
    end
  end

end

# To have access to a class nestled in a module inside another module, we're using the double colon syntax (::) just like
# when we declared a constant, like Pi number.

p FileManagement::CSV.class

p FileManagement::CSV::Reader.new
p FileManagement::Excel::Reader.new
