Riemann CLI
===========

Simple command-line tool that sends events to [Riemann](http://riemann.io) or queries it's index

    riemann-cli help [COMMAND]  # Describe available commands or one specific command
    riemann-cli query           # Queries the index
    riemann-cli send            # Sends a metric to Riemann


    Options:
          [--server=SERVER]  # Server address
                             # Default: localhost
          [--port=N]         # Riemann server port
                             # Default: 5555
          [--timeout=N]      # Connection timeout
                             # Default: 5
      -v, [--verbose]        


# riemann-cli send

Sends an event to Riemann

    Options:
          [--tcp]                      # Use TCP transport
          [--host=HOST]                # Host that produces the metric. Default is gethostbyname()
          [--service=SERVICE]          # Service that produced the event
          [--state=STATE]              # Service state
          [--time=N]                   # Time of the event in unix epoch seconds. Default is current time
          [--description=DESCRIPTION]  # Event description
          [--tags=one two three]       # List of tags
          [--metric=N]                 # Value of the metric
          [--ttl=N]                    # Floating-point number of seconds this event is considered valid for
          [--server=SERVER]            # Server address
                                       # Default: localhost
          [--port=N]                   # Riemann server port
                                       # Default: 5555
          [--timeout=N]                # Connection timeout
                                       # Default: 5
      -v, [--verbose]                  


# riemann-cli query

Queries the index. The output can be controlled by the `--format` argument. The format string can contain placeholders of the form `%{name}` which will be substituted with the corresponding value. By default, query returns everything contained in the index
    Options:
          [--string=STRING]  # Query string in Riemann query format
                             # Default: true
          [--format=FORMAT]  # Format string for the output
                             # Default: {host:"%{host}", service:"%{service}", state:"%{state}", time:%{time}, description:"%{description}", tags:%{tags}, metric_f:%{metric_f}, metric_d:%{metric_d}, metric_sint64:%{metric_sint64}, ttl:%{ttl}}
          [--server=SERVER]  # Server address
                             # Default: localhost
          [--port=N]         # Riemann server port
                             # Default: 5555
          [--timeout=N]      # Connection timeout
                             # Default: 5
      -v, [--verbose]
