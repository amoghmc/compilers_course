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
    a: List_Node <- new List_Node; 
    b: List_Node <- new List_Node;
    c: List_Node <- new List_Node;
    main(): IO {
        let hello: String <- "Hello ",
            world: String <- "World!",
            new_line: String <- "\n",
            nil: List_Node,
            list: List_Node <- a.init(hello, b.init(world, c.init(new_line, nil)))
        in 
            out_string(list.flatten())
    };
};