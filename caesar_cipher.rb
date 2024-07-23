def caesar_cipher(string, key)
    alph_downcase = ("a".."z").to_a
    alph_upcase = ("A".."Z").to_a
    result = ""
    string.each_char do |char|
      result += if alph_downcase.include?(char)
                  alph_downcase[(alph_downcase.index(char) + key) % 26]
                elsif alph_upcase.include?(char)
                  alph_upcase[(alph_upcase.index(char) + key) % 26]
                else
                  char
                end
    end
    result
end