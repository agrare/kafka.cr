# kafka.cr
Crystal-lang wrapper for the 
[librdkafka](https://github.com/edenhill/librdkafka) C-library
[Apache Kafka](https://kafka.apache.org/) client.
Contributions welcome.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  kafka:
    github: philipp-classen/kafka.cr
```

## Usage

```crystal
require "kafka"
```

See examples in [kafka_examples](https://github.com/packetzero/kafka_examples.cr)

## Development

TODO: Write development instructions here

## Overview of other implementations

If you miss some features, please check out the others implementations that exist for Crystal:

* [maiha/kafka.cr](https://github.com/maiha/kafka.cr)
* [decioferreira/kafka.cr](https://github.com/decioferreira/kafka.cr)

Depending on your use case, one of them might have what you need. You can also open
an issue here, but I cannot promise to find the time to implement it.

Of course, pull requests to add missing features are always welcome.
As kafka.cr is a wrapper over librdkafka, the full functionality of the C library is available.
What it needs is to write the C bindings and expose it in Crystal.

## Contributing

1. Fork it ( https://github.com/packetzero/kafka.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [packetzero](https://github.com/packetzero) Alex Malone - creator
- [Philipp Claßen](https://github.com/philipp-classen) - maintainer
