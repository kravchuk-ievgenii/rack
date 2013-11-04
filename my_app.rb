class MyApp
  def call(env)
    if env['PATH_INFO'] == '/hello' 
    [200, {"Content-Type" => "text/html"},[File.read('hello.html')]]
    else
    [200, {"Content-Type" => "text/html"},[File.read('index.html')]]
    end
  end
end



