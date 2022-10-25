require_relative 'parsing_anime_facts'


def create_table_anime_facts(anime, fact_id)
  file_html = File.new("lib/Generation_references/table.html", "w+")
  anime = Get_Anime()
  file_html.puts "<style type='text/css'>
                  .table {
	                    width: 100%;
	                    border: none;
	                    margin-bottom: 20px;
                  }
                  .table thead th {
	                    font-weight: bold;
	                    text-align: left;
	                    border: none;
	                    padding: 10px 15px;
	                    background: #d8d8d8;
	                    font-size: 14px;
                  }
                  .table thead tr th:first-child {
	                    border-radius: 8px 0 0 8px;
                  }
                  .table thead tr th:last-child {
	                    border-radius: 0 8px 8px 0;
                  }
                  .table tbody td {
	                    text-align: left;
	                    border: none;
	                    padding: 10px 15px;
	                    font-size: 14px;
	                    vertical-align: top;
                  }
                  .table tbody tr:nth-child(even){
	                    background: #f3f3f3;
                  }
                  .table tbody tr td:first-child {
	                    border-radius: 8px 0 0 8px;
                  }
                  .table tbody tr td:last-child {
	                    border-radius: 0 8px 8px 0;
                  }
                  </style>
                  <table class='table'>
                        <thead>
                            #{anime[:name]}
                            <tr>
                                <th>Anime</th>
                            </tr>
                        </thead>
                  <tbody>"

  anime_facts_information = Information_Of_Anime_Facts(anime, fact_id)
  anime_facts_information.each do |elem|
    file_html.puts "<tr>"
    file_html.puts "<th>"
    if elem[:name].nil?
      file_html.puts "<span style = 'font-size:20pt'> - </span>"
    else
      file_html.puts elem[:name]
    end
    file_html.puts "</th>"
    file_html.puts "<th>"
    if elem[:fact].nil?
      file_html.puts "<span style = 'font-size:20pt'> - </span>"
    else
      file_html.puts elem[:fact]
    end
    file_html.puts "</th>"
    file_html.puts "<th>"
  end
  file_html.puts "</tbody>
                  </table>"
  file_html.close
end

