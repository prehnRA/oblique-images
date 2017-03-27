require 'rubygems'
require 'active_support/core_ext/string'
require 'imgkit'
require 'yaml'

def make_oblique(name, oblique)
  html = <<-HTML
  <!doctype html>
  <html class="no-js" lang="">
      <head>
          <meta charset="utf-8">
          <style>
            html {
              height: 576px;
              width: 1024px;
              background: black;
            }
            body {
              align-items: center;
              display: flex;
              background: black;
              color: white;
              font-family: Helvetica;
              font-weight: bold;
              font-size: 72px;
              width: 1024px;
            }
            p {
              flex: 1;
              text-align: center;
              -webkit-transform: translateY(-50%);
              transform: translateY(-50%);
              top: 50%;
              margin: 0 auto;
              width: 952px;
              max-width: 100%;
              position: fixed;
            }
          </style>
      </head>
      <body>
          <p>#{oblique}</p>
      </body>
  </html>
  HTML

  kit = IMGKit.new(html, :quality => 50)
  file = kit.to_file("./build/#{name}.jpg")
end

obliques = YAML.load_file('obliques.yaml')
obliques.each do |oblique|
  make_oblique(oblique.parameterize, oblique)
end
