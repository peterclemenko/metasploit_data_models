module MsfModels::ActiveRecordModels::WebPage
  def self.included(base)
    base.class_eval{
      include Msf::DBManager::DBSave
      belongs_to :web_site
      serialize :headers, ::MsfModels::Base64Serializer.new
    }
  end
end

