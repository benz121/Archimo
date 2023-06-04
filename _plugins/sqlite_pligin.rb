require 'sqlite3'

module Jekyll
  class SQLitePlugin < Liquid::Tag
    def initialize(tag_name, *args, tokens)
      super
      @args = args
    end

    def render(context)
      db_path = context.registers[:site].config['status_db_path']
      results = fetch_results(db_path)
      render_table(results)
    end

    private

    def fetch_results(db_path)
      db = SQLite3::Database.new(db_path)
      db.results_as_hash = true
      results = db.execute("SELECT * FROM onion_status")
      db.close
      results
    end

    def render_table(results)
      html = "<table>"
      html += "<thead><tr><th>Name</th><th>Address</th><th>Type</th><th>Version</th><th>Status</th><th>Last Checked</th></tr></thead>"
      html += "<tbody>"
      results.each do |row|
        html += "<tr>"
        html += "<td>#{row['name']}</td>"
        html += "<td>#{row['address']}</td>"
        html += "<td>#{row['type']}</td>"
        html += "<td>#{row['version']}</td>"
        html += "<td>#{row['status']}</td>"
        html += "<td>#{row['lastchecked']}</td>"
        html += "</tr>"
      end
      html += "</tbody></table>"
      html
    end
  end
end

Liquid::Template.register_tag('sql_fetch', Jekyll::SQLitePlugin)
