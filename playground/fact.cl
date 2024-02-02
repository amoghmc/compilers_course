class Main inherits A2I {
    -- compile using:
    -- coolc fact.cl atoi.cl
    i: IO <- new IO;
    main(): IO {
        i.out_string(i2a(fact(a2i(i.in_string()))).concat("\n"))
    };

    fact(i: Int): Int {
        if i = 0
        then 1
        else fact(i - 1) * i
        fi
    };
};

