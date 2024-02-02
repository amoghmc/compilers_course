(*
 *  CS164 Fall 94
 *
 *  Programming Assignment 1
 *    Implementation of a simple stack machine.
 *
 *  Skeleton file
 *)

class Main inherits IO {

   main() : Object {
      let i: String <- in_string() in {
         while (not (i = "x"))
         loop {
            out_string(i);
            i <- in_string();
         } pool;
         i; 
      }
   };

};
