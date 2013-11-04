
class MyRackMiddleware
  def initialize(appl)
    @appl = appl
  end
  def call(env)
    start = Time.now
    status, headers, body = @appl.call(env) 
    stop = Time.now
    puts "Response Time: #{stop-start}" if env['PATH_INFO'] == '/debug=1'
    [status, headers, body]
  end
end

