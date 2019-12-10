open Express;

module Strategy = {
  type t;

  [@bs.send] external authenticate: ('a, Request.t) => unit = "autentitcate";
  [@bs.send]
  external authenticateWithOption: ('a, Request.t, 'b) => unit =
    "autentitcate";
};

module Framework = {
  type t;
  // TODO: fix open recursive
  // [@bs.send]
  // external initialize: Authenticator.t => (. unit) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initialize1: Authenticator.t => (. 'e) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initialize2: Authenticator.t => (. 'e, 'f) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initialize3: Authenticator.t => (. 'e, 'f, 'g) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initialize4:
  //   Authenticator.t => (. 'e, 'f, 'g, 'h) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initialize5:
  //   Authenticator.t => (. 'e, 'f, 'g, 'h, 'i) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initializeWithOptions:
  //   (Authenticator.t, 'd) => (. unit) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initializeWithOptions1:
  //   (Authenticator.t, 'd) => (. 'e) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initializeWithOptions2:
  //   (Authenticator.t, 'd) => (. 'e, 'f) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initializeWithOptions3:
  //   (Authenticator.t, 'd) => (. 'e, 'f, 'g) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initializeWithOptions4:
  //   (Authenticator.t, 'd) => (. 'e, 'f, 'g, 'h) => 'a =
  //   "initialize";
  // [@bs.send]
  // external initializeWithOptions5:
  //   (Authenticator.t, 'd) => (. 'e, 'f, 'g, 'h, 'i) => 'a =
  //   "initialize";
  // [@bs.send]
  // external authenticate:
  //   (Authenticator.t, string, unit => unit, unit) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticate1:
  //   (Authenticator.t, string, 'e => unit, 'e) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticate2:
  //   (Authenticator.t, string, [@bs.uncurry] (('e, 'f) => unit)) =>
  //   (. 'e, 'f) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticate3:
  //   (
  //     Authenticator.t,
  //     string,
  //     [@bs.uncurry] (('e, 'f, 'g) => unit)
  //   ) =>
  //   (. 'e, 'f, 'g) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticate4:
  //   (
  //     Authenticator.t,
  //     string,
  //     [@bs.uncurry] (('e, 'f, 'g, 'h) => unit)
  //   ) =>
  //   (. 'e, 'f, 'g, 'h) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticate5:
  //   (
  //     Authenticator.t,
  //     string,
  //     [@bs.uncurry] (('e, 'f, 'g, 'h, 'i) => unit)
  //   ) =>
  //   (. 'e, 'f, 'g, 'h, 'i) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticateWithOption:
  //   (Authenticator.t, string, 'd, unit => unit, unit) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticateWithOption1:
  //   (Authenticator.t, string, 'd, 'e => unit, 'e) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticateWithOption2:
  //   (
  //     Authenticator.t,
  //     string,
  //     'd,
  //     [@bs.uncurry] (('e, 'f) => unit)
  //   ) =>
  //   (. 'e, 'f) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticateWithOption3:
  //   (
  //     Authenticator.t,
  //     string,
  //     'd,
  //     [@bs.uncurry] (('e, 'f, 'g) => unit)
  //   ) =>
  //   (. 'e, 'f, 'g) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticateWithOption4:
  //   (
  //     Authenticator.t,
  //     string,
  //     'd,
  //     [@bs.uncurry] (('e, 'f, 'g, 'h) => unit)
  //   ) =>
  //   (. 'e, 'f, 'g, 'h) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external authenticateWithOption5:
  //   (
  //     Authenticator.t,
  //     string,
  //     'd,
  //     [@bs.uncurry] (('e, 'f, 'g, 'h, 'i) => unit)
  //   ) =>
  //   (. 'e, 'f, 'g, 'h, 'i) => 'a =
  //   "authenticate";
  // [@bs.send]
  // external isAuthorize:
  //   (Authenticator.t, string, option('d), 'e => unit, 'e) => 'a =
  //   "isAuthorize";
};

module Authenticator = {
  type t;

  [@bs.new] [@bs.module "passport"] external make: unit => t = "Passport";

  [@bs.send] external use: (t, Strategy.t) => t = "use";
  [@bs.send] external define: (t, string, Strategy.t) => t = "use";

  [@bs.send] external initialize: t => Middleware.t = "initialize";
  [@bs.send]
  external initialize1: (t, {. "userProperty": string}) => Middleware.t =
    "initialize";

  [@bs.send] external session: t => Middleware.t = "session";
  [@bs.send]
  external session1: (t, {. "pauseStream": bool}) => Middleware.t = "session";

  [@bs.send] external unuse: (t, string) => t = "unuse";

  [@bs.send] external framework: (t, Framework.t) => t = "framework";

  type authenticateOptions = {
    .
    "authInfo": bool,
    "assignProperty": string,
    "failureFlash": string,
    "failureMessage": string,
    "failureRedirect": string,
    "failWithError": bool,
    "session": bool,
    "scope": list(string),
    "successFlash": string,
    "successMessage": string,
    "successRedirect": string,
    "successReturnToOrRedirect": string,
    "state": string,
    "pauseStream": bool,
    "userProperty": string,
    "passReqToCallback": bool,
    "prompt": string,
    "strategy": list(string),
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
  external serializeUser: (('a, ('b, option('c)) => unit) => unit) => unit =
    "serializeUser";
  [@bs.send]
  external serializeRequestUser:
    ((Request.t, 'b, ('c, option('d)) => unit) => unit) => unit =
    "serializeUser";

  [@bs.send]
  external deserializeUser: (('a, ('b, option('c)) => unit) => unit) => unit =
    "deserializeUser";
  [@bs.send]
  external deserializeRequestUser:
    ((Request.t, 'b, ('c, option('d)) => unit) => unit) => unit =
    "deserializeUser";

  [@bs.send]
  external transformAuthInfo: (('a, ('b, 'c) => unit) => unit) => unit =
    "transformAuthInfo";
};

module GitlabStrategy = {
  include Strategy;

  [@bs.new] [@bs.module "passport-gitlab"]
  external make_:
    (
      {
        .
        "clientID": string,
        "clientSecret": string,
        "callbackURL": string,
      },
      (string, string, 'a, unit => unit) => unit
    ) =>
    t =
    "GitlabStrategy";
  let make = (~clientID, ~clientSecret, ~callbackURL="/callback", next) => {
    make_(
      {
        "clientID": clientID,
        "clientSecret": clientSecret,
        "callbackURL": callbackURL,
      },
      next,
    );
  };
};