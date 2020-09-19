def caesar_cipher(string, shift)
  capital_l = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  small_l = capital_l.map &:downcase
  array=string.split("")
  array.each_with_index do |l,i|
    if capital_l.include? l
      array[i] = capital_l[(capital_l.index(l)+shift) % 26]
    elsif small_l.include? l
      array[i] = small_l[(small_l.index(l)+shift) % 26]
    end
  end
  return array.join("")
end


print caesar_cipher("What a string!", 5)