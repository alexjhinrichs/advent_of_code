#!/usr/bin/env ruby

input1 = <<-TEXT
Time:        44     70     70     80
Distance:   283   1134   1134   1491
TEXT

input2 = <<-TEXT
Time:        44     70     70     80
Distance:   283   1134   1134   1491
TEXT

def part1(input)
    race_times = []
    race_distances = []
    ways_to_beat = []
    times = input.split("\n").first.scan(/\d+/) { |n| race_times.push(n.to_i) }
    distances = input.split("\n").last.scan(/\d+/) { |n| race_distances.push(n.to_i) }
    race_times.each do |t|
        count = 0
            (0..t).to_a.each do |hold|
                if (hold * (t - hold)) > race_distances[race_times.index(t)]
                    count = count + 1
                end
            end
        ways_to_beat.push(count)
    end
    p ways_to_beat.inject(:*)
end

def part2(input)
    race_times = []
    race_distances = []
    ways_to_beat = []
    time = input.split("\n").first.scan(/\d/).join('').to_i
    distance = input.split("\n").last.scan(/\d+/).join('').to_i
    count = 0
    (0..time).to_a.each do |hold|
        if (hold * (time - hold)) > distance
            count = count + 1
        end
    end
    p count
end

part1(input1)

part2(input2)
