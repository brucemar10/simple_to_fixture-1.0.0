require "simple_to_fixture/version"

module SimpleToFixture

  module YAMLFixtures
    def to_fixture(name)
      file_name = Rails.root.join("test/fixtures/#{self.class.table_name.downcase}.yml")
      File.open(file_name, 'a+') do |file|
        yaml = self.to_yaml
        yaml = yaml.split(/\n/)[2..-1]
        yaml.insert(0, "\r\n#{name.strip.downcase.gsub(/:|\*/, '').gsub(/\W/, '_')}:")
        file.write(yaml.join("\r\n")+"\r\n\r\n")
      end
      file_name
    end
  end
 
end
  

class ActiveRecord::Base
  include SimpleToFixture::YAMLFixtures
end  
 
