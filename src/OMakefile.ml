install Program ".DEFAULT" [
  (* Target *)
  Name		"treematch";

  (* Sources *)
  Modules [
    "Constr";
    "Ident";
    (*"Infer";*)
    "Inline";
    "Lexer";
    "Node";
    "Options";
    "Parser";
    "Program";
    "SimpleBackend";
    "SpecialBackend";
    "Token";
    "Tree";
    "Treematch";
    "Typing";
  ];

  (* Library dependencies *)
  OCamlRequires [
    "baselib";
    "camlp4.fulllib";
    "sexplib.syntax";
  ];

  (* Camlp4 *)
  Flags [
    "constr.ml",	"-syntax camlp4o";
    "infer.ml",		"-syntax camlp4o";
    "program.ml",	"-syntax camlp4o";
    "simpleBackend.ml",	"-pp camlp4of";
    "specialBackend.ml","-pp camlp4of";
    "tree.ml",		"-syntax camlp4o";
  ];
]