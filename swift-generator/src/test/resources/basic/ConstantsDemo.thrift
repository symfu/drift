/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

namespace java.swift swift.test.constants_demo

struct thing {
  1: i32 hello,
  2: i32 goodbye
}

enum enumconstants {
  ONE = 1,
  TWO = 2
}

struct thing2 {
  /** standard docstring */
  1: enumconstants val = TWO
}

typedef i32 myIntType
const myIntType myInt = 3

const map<enumconstants,string> GEN_ENUM_NAMES = {ONE : "HOWDY", TWO: "PARTNER"}

const i32 hex_const = 0x0001F

const i32 oct_const = 0700

const i32 int_const_single_d = 9
const i32 int_const_multi_d = 1000
const i32 int_const_zero = 0

const i32 GEN_ME = -3523553
const double GEn_DUB = 325.532
const double GEn_DU = 085.2355
const double GEn_DUB_i32 = 12345
const string GEN_STRING = "asldkjasfd"

typedef double myDoubleType
const myDoubleType myDouble = 54321

const bool bool_const_false = 0
const bool bool_const_true = 1

const byte byte_seventy_nine = 79

const map<i32,i32> GEN_MAP = { 35532 : 233, 43523 : 853 }
const list<i32> GEN_LIST = [ 235235, 23598352, 3253523 ]

const map<i32, map<i32, i32>> GEN_MAPMAP = { 235 : { 532 : 53255, 235:235}}

const map<string,i32> GEN_MAP2 = { "hello" : 233, "lkj98d" : 853, 'lkjsdf' : 98325 }

// swift-generator doesn't support struct constants yet
const thing GEN_THING = { 'hello' : 325, 'goodbye' : 325352 }
const map<i32,thing> GEN_WHAT = { 35 : { 'hello' : 325, 'goodbye' : 325352 } }

const set<i32> GEN_SET = [ 235, 235, 53235 ]

exception Blah {
  1:  i32 bing }

exception Gak {}

service yowza {
  void blingity(),
  i32 blangity() throws (1: Blah hoot )
}

const set<string> GEN_SET_CONTAINING_CONSTANT = [ GEN_STRING ]
const list<string> GEN_LIST_CONTAINING_CONSTANT = [ GEN_STRING ]
const map<string, i32> GEN_MAP_CONTAINING_CONSTANT_KEY = { GEN_STRING: 235 }
const map<string, i32> GEN_MAP_CONTAINING_CONSTANT_VALUE = { "hello": int_const_single_d }
const map<string, i32> GEN_MAP_CONTAINING_CONSTANT_ENTRY = { GEN_STRING: int_const_single_d }