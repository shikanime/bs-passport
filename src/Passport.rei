module Strategy: {
  type t;
  [@bs.send]
  external authenticate: ('a, Express.Request.t) => unit = "autentitcate";
  [@bs.send]
  external authenticateWithOption: ('a, Express.Request.t, 'b) => unit =
    "autentitcate";
};
module Framework: {type t;};
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
  [@bs.send] external framework: (t, Framework.t) => t = "framework";
  type authenticateOptions = {
    .
    "assignProperty": string,
    "authInfo": bool,
    "failWithError": bool,
    "failureFlash": string,
    "failureMessage": string,
    "failureRedirect": string,
    "passReqToCallback": bool,
    "pauseStream": bool,
    "prompt": string,
    "scope": list(string),
    "session": bool,
    "state": string,
    "strategy": list(string),
    "successFlash": string,
    "successMessage": string,
    "successRedirect": string,
    "successReturnToOrRedirect": string,
    "userProperty": string,
  };
  [@bs.send]
  external authenticate: (t, authenticateOptions, unit => unit) => 'a =
    "authenticate";
  [@bs.send]
  external authenticate1: (t, authenticateOptions, 'a => unit) => 'b =
    "authenticate";
  [@bs.send]
  external authenticate2: (t, authenticateOptions, ('a, 'b) => unit) => 'c =
    "authenticate";
  [@bs.send]
  external authenticate3: (t, authenticateOptions, ('a, 'b, 'c) => unit) => 'd =
    "authenticate";
  [@bs.send]
  external authenticate4:
    (t, authenticateOptions, ('a, 'b, 'c, 'd) => unit) => 'e =
    "authenticate";
  [@bs.send]
  external authenticate5:
    (t, authenticateOptions, ('a, 'b, 'c, 'd, 'e) => unit) => 'f =
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
module GitlabStrategy: {
  type t = Strategy.t;
  [@bs.send]
  external authenticate: ('a, Express.Request.t) => unit = "autentitcate";
  [@bs.send]
  external authenticateWithOption: ('a, Express.Request.t, 'b) => unit =
    "autentitcate";
  let make:
    (
      ~options: {
        .
        "clientID": string,
        "clientSecret": string,
        "callbackURL": string
      },
      (string, string, 'a, unit => unit) => unit
    ) =>
    t;
};