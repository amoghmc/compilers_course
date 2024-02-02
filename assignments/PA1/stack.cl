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
   new_stack: List <- new List;
   first: String;
   sec: String;
   sum: String;

   main(): Object {
      {
         inp <- in_string();
         while (not (inp = "x"))
         loop {
            if inp = "d"
            then print_stack(stack)
            else if inp = "e"
            then stack <- eval_stack(stack)
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

   eval_stack(stack: List): List {
      if stack.isNil() 
      then stack
      else if stack.head() = "+"
      then {
         new_stack <- stack.tail().tail().tail();
         first <- stack.tail().head();
         sec <- stack.tail().tail().head();
         sum <- conv.i2a(conv.a2i(first) + conv.a2i(sec));
         new_stack <- new_stack.cons(sum);
         new_stack;
      }
      else if stack.head() = "s"
      then {
         new_stack <- stack.tail().tail().tail();
         first <- stack.tail().head();
         sec <- stack.tail().tail().head();
         new_stack <- new_stack.cons(first).cons(sec);
         new_stack;
      }
      else stack
      fi
      fi
      fi
   };

};


