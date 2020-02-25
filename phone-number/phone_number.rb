class PhoneNumber 
    def self.clean phone_number
        clean_number = phone_number.gsub(/\D/, "").gsub(/^1/,"")
        return nil if( ("0".."1").include?(clean_number[0]))
        return clean_number if( ("2".."9").include?(clean_number[3]) && clean_number.length == 10 && clean_number[0] != 0..1 )
      end
end 