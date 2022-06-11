# rack-mini-profiler https://github.com/MiniProfiler/rack-mini-profiler

if Rails.env.development?
  Rack::MiniProfiler.config.position = "bottom-left"
end
