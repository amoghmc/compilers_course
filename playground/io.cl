class Main {
    i: IO <- new IO;
    -- return type for print
    -- alternate return type: Object
    main(): IO {
        i.out_string("Hello World\n")
    };
};