// Generated by ReScript, PLEASE EDIT WITH CARE

import * as $$Array from "./Array.bs.js";
import * as Curry from "rescript/lib/es6/curry.js";
import * as $$Option from "./Option.bs.js";
import * as Belt_Result from "rescript/lib/es6/belt_Result.js";
import * as Caml_option from "rescript/lib/es6/caml_option.js";

function ok(x) {
  return {
          TAG: /* Ok */0,
          _0: x
        };
}

function error(e) {
  return {
          TAG: /* Error */1,
          _0: e
        };
}

function $$void(param) {
  
}

function $$return(a) {
  return {
          TAG: /* Ok */0,
          _0: a
        };
}

function isOk(a) {
  if (a.TAG === /* Ok */0) {
    return true;
  } else {
    return false;
  }
}

function isError(a) {
  if (a.TAG === /* Ok */0) {
    return false;
  } else {
    return true;
  }
}

function fromOption(a, b) {
  if (a !== undefined) {
    return {
            TAG: /* Ok */0,
            _0: Caml_option.valFromOption(a)
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: b
          };
  }
}

function fromOptionError(a) {
  if (a !== undefined) {
    return {
            TAG: /* Error */1,
            _0: Caml_option.valFromOption(a)
          };
  } else {
    return {
            TAG: /* Ok */0,
            _0: undefined
          };
  }
}

function toOption(a) {
  if (a.TAG === /* Ok */0) {
    return Caml_option.some(a._0);
  }
  
}

function getWithDefault(a, b) {
  if (a.TAG === /* Ok */0) {
    return a._0;
  } else {
    return b;
  }
}

function resolve(a, ok, err) {
  if (a.TAG === /* Ok */0) {
    return Curry._1(ok, a._0);
  } else {
    return Curry._1(err, a._0);
  }
}

function first(a, b) {
  if (a.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: a._0
          };
  } else if (b.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: b._0
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: a._0
          };
  }
}

function invert(res) {
  if (res.TAG === /* Ok */0) {
    return {
            TAG: /* Error */1,
            _0: res._0
          };
  } else {
    return {
            TAG: /* Ok */0,
            _0: res._0
          };
  }
}

function predicate(b, v, e) {
  if (b) {
    return {
            TAG: /* Ok */0,
            _0: v
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: e
          };
  }
}

function toOptionError(a) {
  return toOption(invert(a));
}

function guard(r, fn, err) {
  return Belt_Result.flatMap(r, (function (r) {
                if (Curry._1(fn, r)) {
                  return {
                          TAG: /* Ok */0,
                          _0: r
                        };
                } else {
                  return {
                          TAG: /* Error */1,
                          _0: err
                        };
                }
              }));
}

function guardOpt(r, fn) {
  return Belt_Result.flatMap(r, (function (r) {
                var err = Curry._1(fn, r);
                if (err !== undefined) {
                  return {
                          TAG: /* Error */1,
                          _0: Caml_option.valFromOption(err)
                        };
                } else {
                  return {
                          TAG: /* Ok */0,
                          _0: r
                        };
                }
              }));
}

function $$const(r, c) {
  var fn = function (param) {
    return c;
  };
  if (r.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: Curry._1(fn, r._0)
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: r._0
          };
  }
}

function tap(result, f) {
  Curry._1(f, result);
  return result;
}

function forEach(result, f) {
  if (result.TAG === /* Ok */0) {
    Curry._1(f, result._0);
  }
  
}

function forEachError(result, f) {
  if (result.TAG === /* Ok */0) {
    return ;
  } else {
    return Curry._1(f, result._0);
  }
}

function map(result, fn) {
  if (result.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: Curry._1(fn, result._0)
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: result._0
          };
  }
}

function mapError(result, fn) {
  if (result.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: result._0
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: Curry._1(fn, result._0)
          };
  }
}

function bimap(result, ok, err) {
  if (result.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: Curry._1(ok, result._0)
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: Curry._1(err, result._0)
          };
  }
}

function tapOk(result, fn) {
  if (result.TAG === /* Ok */0) {
    Curry._1(fn, result._0);
  }
  return result;
}

function tapError(result, fn) {
  if (result.TAG !== /* Ok */0) {
    Curry._1(fn, result._0);
  }
  return result;
}

function merge(consa, conse, eempty, acc, r) {
  if (acc.TAG === /* Ok */0) {
    if (r.TAG === /* Ok */0) {
      return {
              TAG: /* Ok */0,
              _0: Curry._2(consa, acc._0, r._0)
            };
    } else {
      return {
              TAG: /* Error */1,
              _0: Curry._2(conse, eempty, r._0)
            };
    }
  } else if (r.TAG === /* Ok */0) {
    return acc;
  } else {
    return {
            TAG: /* Error */1,
            _0: Curry._2(conse, acc._0, r._0)
          };
  }
}

function apply(f, v) {
  if (v.TAG === /* Ok */0) {
    if (f.TAG === /* Ok */0) {
      return {
              TAG: /* Ok */0,
              _0: Curry._1(f._0, v._0)
            };
    } else {
      return {
              TAG: /* Error */1,
              _0: f._0
            };
    }
  } else {
    return {
            TAG: /* Error */1,
            _0: v._0
          };
  }
}

function sequence(aempty, eempty, consa, conse, arr) {
  return $$Array.reduce(arr, (function (param, param$1) {
                return merge(consa, conse, eempty, param, param$1);
              }), {
              TAG: /* Ok */0,
              _0: aempty
            });
}

function traverse(aempty, eempty, consa, conse, arr, f) {
  return sequence(aempty, eempty, consa, conse, $$Array.map(arr, f));
}

function allArray(arr) {
  return mapError(sequence([], [], $$Array.append, $$Array.append, arr), (function (x) {
                return $$Option.getExn($$Array.get(x, 0), "We know there is at least one error if there is an error at all");
              }));
}

function all2(a, b) {
  if (a.TAG === /* Ok */0) {
    if (b.TAG === /* Ok */0) {
      return {
              TAG: /* Ok */0,
              _0: [
                a._0,
                b._0
              ]
            };
    } else {
      return {
              TAG: /* Error */1,
              _0: b._0
            };
    }
  } else {
    return {
            TAG: /* Error */1,
            _0: a._0
          };
  }
}

function all3(a, b, c) {
  if (a.TAG === /* Ok */0) {
    if (b.TAG === /* Ok */0) {
      if (c.TAG === /* Ok */0) {
        return {
                TAG: /* Ok */0,
                _0: [
                  a._0,
                  b._0,
                  c._0
                ]
              };
      } else {
        return {
                TAG: /* Error */1,
                _0: c._0
              };
      }
    } else {
      return {
              TAG: /* Error */1,
              _0: b._0
            };
    }
  } else {
    return {
            TAG: /* Error */1,
            _0: a._0
          };
  }
}

function all4(a, b, c, d) {
  if (a.TAG === /* Ok */0) {
    if (b.TAG === /* Ok */0) {
      if (c.TAG === /* Ok */0) {
        if (d.TAG === /* Ok */0) {
          return {
                  TAG: /* Ok */0,
                  _0: [
                    a._0,
                    b._0,
                    c._0,
                    d._0
                  ]
                };
        } else {
          return {
                  TAG: /* Error */1,
                  _0: d._0
                };
        }
      } else {
        return {
                TAG: /* Error */1,
                _0: c._0
              };
      }
    } else {
      return {
              TAG: /* Error */1,
              _0: b._0
            };
    }
  } else {
    return {
            TAG: /* Error */1,
            _0: a._0
          };
  }
}

function all5(a, b, c, d, e) {
  if (a.TAG === /* Ok */0) {
    if (b.TAG === /* Ok */0) {
      if (c.TAG === /* Ok */0) {
        if (d.TAG === /* Ok */0) {
          if (e.TAG === /* Ok */0) {
            return {
                    TAG: /* Ok */0,
                    _0: [
                      a._0,
                      b._0,
                      c._0,
                      d._0,
                      e._0
                    ]
                  };
          } else {
            return {
                    TAG: /* Error */1,
                    _0: e._0
                  };
          }
        } else {
          return {
                  TAG: /* Error */1,
                  _0: d._0
                };
        }
      } else {
        return {
                TAG: /* Error */1,
                _0: c._0
              };
      }
    } else {
      return {
              TAG: /* Error */1,
              _0: b._0
            };
    }
  } else {
    return {
            TAG: /* Error */1,
            _0: a._0
          };
  }
}

function all6(a, b, c, d, e, f) {
  if (a.TAG === /* Ok */0) {
    if (b.TAG === /* Ok */0) {
      if (c.TAG === /* Ok */0) {
        if (d.TAG === /* Ok */0) {
          if (e.TAG === /* Ok */0) {
            if (f.TAG === /* Ok */0) {
              return {
                      TAG: /* Ok */0,
                      _0: [
                        a._0,
                        b._0,
                        c._0,
                        d._0,
                        e._0,
                        f._0
                      ]
                    };
            } else {
              return {
                      TAG: /* Error */1,
                      _0: f._0
                    };
            }
          } else {
            return {
                    TAG: /* Error */1,
                    _0: e._0
                  };
          }
        } else {
          return {
                  TAG: /* Error */1,
                  _0: d._0
                };
        }
      } else {
        return {
                TAG: /* Error */1,
                _0: c._0
              };
      }
    } else {
      return {
              TAG: /* Error */1,
              _0: b._0
            };
    }
  } else {
    return {
            TAG: /* Error */1,
            _0: a._0
          };
  }
}

function all(arr) {
  return $$Array.reduce(arr, (function (b, opt) {
                var err = all2(b, opt);
                if (err.TAG !== /* Ok */0) {
                  return {
                          TAG: /* Error */1,
                          _0: err._0
                        };
                }
                var match = err._0;
                return {
                        TAG: /* Ok */0,
                        _0: $$Array.concat(match[0], [match[1]])
                      };
              }), {
              TAG: /* Ok */0,
              _0: []
            });
}

var getExn = Belt_Result.getExn;

var mapWithDefaultU = Belt_Result.mapWithDefaultU;

var mapWithDefault = Belt_Result.mapWithDefault;

var mapU = Belt_Result.mapU;

var flatMapU = Belt_Result.flatMapU;

var flatMap = Belt_Result.flatMap;

var eqU = Belt_Result.eqU;

var eq = Belt_Result.eq;

var cmpU = Belt_Result.cmpU;

var cmp = Belt_Result.cmp;

var bind = Belt_Result.flatMap;

export {
  getExn ,
  mapWithDefaultU ,
  mapWithDefault ,
  mapU ,
  flatMapU ,
  flatMap ,
  eqU ,
  eq ,
  cmpU ,
  cmp ,
  ok ,
  error ,
  $$void ,
  $$return ,
  isOk ,
  isError ,
  fromOption ,
  fromOptionError ,
  toOption ,
  getWithDefault ,
  resolve ,
  first ,
  invert ,
  predicate ,
  toOptionError ,
  bind ,
  guard ,
  guardOpt ,
  $$const ,
  tap ,
  forEach ,
  forEachError ,
  map ,
  mapError ,
  bimap ,
  tapOk ,
  tapError ,
  merge ,
  apply ,
  sequence ,
  traverse ,
  allArray ,
  all2 ,
  all3 ,
  all4 ,
  all5 ,
  all6 ,
  all ,
}
/* No side effect */
