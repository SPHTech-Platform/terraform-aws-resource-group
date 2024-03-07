# TO-DO: Add assertion for the number of resources generated from resource group.
mock_provider "aws" {
}

run "setup" {
  command = apply
  module {
    source = "./tests/setup/resources"
  }
}

run "validate" {
  command = apply

  module {
    source = "./examples/simple"
  }
}
