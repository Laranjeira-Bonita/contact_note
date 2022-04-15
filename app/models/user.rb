class User < ApplicationRecord
    has_many :contacts
    before_save :encrypt_reset_password_token
    after_find :decrypt_reset_password_token


    def encrypt_reset_password_token
        begin
          self.reset_password_token = EncryptionService.new.encrypt_and_sign(reset_password_token)
        rescue StandardError => e
          puts "Couldn't encrypt reset_password_token: #{e}"
        end
      end
    
      def decrypt_reset_password_token
          begin
              self.reset_password_token = EncryptionService.new.decrypt_and_verify(reset_password_token.dup)
          rescue
              false
          end
      end
end
