# A program that prints "hello world" 10 times in Nix
# run: nix-instantiate --eval src/hello_world/main.nix | xargs echo -e

let
  hello = "hello world\n";
  times = 10;

  # WARN: There is no loop in Nix, so we have to use recursion
  repeat = n: if n > 0 then hello + repeat (n - 1) else "";
in
  repeat times




