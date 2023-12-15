#!/usr/bin/env ruby

input = File.read('input.txt')

def part1(input)
    input.split("\n").each do |line|
        array = line.split(" ").map { |l| l.to_i }
        diffs = [-1]
        last_nums = []
        until diffs.all? { |d| d == 0 }
            diffs = []
            last_nums.push(array.last)
            (1..array.length - 1).each do |i|
                diffs.push(array[i] - array[i - 1])
            end
            array = diffs
            p diffs
            p last_nums
        end
    end
end

part1(input)
