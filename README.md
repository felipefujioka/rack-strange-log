# rack-strange-log

I'm using Docker for this example, if you are familiar with it, just run:

```
cd rack-strange-log
docker build -t lab .
docker run --name lab-container -it lab
```

If you are not familiar with it, you can run locally running:

```
cd rack-strange-log
bundle install
bundle exec unicorn -d
```

# SUBJECT

When I run this lab, I get the following in stdout:

```
{:unicorn_options=>{:listeners=>[]},
 :app=>
  #<Proc:0x0055799ae5b960@/usr/local/bundle/gems/unicorn-5.1.0/lib/unicorn.rb:51 (lambda)>,
 :daemonize=>false}
I, [2016-10-27T20:53:06.785909 #5]  INFO -- : listening on addr=0.0.0.0:8080 fd=9
I, [2016-10-27T20:53:06.786041 #5]  INFO -- : worker=0 spawning...
I, [2016-10-27T20:53:06.786838 #5]  INFO -- : master process ready
I, [2016-10-27T20:53:06.788852 #7]  INFO -- : worker=0 spawned pid=7
I, [2016-10-27T20:53:06.789129 #7]  INFO -- : Refreshing Gem list
Exception `LoadError' at /usr/local/bundle/gems/sinatra-1.4.7/lib/sinatra/show_exceptions.rb:2 - cannot load such file -- rack/show_exceptions
{:inner_app=>Main}
I, [2016-10-27T20:53:06.974392 #7]  INFO -- : worker=0 ready
```

My problem is with the line 

`{:inner_app=>Main}` that apparently prints all my rack stack, and it is annoying since it prints some instance variables 
values such as private URLs (in another project).
