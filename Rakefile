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

  def to_markdown(contents, cols, clazz)
    markdown = []
    rows = ((contents.length + cols - 1) / cols).to_i

    markdown << "<div class=\"tribute-wall clearfix #{clazz}\">"
    (0..cols).each do |col|
      markdown << '<ul class="section">'
      (0..rows).each do |n|
        person = contents[rows * col + n]
        next if person.nil?
        markdown << "<li>#{contents[rows * col + n]}</li>"
      end
      markdown << '</ul>'
    end
    markdown << '</div>'

    markdown.join("\n")
  end

  desc 'generate the tribute wall page'
  task :generate do
    in_honor_of  = contents 'data/in-honor-of.txt'
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

#{to_markdown in_honor_of, 4, 'desktop'}
#{to_markdown in_honor_of, 2, 'mobile'}

_________________________

## IN MEMORY OF:

#{to_markdown in_memory_of, 4, 'desktop'}
#{to_markdown in_memory_of, 2, 'mobile'}


EOF
    end
  end
end