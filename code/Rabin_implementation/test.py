
if __name__ == "__main__":
   con_string_1 = 'I have a pen'
   con_string_2 = 'I dont have a pen'
   con_string_3 = 'I can give my pen to you'

   to_check ='r2p0r2p0r3p0r2p0r2r2p0p0p0r2p0p0p0r3p0r2p0r2r2p0p0r3p0r2p0r2r2'
   test_string = 'p0'
  
   to_find_1 = 'pe'
   to_find_2 = 'dont'
   to_find_3 = 'give'

   if to_check.find(test_string) != -1 : #and con_string_2.find(to_find_3) != -1 and con_string_3.find(to_find_3) != -1:
      print("found")
   else:
      print("not found")

   
