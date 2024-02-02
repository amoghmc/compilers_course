class Main inherits A2I {
    -- compile using:
    -- coolc fact_itr.cl atoi.cl
    i: IO <- new IO;
    main(): IO {
        i.out_string(i2a(fact(a2i(i.in_string()))).concat("\n"))
    };

    fact(i: Int): Int {
        let res: Int <- 1 in {
            while (not (i = 0))
            loop {
                res <- res * i;
                i <- i - 1;
            } pool;
            res; 
        }
    };
};
