class Main {
    -- objects must be initialized
    i: IO <- new IO;
    main(): Int {
        -- multiple statements must be in a block
        -- block should not end with ;
        {
            i.out_string("Hello World\n");
            1;
        }
    };
};