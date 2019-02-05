def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  puts ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  print cipher
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  puts "E".ord
  puts plaintext_chars.join
end
print ""

encode("theswiftfoxjumpedoverthelazydog", "secretkey") # should output upcase gibberish
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey") # should output theswiftfoxjumpedoverthelazydog
