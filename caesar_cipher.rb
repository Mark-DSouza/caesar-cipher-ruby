def caesar_cipher(string, shift)
  array = string.split("").map do |char|
    code = char.ord
    if (code >= "a".ord && code <= "z".ord)
      ("a".ord + ((code + shift - "a".ord) % 26)).chr
    elsif (code >= "A".ord && code <= "Z".ord)
      ("A".ord + ((code + shift - "A".ord) % 26)).chr
    else
      char
    end
  end
  array.join
end

puts caesar_cipher("What a string!", 5)
