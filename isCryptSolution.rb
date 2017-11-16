def isCryptSolution(crypt, solution)
  
  decrypt = Array.new
  decrypted = Array.new
  
  #convert crypt words into an array of decrypted numbers
  crypt.each do |w|
    w.split("").each do |l|
      #puts l
      solution.each do |pair|
        #print pair
        #puts pair[1]
        #puts
        if l == pair[0] then
          decrypt.push(pair[1])
        end
      end
    end
    
    decrypted.push(decrypt.join)
    decrypt = Array.new
    #puts "END"
  end

  #print decrypted
  #puts decrypted[0]
  #puts decrypted[1]
  #puts decrypted[2]
  

  decrypted.each_with_index do |num,index|
     
    if decrypted[0].length > 1 then
      if num[0].to_i != 0 then
        next
      end
      
      if num[0].to_i == 0 then
        return false
      end
    else
      if decrypted[0].to_i == 0 && decrypted[1].to_i == 0 && decrypted[2].to_i == 0
      return true
    end
  end
    
  end



  
  if (decrypted[0].to_i + decrypted[1].to_i) == decrypted[2].to_i && decrypted[2][0].to_i != 0 then
    return true
  else
    return false
  end

  
end


#crypt = ["SEND", "MORE", "MONEY"]

#solution = [['O', '0'],['M', '1'],['Y', '2'],['E', '5'],['N', '6'],['D', '7'],['R', '8'],['S', '9']]

crypt = ["AA", "AA", "AA"]

solution = [["A","0"]]


#crypt = ["A", "A", "A"]

#solution =[["A","0"]]
 
isCryptSolution(crypt, solution)
      
