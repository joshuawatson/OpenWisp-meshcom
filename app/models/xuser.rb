class Xuser < ActiveRecord::Base
  	
	belongs_to :user
	belongs_to :operator
	
	def downloadcnfg(cpe_id_model = self.inst_cpe_modello, cpe_username = self.inst_cpe_username, cpe_pwd = self.inst_cpe_password)
		cpe= CpeTemplate.find(cpe_id_model);
		
		file_name = cpe.name,".txt"
		t = Tempfile.new("tmp-cpe_configuration_file-#{Time.now}")
		t.write(cpe.template)
		t.write (cpe_username)
		t.write(cpe_pwd)
		t.close
	end
	
end
