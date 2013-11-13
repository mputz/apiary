# encoding: US-ASCII
#!/usr/bin/ruby
require 'iconv'
def inplace_edit(file, bak, &block)
    old_stdout = $stdout
    argf = ARGF.clone

    argf.argv.replace [file]
    argf.inplace_mode = bak
    argf.lines do |line|
        yield line
    end

    $stdout = old_stdout
end

string = "eigenen Schiffskapazität auch den Vor- oder Nachlauf "
puts Iconv.iconv('utf-8', 'US-ASCII', string).first
# doc = open("./to_be_converted.txt")
# doc.rewind
# data = Hpricot(Iconv.conv('utf-8', "US-ASCII", doc.readlines.join("\n")))