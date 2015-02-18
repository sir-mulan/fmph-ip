function str = vigenere(str, shift)
shift = mod(shift, 26);

j = 1;
for i = 1:length(str)
  if (~isLetter(str(i)))
    continue;
  else
    str(i) = shiftAlphabet(str(i), shift(j));
    j = j + 1;
  end
  if (j > length(shift))
    j = 1;
  end
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

function res = isLetter(char)
if ((char >= 'A' && char <= 'Z') || (char >= 'a' && char <= 'z'))
  res = true;
else
  res = false;
end
end
