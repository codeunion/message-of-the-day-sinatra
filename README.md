# Message of The Day App (Sinatra)

The _Message of The Day_ application is meant to illustrate how a web
application can interact with files on the computer.  The initial version has
two features:

1.  Display the contents of [message-of-the-day.txt](message-of-the-day.txt)
    whenever a user visits `/message`.
2.  Select one of the lines at random from [quotes.txt](quotes.txt) whenever
    a user visits `/quote`.

## Running _Message of The Day_

### Install The Required Libraries

To install the libraries required for this application, first run the following
command:

```shell-session
$ bundle install
```

### Run The _Message of The Day_ App

Once you've installed the required libraries, run the following command:

```shell-session
$ ruby message_app.rb
```

To stop your application, press `Ctrl+c`.  That means press the "Control" key
and the "c" key at the same time.
