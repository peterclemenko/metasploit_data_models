module MsfModels::ActiveRecordModels::WebForm
  def self.included(base)
    base.class_eval{
      include Msf::DBManager::DBSave
      belongs_to :web_site
      serialize :params, ::MsfModels::Base64Serializer.new
    }
  end
end

