class Login::User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :ldap_authenticatable,:registerable,:rememberable,:trackable
end
