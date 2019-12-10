module Strategy: {
  type t;
  let authenticateWithOptions: ('a, Express.Request.t) => unit;
  let authenticateWithOptionsWithOption: ('a, Express.Request.t, 'b) => unit;
};
module rec App: {
  module Framework: {
    type t;
    let initialize: App.Authenticator.t => (. unit) => 'a;
    let initialize1: App.Authenticator.t => (. 'c) => 'a;
    let initialize2: App.Authenticator.t => (. 'c, 'd) => 'a;
    let initialize3: App.Authenticator.t => (. 'c, 'd, 'e) => 'a;
    let initialize4: App.Authenticator.t => (. 'c, 'd, 'e, 'f) => 'a;
    let initialize5: App.Authenticator.t => (. 'c, 'd, 'c, 'd, 'e) => 'a;
    let initializeWithOptions: (App.Authenticator.t, 'b) => (. unit) => 'a;
    let initializeWithOptions1: (App.Authenticator.t, 'b) => (. 'c) => 'a;
    let initializeWithOptions2: (App.Authenticator.t, 'b) => (. 'c, 'd) => 'a;
    let initializeWithOptions3:
      (App.Authenticator.t, 'b) => (. 'c, 'd, 'e) => 'a;
    let initializeWithOptions4:
      (App.Authenticator.t, 'b) => (. 'c, 'd, 'e, 'f) => 'a;
    let initializeWithOptions5:
      (App.Authenticator.t, 'b) => (. 'c, 'd, 'c, 'd, 'e) => 'a;
    let authenticate:
      (App.Authenticator.t, string, unit => Express.complete) => (. unit) => 'a;
    let authenticate1:
      (App.Authenticator.t, string, 'e => Express.complete) => (. 'c) => 'a;
    let authenticate2:
      (App.Authenticator.t, string, ('e, 'f) => Express.complete) =>
      (. 'c, 'd) => 'a;
    let authenticate3:
      (App.Authenticator.t, string, ('c, 'd, 'e) => Express.complete) =>
      (. 'c, 'd, 'e) => 'a;
    let authenticate4:
      (App.Authenticator.t, string, ('c, 'd, 'e, 'f) => Express.complete) =>
      (. 'c, 'd, 'e, 'f) => 'a;
    let authenticate5:
      (
        App.Authenticator.t,
        string,
        ('c, 'd, 'c, 'd, 'e) => Express.complete
      ) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a;
    let authenticateWithOptions:
      (App.Authenticator.t, string, 'b, unit => Express.complete) =>
      (. unit) => 'a;
    let authenticateWithOptions1:
      (App.Authenticator.t, string, 'b, 'e => Express.complete) => (. 'c) => 'a;
    let authenticateWithOptions2:
      (App.Authenticator.t, string, 'b, ('e, 'f) => Express.complete) =>
      (. 'c, 'd) => 'a;
    let authenticateWithOptions3:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'e) => Express.complete) =>
      (. 'c, 'd, 'e) => 'a;
    let authenticateWithOptions4:
      (
        App.Authenticator.t,
        string,
        'b,
        ('c, 'd, 'e, 'f) => Express.complete
      ) =>
      (. 'c, 'd, 'e, 'f) => 'a;
    let authenticateWithOptions5:
      (
        App.Authenticator.t,
        string,
        'b,
        ('c, 'd, 'c, 'd, 'e) => Express.complete
      ) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a;
    let authorize:
      (App.Authenticator.t, string, unit => Express.complete) => (. unit) => 'a;
    let authorize1:
      (App.Authenticator.t, string, 'e => Express.complete) => (. 'c) => 'a;
    let authorize2:
      (App.Authenticator.t, string, ('e, 'f) => Express.complete) =>
      (. 'c, 'd) => 'a;
    let authorize3:
      (App.Authenticator.t, string, ('c, 'd, 'e) => Express.complete) =>
      (. 'c, 'd, 'e) => 'a;
    let authorize4:
      (App.Authenticator.t, string, ('c, 'd, 'e, 'f) => Express.complete) =>
      (. 'c, 'd, 'e, 'f) => 'a;
    let authorize5:
      (
        App.Authenticator.t,
        string,
        ('c, 'd, 'c, 'd, 'e) => Express.complete
      ) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a;
    let authorizeWithOptions:
      (App.Authenticator.t, string, 'b, unit => Express.complete) =>
      (. unit) => 'a;
    let authorizeWithOptions1:
      (App.Authenticator.t, string, 'b, 'e => Express.complete) => (. 'c) => 'a;
    let authorizeWithOptions2:
      (App.Authenticator.t, string, 'b, ('e, 'f) => Express.complete) =>
      (. 'c, 'd) => 'a;
    let authorizeWithOptions3:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'e) => Express.complete) =>
      (. 'c, 'd, 'e) => 'a;
    let authorizeWithOptions4:
      (
        App.Authenticator.t,
        string,
        'b,
        ('c, 'd, 'e, 'f) => Express.complete
      ) =>
      (. 'c, 'd, 'e, 'f) => 'a;
    let authorizeWithOptions5:
      (
        App.Authenticator.t,
        string,
        'b,
        ('c, 'd, 'c, 'd, 'e) => Express.complete
      ) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a;
  };
  module Authenticator: {
    type t;
    let make: unit => t;
    let use: (t, Strategy.t) => t;
    let useNamed: (t, string, Strategy.t) => t;
    let initialize: t => Express.Middleware.t;
    let initialize1: (t, {. "userProperty": string}) => Express.Middleware.t;
    let session: t => Express.Middleware.t;
    let session1: (t, {. "pauseStream": bool}) => Express.Middleware.t;
    let unuse: (t, string) => t;
    let framework: (t, App.Framework.t) => t;
    let authenticate: (t, string, unit => Express.complete) => 'a;
    let authenticate1: (t, string, 'a => Express.complete) => 'b;
    let authenticate2: (t, string, ('a, 'b) => Express.complete) => 'c;
    let authenticate3: (t, string, ('a, 'b, 'c) => Express.complete) => 'd;
    let authenticate4: (t, string, ('a, 'b, 'c, 'd) => Express.complete) => 'e;
    let authenticate5:
      (t, string, ('a, 'b, 'c, 'd, 'e) => Express.complete) => 'f;
    let authenticateWithOptions:
      (t, string, Js.t({..}), unit => Express.complete) => 'a;
    let authenticateWithOptions1:
      (t, string, Js.t({..}), 'a => Express.complete) => 'b;
    let authenticateWithOptions2:
      (t, string, Js.t({..}), ('a, 'b) => Express.complete) => 'c;
    let authenticateWithOptions3:
      (t, string, Js.t({..}), ('a, 'b, 'c) => Express.complete) => 'd;
    let authenticateWithOptions4:
      (t, string, Js.t({..}), ('a, 'b, 'c, 'd) => Express.complete) => 'e;
    let authenticateWithOptions5:
      (t, string, Js.t({..}), ('a, 'b, 'c, 'd, 'e) => Express.complete) => 'f;
    let serializeUser:
      (('a, ('b, ~id: 'c=?) => Express.complete) => Express.complete) => unit;
    let serializeRequestUser:
      (
        (Express.Request.t, 'b, ('c, ~id: 'd=?) => Express.complete) =>
        Express.complete
      ) =>
      unit;
    let deserializeUser:
      (('a, ('b, ~id: 'c=?) => Express.complete) => Express.complete) => unit;
    let deserializeRequestUser:
      (
        (Express.Request.t, 'b, ('c, ~id: 'd=?) => Express.complete) =>
        Express.complete
      ) =>
      unit;
    let transformAuthInfo:
      (('a, ('b, 'c) => Express.complete) => Express.complete) => unit;
  };
};
module GitlabStrategy: {
  type t = Strategy.t;
  let authenticateWithOptions: ('a, Express.Request.t) => unit;
  let authenticateWithOptionsWithOption: ('a, Express.Request.t, 'b) => unit;
  let make:
    (
      ~options: Js.t({..}),
      (string, string, 'a, unit => Express.complete) => Express.complete
    ) =>
    t;
};