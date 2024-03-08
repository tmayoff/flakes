{
    description = "A collection of my custom nix flakes";

    outputs = { self } : {
        templates = {
            cmake = {
                path = ./cmake;
                description = "Flake template for cmake based C++ projects";
            };

            meson = {
                path = ./meson;
                description = "Flake template for meson based C++ projects";
            };

            rust = {
                path = ./rust;
                description = "Flake template for rust based projects";
            };

            ros = {
                path = ./ros;
                description = "Flake template for ROS projects";  
            };
        };
    };
}
