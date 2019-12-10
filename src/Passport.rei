module Strategy: {
  type t;
  [@bs.send]
  external authenticateWithOptions: ('a, Express.Request.t) => unit =
    "autentitcate";
  [@bs.send]
  external authenticateWithOptionsWithOption:
    ('a, Express.Request.t, 'b) => unit =
    "autentitcate";
};
module rec App: {
  module Framework: {
    type t;
    [@bs.send]
    external initialize: App.Authenticator.t => (. unit) => 'a = "initialize";
    [@bs.send]
    external initialize1: App.Authenticator.t => (. 'e) => 'a = "initialize";
    [@bs.send]
    external initialize2: App.Authenticator.t => (. 'e, 'f) => 'a =
      "initialize";
    [@bs.send]
    external initialize3: App.Authenticator.t => (. 'e, 'f, 'g) => 'a =
      "initialize";
    [@bs.send]
    external initialize4: App.Authenticator.t => (. 'e, 'f, 'g, 'h) => 'a =
      "initialize";
    [@bs.send]
    external initialize5: App.Authenticator.t => (. 'e, 'f, 'g, 'h, 'i) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions: (App.Authenticator.t, 'd) => (. unit) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions1: (App.Authenticator.t, 'd) => (. 'e) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions2:
      (App.Authenticator.t, 'd) => (. 'e, 'f) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions3:
      (App.Authenticator.t, 'd) => (. 'e, 'f, 'g) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions4:
      (App.Authenticator.t, 'd) => (. 'e, 'f, 'g, 'h) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions5:
      (App.Authenticator.t, 'd) => (. 'e, 'f, 'g, 'h, 'i) => 'a =
      "initialize";
    [@bs.send]
    external authenticateWithOptions:
      (App.Authenticator.t, string, unit => unit, unit) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions1:
      (App.Authenticator.t, string, 'e => unit, 'e) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions2:
      (App.Authenticator.t, string, [@bs.uncurry] (('e, 'f) => unit)) =>
      (. 'e, 'f) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions3:
      (App.Authenticator.t, string, [@bs.uncurry] (('e, 'f, 'g) => unit)) =>
      (. 'e, 'f, 'g) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions4:
      (
        App.Authenticator.t,
        string,
        [@bs.uncurry] (('e, 'f, 'g, 'h) => unit)
      ) =>
      (. 'e, 'f, 'g, 'h) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions5:
      (
        App.Authenticator.t,
        string,
        [@bs.uncurry] (('e, 'f, 'g, 'h, 'i) => unit)
      ) =>
      (. 'e, 'f, 'g, 'h, 'i) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptionsWithOption:
      (App.Authenticator.t, string, 'd, unit => unit, unit) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptionsWithOption1:
      (App.Authenticator.t, string, 'd, 'e => unit, 'e) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptionsWithOption2:
      (App.Authenticator.t, string, 'd, [@bs.uncurry] (('e, 'f) => unit)) =>
      (. 'e, 'f) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptionsWithOption3:
      (
        App.Authenticator.t,
        string,
        'd,
        [@bs.uncurry] (('e, 'f, 'g) => unit)
      ) =>
      (. 'e, 'f, 'g) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptionsWithOption4:
      (
        App.Authenticator.t,
        string,
        'd,
        [@bs.uncurry] (('e, 'f, 'g, 'h) => unit)
      ) =>
      (. 'e, 'f, 'g, 'h) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptionsWithOption5:
      (
        App.Authenticator.t,
        string,
        'd,
        [@bs.uncurry] (('e, 'f, 'g, 'h, 'i) => unit)
      ) =>
      (. 'e, 'f, 'g, 'h, 'i) => 'a =
      "authenticate";
    [@bs.send]
    external isAuthorize:
      (App.Authenticator.t, string, ~id: 'd=?, 'e => unit, 'e) => 'a =
      "isAuthorize";
  };
  module Authenticator: {
    type t;
    [@bs.new] [@bs.module "passport"] external make: unit => t = "Passport";
    [@bs.send] external use: (t, Strategy.t) => t = "use";
    [@bs.send] external define: (t, string, Strategy.t) => t = "use";
    [@bs.send] external initialize: t => Express.Middleware.t = "initialize";
    [@bs.send]
    external initialize1:
      (t, {. "userProperty": string}) => Express.Middleware.t =
      "initialize";
    [@bs.send] external session: t => Express.Middleware.t = "session";
    [@bs.send]
    external session1: (t, {. "pauseStream": bool}) => Express.Middleware.t =
      "session";
    [@bs.send] external unuse: (t, string) => t = "unuse";
    [@bs.send] external framework: (t, App.Framework.t) => t = "framework";
    [@bs.send]
    external authenticate: (t, string, unit => unit) => 'a = "authenticate";
    [@bs.send]
    external authenticate1: (t, string, 'a => unit) => 'b = "authenticate";
    [@bs.send]
    external authenticate2: (t, string, ('a, 'b) => unit) => 'c =
      "authenticate";
    [@bs.send]
    external authenticate3: (t, string, ('a, 'b, 'c) => unit) => 'd =
      "authenticate";
    [@bs.send]
    external authenticate4: (t, string, ('a, 'b, 'c, 'd) => unit) => 'e =
      "authenticate";
    [@bs.send]
    external authenticate5: (t, string, ('a, 'b, 'c, 'd, 'e) => unit) => 'f =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions: (t, string, Js.t({..}), unit => unit) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions1: (t, string, Js.t({..}), 'a => unit) => 'b =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions2:
      (t, string, Js.t({..}), ('a, 'b) => unit) => 'c =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions3:
      (t, string, Js.t({..}), ('a, 'b, 'c) => unit) => 'd =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions4:
      (t, string, Js.t({..}), ('a, 'b, 'c, 'd) => unit) => 'e =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions5:
      (t, string, Js.t({..}), ('a, 'b, 'c, 'd, 'e) => unit) => 'f =
      "authenticate";
    [@bs.send]
    external serializeUser: (('a, ('b, ~id: 'c=?) => unit) => unit) => unit =
      "serializeUser";
    [@bs.send]
    external serializeRequestUser:
      ((Express.Request.t, 'b, ('c, ~id: 'd=?) => unit) => unit) => unit =
      "serializeUser";
    [@bs.send]
    external deserializeUser: (('a, ('b, ~id: 'c=?) => unit) => unit) => unit =
      "deserializeUser";
    [@bs.send]
    external deserializeRequestUser:
      ((Express.Request.t, 'b, ('c, ~id: 'd=?) => unit) => unit) => unit =
      "deserializeUser";
    [@bs.send]
    external transformAuthInfo: (('a, ('b, 'c) => unit) => unit) => unit =
      "transformAuthInfo";
  };
};
module GitlabStrategy: {
  type t = Strategy.t;
  [@bs.send]
  external authenticateWithOptions: ('a, Express.Request.t) => unit =
    "autentitcate";
  [@bs.send]
  external authenticateWithOptionsWithOption:
    ('a, Express.Request.t, 'b) => unit =
    "autentitcate";
  [@bs.new] [@bs.module]
  external make:
    (~options: Js.t({..}), (string, string, 'a, unit => unit) => unit) => t =
    "passport-gitlab2";
};