class Main inherits IO {
    main(): IO {
        let hello: String <- "Hello ",
            world: String <- "World!",
            new_line: String <- "\n"
        in 
            out_string(hello.concat(world.concat(new_line)))
    };
};