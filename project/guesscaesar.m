function [res, shift] = guesscaesar(str, freqs)
min = Inf;
shift = 0;
for i = 1:26
  error = sum((freqs - circshift(frequency(str), [1,i])).^2);
  if error < min
    min = error;
    shift = i;
  end
end
res = caesar(str, shift);
end
