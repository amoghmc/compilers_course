class List_Node {
    item: String;
    next: List_Node;

    init(i: String, val: List_Node): List_Node {
        {
            item <- i;
            next <- val;
            self;
        }
    };

    flatten(): String {
        if (isvoid next)
        then item
        else item.concat(next.flatten())
        fi
    };
};

class Main inherits IO {
    
    main(): IO {
        let hello: String <- "Hello ",
            world: String <- "World!",
            new_line: String <- "\n",
            nil: List_Node,
            list: List_Node <- (new List_Node).init(hello, (new List_Node).init(world, (new List_Node).init(new_line, nil)))
        in 
            out_string(list.flatten())
    };
};