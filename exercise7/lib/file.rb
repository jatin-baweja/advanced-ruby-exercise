class File
  def self.get_full_path(file_name)
    path = File.join(File.dirname($0), file_name)
  end
end