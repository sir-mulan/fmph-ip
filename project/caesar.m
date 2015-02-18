function str = caesar(str, shift)
shift = mod(shift, 26);

for i = 1:length(str)
  str(i) = char(shiftAlphabet(str(i), shift));
end
end

function char = shiftAlphabet(char, shift)
if (char >= 'A' && char <= 'Z')
  char = char + shift;
  if (char > 'Z')
    char = char - 26;
  end
elseif (char >= 'a' && char <= 'z')
  char = char + shift;
  if (char > 'z')
    char = char - 26;
  end
end
end
