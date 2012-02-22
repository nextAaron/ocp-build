(**************************************************************************)
(*                                                                        *)
(*    TypeRex OCaml Studio                                                *)
(*      Thomas Gazagnaire, Fabrice Le Fessant                             *)
(*                                                                        *)
(*    OCaml                                                               *)
(*      Xavier Leroy, projet Cristal, INRIA Rocquencourt                  *)
(*                                                                        *)
(*  Copyright 2011-2012 OCamlPro                                          *)
(*  Copyright 1996-2011 INRIA.                                            *)
(*  All rights reserved.  This file is distributed under the terms of     *)
(*  the GNU Public License version 3.0.                                   *)
(*                                                                        *)
(*  TypeRex is distributed in the hope that it will be useful,            *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU General Public License for more details.                          *)
(*                                                                        *)
(**************************************************************************)

module AST : sig
    
    module Asttypes : sig 
           val constant : Asttypes.constant -> V3112_types.Asttypes.constant
           val virtual_flag : Asttypes.virtual_flag -> V3112_types.Asttypes.virtual_flag
           val private_flag : Asttypes.private_flag -> V3112_types.Asttypes.private_flag
           val rec_flag : Asttypes.rec_flag -> V3112_types.Asttypes.rec_flag
           val mutable_flag : Asttypes.mutable_flag -> V3112_types.Asttypes.mutable_flag
           val direction_flag : Asttypes.direction_flag -> V3112_types.Asttypes.direction_flag
      end
      
(*      functor(S: sig end) -> sig end *)
  end

val output_intf_file :
  string -> string * (out_channel -> Parsetree.signature -> unit)
val output_impl_file : 
  string -> string * (out_channel -> Parsetree.structure -> unit)
  
 