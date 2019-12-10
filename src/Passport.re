open Express;

module Strategy = {
  type t;

  [@bs.send]
  external authenticateWithOptions: ('a, Request.t) => unit = "autentitcate";
  [@bs.send]
  external authenticateWithOptionsWithOption: ('a, Request.t, 'b) => unit =
    "autentitcate";
};

module rec App: {
  module Framework: {
    type t;

    [@bs.send]
    external initialize: App.Authenticator.t => (. unit) => 'a = "initialize";
    [@bs.send]
    external initialize1: App.Authenticator.t => (. 'c) => 'a = "initialize";
    [@bs.send]
    external initialize2: App.Authenticator.t => (. 'c, 'd) => 'a =
      "initialize";
    [@bs.send]
    external initialize3: App.Authenticator.t => (. 'c, 'd, 'e) => 'a =
      "initialize";
    [@bs.send]
    external initialize4: App.Authenticator.t => (. 'c, 'd, 'e, 'f) => 'a =
      "initialize";
    [@bs.send]
    external initialize5: App.Authenticator.t => (. 'c, 'd, 'c, 'd, 'e) => 'a =
      "initialize";
    [@bs.send]

    external initializeWithOptions: (App.Authenticator.t, 'b) => (. unit) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions1: (App.Authenticator.t, 'b) => (. 'c) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions2:
      (App.Authenticator.t, 'b) => (. 'c, 'd) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions3:
      (App.Authenticator.t, 'b) => (. 'c, 'd, 'e) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions4:
      (App.Authenticator.t, 'b) => (. 'c, 'd, 'e, 'f) => 'a =
      "initialize";
    [@bs.send]
    external initializeWithOptions5:
      (App.Authenticator.t, 'b) => (. 'c, 'd, 'c, 'd, 'e) => 'a =
      "initialize";
    [@bs.send]

    external authenticate:
      (App.Authenticator.t, string, unit => complete) => (. unit) => 'a =
      "authenticate";
    [@bs.send]
    external authenticate1:
      (App.Authenticator.t, string, 'e => complete) => (. 'c) => 'a =
      "authenticate";
    [@bs.send]
    external authenticate2:
      (App.Authenticator.t, string, ('e, 'f) => complete) => (. 'c, 'd) => 'a =
      "authenticate";
    [@bs.send]
    external authenticate3:
      (App.Authenticator.t, string, ('c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'e) => 'a =
      "authenticate";
    [@bs.send]
    external authenticate4:
      (App.Authenticator.t, string, ('c, 'd, 'e, 'f) => complete) =>
      (. 'c, 'd, 'e, 'f) => 'a =
      "authenticate";
    [@bs.send]
    external authenticate5:
      (App.Authenticator.t, string, ('c, 'd, 'c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a =
      "authenticate";
    [@bs.send]

    external authenticateWithOptions:
      (App.Authenticator.t, string, 'b, unit => complete) => (. unit) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions1:
      (App.Authenticator.t, string, 'b, 'e => complete) => (. 'c) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions2:
      (App.Authenticator.t, string, 'b, ('e, 'f) => complete) =>
      (. 'c, 'd) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions3:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'e) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions4:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'e, 'f) => complete) =>
      (. 'c, 'd, 'e, 'f) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions5:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a =
      "authenticate";

    [@bs.send]
    external authorize:
      (App.Authenticator.t, string, unit => complete) => (. unit) => 'a =
      "authorize";
    [@bs.send]
    external authorize1:
      (App.Authenticator.t, string, 'e => complete) => (. 'c) => 'a =
      "authorize";
    [@bs.send]
    external authorize2:
      (App.Authenticator.t, string, ('e, 'f) => complete) => (. 'c, 'd) => 'a =
      "authorize";
    [@bs.send]
    external authorize3:
      (App.Authenticator.t, string, ('c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'e) => 'a =
      "authorize";
    [@bs.send]
    external authorize4:
      (App.Authenticator.t, string, ('c, 'd, 'e, 'f) => complete) =>
      (. 'c, 'd, 'e, 'f) => 'a =
      "authorize";
    [@bs.send]
    external authorize5:
      (App.Authenticator.t, string, ('c, 'd, 'c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a =
      "authorize";

    [@bs.send]
    external authorizeWithOptions:
      (App.Authenticator.t, string, 'b, unit => complete) => (. unit) => 'a =
      "authorize";
    [@bs.send]
    external authorizeWithOptions1:
      (App.Authenticator.t, string, 'b, 'e => complete) => (. 'c) => 'a =
      "authorize";
    [@bs.send]
    external authorizeWithOptions2:
      (App.Authenticator.t, string, 'b, ('e, 'f) => complete) =>
      (. 'c, 'd) => 'a =
      "authorize";
    [@bs.send]
    external authorizeWithOptions3:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'e) => 'a =
      "authorize";
    [@bs.send]
    external authorizeWithOptions4:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'e, 'f) => complete) =>
      (. 'c, 'd, 'e, 'f) => 'a =
      "authorize";
    [@bs.send]
    external authorizeWithOptions5:
      (App.Authenticator.t, string, 'b, ('c, 'd, 'c, 'd, 'e) => complete) =>
      (. 'c, 'd, 'c, 'd, 'e) => 'a =
      "authorize";
  };

  module Authenticator: {
    type t;

    [@bs.new] [@bs.module "passport"] external make: unit => t = "Passport";

    [@bs.send] external use: (t, Strategy.t) => t = "use";
    [@bs.send] external useNamed: (t, string, Strategy.t) => t = "use";

    [@bs.send] external initialize: t => Middleware.t = "initialize";
    [@bs.send]
    external initialize1: (t, {. "userProperty": string}) => Middleware.t =
      "initialize";

    [@bs.send] external session: t => Middleware.t = "session";
    [@bs.send]
    external session1: (t, {. "pauseStream": bool}) => Middleware.t =
      "session";

    [@bs.send] external unuse: (t, string) => t = "unuse";

    [@bs.send] external framework: (t, App.Framework.t) => t = "framework";

    [@bs.send]
    external authenticate: (t, string, unit => complete) => 'a = "authenticate";
    [@bs.send]
    external authenticate1: (t, string, 'a => complete) => 'b = "authenticate";
    [@bs.send]
    external authenticate2: (t, string, ('a, 'b) => complete) => 'c =
      "authenticate";
    [@bs.send]
    external authenticate3: (t, string, ('a, 'b, 'c) => complete) => 'd =
      "authenticate";
    [@bs.send]
    external authenticate4: (t, string, ('a, 'b, 'c, 'd) => complete) => 'e =
      "authenticate";
    [@bs.send]
    external authenticate5: (t, string, ('a, 'b, 'c, 'd, 'e) => complete) => 'f =
      "authenticate";

    [@bs.send]
    external authenticateWithOptions:
      (t, string, Js.t({..}), unit => complete) => 'a =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions1:
      (t, string, Js.t({..}), 'a => complete) => 'b =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions2:
      (t, string, Js.t({..}), ('a, 'b) => complete) => 'c =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions3:
      (t, string, Js.t({..}), ('a, 'b, 'c) => complete) => 'd =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions4:
      (t, string, Js.t({..}), ('a, 'b, 'c, 'd) => complete) => 'e =
      "authenticate";
    [@bs.send]
    external authenticateWithOptions5:
      (t, string, Js.t({..}), ('a, 'b, 'c, 'd, 'e) => complete) => 'f =
      "authenticate";

    [@bs.send]
    external serializeUser: (('a, ('b, ~id: 'c=?) => complete) => complete) => unit =
      "serializeUser";
    [@bs.send]
    external serializeRequestUser:
      ((Request.t, 'b, ('c, ~id: 'd=?) => complete) => complete) => unit =
      "serializeUser";

    [@bs.send]
    external deserializeUser: (('a, ('b, ~id: 'c=?) => complete) => complete) => unit =
      "deserializeUser";
    [@bs.send]
    external deserializeRequestUser:
      ((Request.t, 'b, ('c, ~id: 'd=?) => complete) => complete) => unit =
      "deserializeUser";

    [@bs.send]
    external transformAuthInfo: (('a, ('b, 'c) => complete) => complete) => unit =
      "transformAuthInfo";
  };
} = App;

module GitlabStrategy = {
  include Strategy;

  [@bs.new] [@bs.module]
  external make:
    (~options: Js.t({..}), (string, string, 'a, unit => complete) => complete) => t =
    "passport-gitlab2";
};