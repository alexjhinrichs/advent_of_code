input1 = <<-TEXT
467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..
TEXT

def part1(input)
    numbers = {}
    symbols = {}
    array = input.split("\n")
    row = array.each do |x, y|
        chars = x.chars
        chars.each_with_index do |c|
            next if c == '.'
            if c == '*' || c == '#' || c == '$' || c == '+'
                symbols["#{x.index(c)}:#{y}"] = c
                p x.index(c)
                p symbols
            end
        end
    end
    p symbols
end

part1(input1)
