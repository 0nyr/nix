# run: nix-instantiate --eval src/functions/main.nix | xargs echo -e

let
  pname = "pdfannots2json";
  version = "1.0.16";

  # a function that takes a set as input 
  # and returns a concatenation of two fields
  # WARN: exact field names are required
  function_test = set: 
    set.field_a + set.field_b;
in 
  function_test (with version; {
    field_a = "hello";
    field_b = "world (v${version})";
  })
