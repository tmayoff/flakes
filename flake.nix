{
    description = "A collection of my custom nix flakes";

    outputs = { self } : {
        templates = {
            opendds = {
                path = ./opendds;
                description = "Remote flake for working with OpenDDS";
            };

            rust = {
                path = ./rust;
                description = "Remote flake for working in rust";
            }
        };
    };
}
