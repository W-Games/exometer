.PHONY: all clean compile test doc

all: compile

compile:
	rebar compile

clean:
	rebar clean
	rm doc/*.md doc/*.png doc/stylesheet.css

test:
	rebar eunit

edown_deps:
	rebar get-deps compile edown=true

doc: edown_deps
	rebar doc edown=true skip_deps=true