require 'spec_helper'


describe service('ambari-agent') do  
  it { should be_running   }
end 

describe service('ambari-server') do  
  it { should be_running   }
end 



