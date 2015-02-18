function res = frequency(str)
res = zeros(1, 26);
str = upper(str);

for i = 1:length(str)
  if (str(i) >= 'A' && str(i) <= 'Z')
    res(str(i) - 64) = res(str(i) - 64) + 1;
  end
end

% Lines 3?9 can be replaced by
% res = histc(upper(str), 'A':'Z');

res = res ./ sum(res);
end
