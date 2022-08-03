#Creating class sign_up

class Sign_up

 #Creating method inside class
   
   def cust_name

      puts "Enter your name :"
        @usr_name = gets.chomp()
        validation = /\A[a-zA-Z]+\z" "/

        if !(@usr_name =~ validation).nil?
            return @usr_name
         else
            puts "username is unvalid try again"
         end
   end

   def cust_num
      puts 'Enter your Contact Number : '
      @usr_contact = gets.chomp()
      validation = /^\d{10}$/

      if !(@usr_contact =~ validation). nil?
         return @usr_contact
      else
         puts "Contact Number is invalid try again"   
      end
   end 
   
   def cust_email
       puts 'Enter the email'
         @usr_email = gets.chomp
         validation = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

         if !(@usr_email =~ validation).nil?
            return @usr_email
         else
            puts 'Email is invalid try again'
         end
   end 

   def password
       puts "Enter your password"
         @usr_pass = gets.chomp()
         validation = /^[A-Za-z]\w{7,14}$@/

         if !(@usr_pass =~ validation).nil?
            return @usr_pass
         else
            puts "Password invalid try again"  
         end
   end    
end 
 
obj=Sign_up.new
obj.cust_name
obj.cust_num
obj.cust_email
obj.password


   