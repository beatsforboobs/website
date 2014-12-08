namespace :tribute_wall do
  def contents(filename)
    recipients = []

    File.open(filename).each_line do |line|
      next unless line =~ /\S/
      line.gsub!(/^\s*|\s*$/, '')
      recipients << line
    end

    recipients.sort.uniq
  end

  def to_markdown(contents, cols = 4)
    markdown = []
    rows = ((contents.length + cols - 1) / cols).to_i

    markdown << ('col | ' * cols).strip
    markdown << ('--------- | ' * cols).strip
    (0..rows).each do |n|
      people = []
      (0..cols).each do |col|
        people << contents[rows * col + n]
      end
      markdown << people.join(' | ').strip
    end

    markdown.join("\n")
  end

  desc 'generate the tribute wall page'
  task :generate do
    in_honor_of = contents 'data/in-honor-of.txt'
    in_memory_of = contents 'data/in-memory-of.txt'

    File.open('content/content/tribute-wall.md', 'w') do |io|
      io.puts <<EOF
---
title: "Tribute Wall"
tags: ["tribute-wall"]
---
# Tribute Wall

If you have attended or supported one of our events and would like to recognize someone you love on our tribute wall, please email [info@beats4boobs.org](mailto:info@beats4boobs.org) and indicate "in honor" or "in memory."

## IN HONOR OF:

#{to_markdown in_honor_of}

_________________________

## IN MEMORY OF:

#{to_markdown in_memory_of}


EOF
    end
  end
end