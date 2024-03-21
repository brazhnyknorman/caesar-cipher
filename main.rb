# chr() - ascii to character
# ord - string to ascii

def caesar_cipher(string, number = 1)
  # Set iterations = to 0
  # Define string length and index count
  i = 0
  string_length = string.length
  string_indices = string_length - 1

  # Iterates through all indices of the message
  while i < string_length
    # Execute if character is between a-z or A-Z
    if string[i].ord.between?(65,122) == true      
      new_string = string[i].ord
      new_string += number

      if string[i] == string[i].upcase 
        if new_string > 90
          new_string -= 26
        end
      elsif string[i] == string[i].downcase
        if new_string > 122
          new_string -= 26
        end
      end

      # Converts new_string to a string, and sets the message to the ciphered code
      new_string = new_string.chr().to_s
      string[i] = new_string
    end

    # Update the iterator and reset the new_string
    i += 1
    new_string = 0
    
  end
  
  return string
  
end

print (caesar_cipher("Hello Sam. I have found Zxy!", 2))

