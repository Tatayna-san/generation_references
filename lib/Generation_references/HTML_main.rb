def create_main_table()
  file_html = File.new('lib/Generation_references/HTML_table.html', 'w+')
  file_html.puts "<!DOCTYPE html>
  <html>
  <head>
    <title>Заголовок документа</title>
    <style>
      div1
      {
        width: 100%; /* Размеры */
        outline: '0';
        border: '0'; /* Белая рамка */
      }
      div2
      {
        border-radius: 30%;
      }
    </style>
  </head>
  <body>
  <div1>
  <p border='0'>
    <div2>
    <a href='HTML_table.html'><img src='../../images/logo.png' width=45% border='0' alt=''></a>
    </div2>
  </p>
  </div1>
</body>
</html>"
  file_html.close
end

#create_main_table()
