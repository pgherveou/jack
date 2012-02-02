TESTS = $(wildcard test/*.test.js) $(wildcard test/expectations/*.test.js) $(wildcard test/integration/*.test.js)
REPORTER = dot

test:
	@NODE_ENV=test ./node_modules/.bin/mocha \
		--reporter $(REPORTER) \
		$(TESTS)

.PHONY: test
