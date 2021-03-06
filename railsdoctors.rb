require 'rubygems'
require 'haml'
require 'sinatra'

get '/' do
  @title = "Railsdoctors - Welcome"
  @tagline = '<span class="o">&quot;</span>we help <span class="o">you</span><br/>get the most<br/>out of rails<span class="o">&quot;</span>'

  haml :index
end

get '/index.html' do
  @title = "Railsdoctors - Welcome"
  @tagline = '<span class="o">&quot;</span>we help <span class="o">you</span><br/>get the most<br/>out of rails<span class="o">&quot;</span>'

  haml :index
end

get '/blog.html' do
  @title = "Railsdoctors - Blog"
  @tagline = '<span class="o">&quot;</span>interesting<br/><span class="o">stuff</span><br/>gets put here<span class="o">&quot;</span>'
  @blog_items = [
    { :title => 'Request-Log-Analyzer 1.6.0 released',
      :date => '2010-01-12',
      :author => 'Willem',
      :content => 'Just released a new version of request-log-analyzer. It now supports logs created by Delayed::Job and PostgreSQL. Run <code>gem install request-log-analyzer</code> to install or update.'
    },
    { :title => 'RailsEnvy Podcast',
      :date => '2009-11-20',
      :author => 'Bart',
      :content => 'This is the first time we have ever mentioned it on the show. Listen to the <a href="http://railsenvy.com/2009/11/20/episode-101">Rails Envy Podcast here</a>.'
    },
    { :title => 'Request-Log-Analyzer 1.5.0 released',
      :date => '2009-11-18',
      :author => 'Willem',
      :content => 'We just released version 1.5.0 of request-log-analyzer. <a href="http://wiki.github.com/wvanbergen/request-log-analyzer/changelog">New features</a> include support for the MySQL slow query log, and autodetection of the current file format. Run <code>gem update request-log-analyzer</code> to upgrade to the new version.'
    },
    { :title => 'Request-Log-Analyzer talk at Ruby En Rails 2009',
      :date => '2009-10-31',
      :author => 'Bart',
      :content => 'Our <a href="http://2009.rubyenrails.nl/articles/24-tuning-your-rails-application-by-bart-ten-brinke?locale=nl">Ruby en Rails talk</a> about Tuning your Rails application was received very well. A lot of people found it interesting and I have talked to a lot of them during both days of the congres.'
    },
    { :title => 'MacRuby uses Request-Log-Analyzer',
      :date => '2009-10-30',
      :author => 'Bart',
      :content => 'During his talk at <a href="http://2009.rubyenrails.nl/">RubyEnRails</a> <a href="http://github.com/alloy">Eloy Duran</a> showed that they were using Request-Log-Analyzer as a testcase for MacRuby. Request-Log-Analyzer does a lot of regular expressions, complex calculations and disk I/O, which makes its a very good test application. He also said he might be making a multithreaded version for MacRuby to use all of his cores. Looking forward to your pull request Eloy!'
    },
    { :title => 'Scout now powered by Request-Log-Analyzer',
      :date => '2009-10-12',
      :author => 'Willem',
      :content => '<a href="http://scoutapp.com/">Scout</a> is now offering rails monitoring through the request-log-analyzer gem. Statistics from rla are gathered and passed on to scout through a <a href="http://scoutapp.com/plugin_urls/181-ruby-on-rails-monitoring">plugin</a>.'
    },
    { :title => 'Top 100 Github',
      :date => '2009-10-10',
      :author => 'Willem',
      :content => 'We have reached the top 100 watchers on github! Special thanks to the <a href="http://www.eppsteins.net/github/watchers.html">Github Project Watcher Throwdown</a>.'
    },
    { :title => 'Railsenvy podcast features Request-Log-Analyzer',
      :date => '2009-10-02',
      :author => 'Willem',
      :content => 'Jason from Railsenvy did an excelent podcast on request-log-analyzer. Listen to it at <a href="http://railsenvy.com/2009/10/02/episode-094">railsenvy</a>.'
    },
    { :title => 'Munin plugins for rails',
      :date => '2009-08-05',
      :author => 'Bart',
      :content => 'I have written a small set of scripts to effectively monitor rails apps through munin. The <a href="http://github.com/barttenbrinke/munin-plugins-rails/">code</a> and the <a href="http://barttenbrinke.github.com/munin-plugins-rails/">pictures</a> can be found on github.'
    },
    { :title => 'Lightning talk at Euruko',
      :date => '2009-05-10',
      :author => 'Bart',
      :content => '<a href="http://euruko2009.org/">Euruko 2009</a> was awesome. A lot of inspirational talks about cool ways of using the power of ruby. After showing some people Request-Log-Analyzer they got so excited, they got me to enter it as a lightning talk. See the result <a href="http://blip.tv/file/2599476">here</a>. Big thanks goes out to the organization!'
    },
  ]
  
  haml :blog
end

get '/performance.html' do
  @title = "Railsdoctors - Performance"
  @tagline = '<span class="o">&quot;</span>when<br/><span class="o">pretty fast</span><br/>is not enough<span class="o">&quot;</span>'

  haml :performance
end

get '/security.html' do
  @title = "Railsdoctors - Security"
  @tagline = '<span class="o">&quot;</span>dont get caught<br/>with your<br/><span class="o">pants down</span><span class="o">&quot;</span>'

  haml :security
end

get '/request_log_analyzer.html' do
  @title = "Railsdoctors - Request Log Analyzer"
  @tagline = '<span class="o">&quot;</span>because<br/><span class="o">knowledge</span><br/>equals power<span class="o">&quot;</span>'

  haml :request_log_analyzer
end

get '/contact.html' do
  @title = "Railsdoctors - Contact"
  @tagline = '<span class="o">&quot;</span>each journey <span class="o">starts</span> with<br/>a step<span class="o">&quot;</span>'

  haml :contact
end