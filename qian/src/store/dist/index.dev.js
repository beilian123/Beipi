"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _vue = _interopRequireDefault(require("vue"));

var _vuex = _interopRequireDefault(require("vuex"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

_vue["default"].use(_vuex["default"]);

var _default = new _vuex["default"].Store({
  state: {
    collecting: {}
  },
  mutations: {
    setcollect: function setcollect(state, obj) {
      state.collecting = obj;
    }
  },
  actions: {},
  modules: {}
});

exports["default"] = _default;