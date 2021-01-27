module type BoardSig = sig
  type value = Machine | Human | Blank
  exception InvalidTuple
  exception InvalidLoc
  exception InvalidLine

  module Micro : sig 
  type microgame 
  type t 
  val blank : t 

  val checkwin : microgame -> value -> value 

  val update : t -> value -> int -> t 
end

module Macro : sig 
  type e 
  type macro
  type t 
  val blank : t 

  val checkwin : macro -> value -> value 

  val update : t -> value -> int -> int -> t 

  val pretty_print : t -> unit
end
end

module BoardCheck : BoardSig = Board

module type MainSig = sig
  val main : unit -> unit
end

module MainCheck : MainSig = Main
