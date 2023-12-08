#!/usr/bin/env ruby

input1 = <<-TEXT
LLR

AAA = (BBB, BBB)
BBB = (AAA, ZZZ)
ZZZ = (ZZZ, ZZZ)
TEXT

def part1(input)
    directions = input.split("\n\n")[0]
    map = input.split("\n\n")[1].split("\n")
    nodes = {}
    map.each do |n|
        left = n.chars[7..9].join
        right = n.chars[12..14].join
       nodes[n[..2]] = {
        'L' => left,
        'R' => right
       }
    end
end

part1(input1)
