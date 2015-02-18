function [res, shift] = guessvigenere(str, freqs, n)
shift = zeros(1,n);
letters = str(ismember(str, char(65:90)) | ismember(str, char(97:122)));

for i = 1:n
  [~, shift(i)] = guesscaesar(letters(i:n:end), freqs);
end

res = vigenere(str, shift);
end
