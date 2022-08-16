# frozen_string_literal: true

EMPTY_FRONT_MATTER = <<~JEKYLL
  ---
  ---

JEKYLL

# Inject empty front matter in notes that don't have any
Jekyll::Hooks.register :site, :after_init do |site|
  Dir.glob(site.collections['notes'].relative_directory + '/**/*.md').each do |filename|
    raw_note_content = File.read(filename)
    unless raw_note_content.start_with?('---')
      raw_note_content.prepend(EMPTY_FRONT_MATTER)
      File.write(filename, raw_note_content)
    end
  end
end

# Remove empty front matter in session_includes
Jekyll::Hooks.register :site, :pre_render do |site|
  Dir.glob(site.collections['notes'].relative_directory + '/sessions/session_includes/**/*.md').each do |filename|
    raw_note_lines = File.readlines(filename)
    if raw_note_lines[0].start_with?('---') and raw_note_lines[1].start_with?('---') and raw_note_lines[2].start_with?("\n")
      raw_note_lines.shift()
      raw_note_lines.shift()
      raw_note_lines.shift()
    end
    File.write(filename, raw_note_lines.join(""))
  end
end
