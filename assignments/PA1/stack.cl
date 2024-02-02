(*
 *  CS164 Fall 94
 *
 *  Programming Assignment 1
 *    Implementation of a simple stack machine.
 *
 *  Skeleton file
 *)

class Main inherits IO {

   inp: String;
   stack: List <- new List;
   conv: A2I <- new A2I;
   main(): Object {
      {
         inp <- in_string();
         while (not (inp = "x"))
         loop {
            if inp = "d"
            then print_stack(stack)
            else 
               if inp = "e"
               then out_string("eval")
               else stack <- stack.cons(inp)
               fi
            fi;
            inp <- in_string();
         }  pool;
         inp;
      } 
   };

   print_stack(stack: List): Object {
      if stack.isNil() 
      then out_string("\n")
      else {
         out_string(stack.head());
         out_string(" ");
         print_stack(stack.tail());
      }
      fi
   };

};


