function freqplot(freqs)
alphabet = cell(1, 26);

for i = 'A':'Z'
  alphabet{i - 64} = char(i);
end

bar(freqs);
set(gca, 'XTickLabel', alphabet, 'XTick', 1:numel(alphabet));
end
