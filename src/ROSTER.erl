%% Generated by the Erlang ASN.1 BER compiler. Version: 5.0.8
%% Purpose: Encoding and decoding of the types in ROSTER.

-module('ROSTER').
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-include("ROSTER.hrl").
-asn1_info([{vsn,'5.0.8'},
            {module,'ROSTER'},
            {options,[ber,{i,"."}]}]).

-export([encoding_rule/0,maps/0,bit_string_format/0,
         legacy_erlang_types/0]).
-export(['dialyzer-suppressions'/1]).
-export([
enc_MUC/2,
enc_P2P/2,
enc_Cut/2,
enc_Ack/2,
enc_Bin/2,
enc_Typ/2,
enc_Adr/2,
enc_Msg/2
]).

-export([
dec_MUC/2,
dec_P2P/2,
dec_Cut/2,
dec_Ack/2,
dec_Bin/2,
dec_Typ/2,
dec_Adr/2,
dec_Msg/2
]).

-export([info/0]).

-export([encode/2,decode/2]).

encoding_rule() -> ber.

maps() -> false.

bit_string_format() -> bitstring.

legacy_erlang_types() -> false.

encode(Type, Data) ->
try iolist_to_binary(element(1, encode_disp(Type, Data))) of
  Bytes ->
    {ok,Bytes}
  catch
    Class:Exception:Stk when Class =:= error; Class =:= exit ->
      case Exception of
        {error,{asn1,Reason}} ->
          {error,{asn1,{Reason,Stk}}};
        Reason ->
         {error,{asn1,{Reason,Stk}}}
      end
end.

decode(Type, Data) ->
try
   Result = decode_disp(Type, element(1, ber_decode_nif(Data))),
   {ok,Result}
  catch
    Class:Exception:Stk when Class =:= error; Class =:= exit ->
      case Exception of
        {error,{asn1,Reason}} ->
          {error,{asn1,{Reason,Stk}}};
        Reason ->
         {error,{asn1,{Reason,Stk}}}
      end
end.

encode_disp('MUC', Data) -> enc_MUC(Data);
encode_disp('P2P', Data) -> enc_P2P(Data);
encode_disp('Cut', Data) -> enc_Cut(Data);
encode_disp('Ack', Data) -> enc_Ack(Data);
encode_disp('Bin', Data) -> enc_Bin(Data);
encode_disp('Typ', Data) -> enc_Typ(Data);
encode_disp('Adr', Data) -> enc_Adr(Data);
encode_disp('Msg', Data) -> enc_Msg(Data);
encode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

decode_disp('MUC', Data) -> dec_MUC(Data);
decode_disp('P2P', Data) -> dec_P2P(Data);
decode_disp('Cut', Data) -> dec_Cut(Data);
decode_disp('Ack', Data) -> dec_Ack(Data);
decode_disp('Bin', Data) -> dec_Bin(Data);
decode_disp('Typ', Data) -> dec_Typ(Data);
decode_disp('Adr', Data) -> dec_Adr(Data);
decode_disp('Msg', Data) -> dec_Msg(Data);
decode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

info() ->
   case ?MODULE:module_info(attributes) of
     Attributes when is_list(Attributes) ->
       case lists:keyfind(asn1_info, 1, Attributes) of
         {_,Info} when is_list(Info) ->
           Info;
         _ ->
           []
       end;
     _ ->
       []
   end.


%%================================
%%  MUC
%%================================
enc_MUC(Val) ->
    enc_MUC(Val, [<<48>>]).

enc_MUC(Val, TagIn) ->
{_,Cindex1} = Val,

%%-------------------------------------------------
%% attribute name(1) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_restricted_string(Cindex1, [<<4>>]),

   BytesSoFar = [EncBytes1],
LenSoFar = EncLen1,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_MUC(Tlv) ->
   dec_MUC(Tlv, [16]).

dec_MUC(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute name(1) with type OCTET STRING
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_octet_string(V1, [4]),

case Tlv2 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv2}}}) % extra fields not allowed
end,
Res1 = {'MUC',Term1},
Res1.


%%================================
%%  P2P
%%================================
enc_P2P(Val) ->
    enc_P2P(Val, [<<48>>]).

enc_P2P(Val, TagIn) ->
{_,Cindex1,Cindex2} = Val,

%%-------------------------------------------------
%% attribute from(1) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_restricted_string(Cindex1, [<<4>>]),

%%-------------------------------------------------
%% attribute to(2) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes2,EncLen2} = encode_restricted_string(Cindex2, [<<4>>]),

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_P2P(Tlv) ->
   dec_P2P(Tlv, [16]).

dec_P2P(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute from(1) with type OCTET STRING
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_octet_string(V1, [4]),

%%-------------------------------------------------
%% attribute to(2) with type OCTET STRING
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = decode_octet_string(V2, [4]),

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'P2P',Term1,Term2},
Res1.


%%================================
%%  Cut
%%================================
enc_Cut(Val) ->
    enc_Cut(Val, [<<48>>]).

enc_Cut(Val, TagIn) ->
{_,Cindex1} = Val,

%%-------------------------------------------------
%% attribute id(1) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_restricted_string(Cindex1, [<<4>>]),

   BytesSoFar = [EncBytes1],
LenSoFar = EncLen1,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_Cut(Tlv) ->
   dec_Cut(Tlv, [16]).

dec_Cut(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute id(1) with type OCTET STRING
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_octet_string(V1, [4]),

case Tlv2 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv2}}}) % extra fields not allowed
end,
Res1 = {'Cut',Term1},
Res1.


%%================================
%%  Ack
%%================================
enc_Ack(Val) ->
    enc_Ack(Val, [<<48>>]).

enc_Ack(Val, TagIn) ->
{_,Cindex1,Cindex2} = Val,

%%-------------------------------------------------
%% attribute id(1) with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_integer(Cindex1, [<<2>>]),

%%-------------------------------------------------
%% attribute table(2) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes2,EncLen2} = encode_restricted_string(Cindex2, [<<4>>]),

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_Ack(Tlv) ->
   dec_Ack(Tlv, [16]).

dec_Ack(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute id(1) with type INTEGER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_integer(V1, [2]),

%%-------------------------------------------------
%% attribute table(2) with type OCTET STRING
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = decode_octet_string(V2, [4]),

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'Ack',Term1,Term2},
Res1.


%%================================
%%  Bin
%%================================
enc_Bin(Val) ->
    enc_Bin(Val, [<<48>>]).

enc_Bin(Val, TagIn) ->
{_,Cindex1,Cindex2,Cindex3} = Val,

%%-------------------------------------------------
%% attribute id(1) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_restricted_string(Cindex1, [<<4>>]),

%%-------------------------------------------------
%% attribute mime(2) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes2,EncLen2} = encode_restricted_string(Cindex2, [<<4>>]),

%%-------------------------------------------------
%% attribute payload(3) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes3,EncLen3} = encode_restricted_string(Cindex3, [<<4>>]),

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3],
LenSoFar = EncLen1 + EncLen2 + EncLen3,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_Bin(Tlv) ->
   dec_Bin(Tlv, [16]).

dec_Bin(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute id(1) with type OCTET STRING
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_octet_string(V1, [4]),

%%-------------------------------------------------
%% attribute mime(2) with type OCTET STRING
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = decode_octet_string(V2, [4]),

%%-------------------------------------------------
%% attribute payload(3) with type OCTET STRING
%%-------------------------------------------------
[V3|Tlv4] = Tlv3, 
Term3 = decode_octet_string(V3, [4]),

case Tlv4 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv4}}}) % extra fields not allowed
end,
Res1 = {'Bin',Term1,Term2,Term3},
Res1.


%%================================
%%  Typ
%%================================
enc_Typ(Val) ->
    enc_Typ(Val, [<<10>>]).

enc_Typ(Val, TagIn) ->
case Val of
new -> encode_tags(TagIn, [0], 1);
edit -> encode_tags(TagIn, [1], 1);
delete -> encode_tags(TagIn, [2], 1);
Enumval1 -> exit({error,{asn1, {enumerated_not_in_range,Enumval1}}})
end.


dec_Typ(Tlv) ->
   dec_Typ(Tlv, [10]).

dec_Typ(Tlv, TagIn) ->
case decode_integer(Tlv, TagIn) of
0 -> new;
1 -> edit;
2 -> delete;
Default1 -> exit({error,{asn1,{illegal_enumerated,Default1}}})
end.



%%================================
%%  Adr
%%================================
enc_Adr(Val) ->
    enc_Adr(Val, []).

enc_Adr(Val, TagIn) ->
   {EncBytes,EncLen} = case element(1,Val) of
      room ->
         'enc_MUC'(element(2,Val), [<<48>>]);
      chat ->
         'enc_P2P'(element(2,Val), [<<160>>]);
      Else -> 
         exit({error,{asn1,{invalid_choice_type,Else}}})
   end,

encode_tags(TagIn, EncBytes, EncLen).




dec_Adr(Tlv) ->
   dec_Adr(Tlv, []).

dec_Adr(Tlv, TagIn) ->
Tlv1 = match_tags(Tlv, TagIn),
case (case Tlv1 of [CtempTlv1] -> CtempTlv1; _ -> Tlv1 end) of

%% 'room'
    {16, V1} -> 
        {room, 'dec_MUC'(V1, [])};


%% 'chat'
    {131072, V1} -> 
        {chat, 'dec_P2P'(V1, [])};

      Else -> 
         exit({error,{asn1,{invalid_choice_tag,Else}}})
   end
.


%%================================
%%  Msg
%%================================
enc_Msg(Val) ->
    enc_Msg(Val, [<<48>>]).

enc_Msg(Val, TagIn) ->
{_,Cindex1,Cindex2,Cindex3,Cindex4} = Val,

%%-------------------------------------------------
%% attribute id(1) with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_integer(Cindex1, [<<2>>]),

%%-------------------------------------------------
%% attribute feed(2)   External ROSTER:Adr
%%-------------------------------------------------
   {EncBytes2,EncLen2} = 'enc_Adr'(Cindex2, []),

%%-------------------------------------------------
%% attribute files(3) with type SET OF
%%-------------------------------------------------
   {EncBytes3,EncLen3} = 'enc_Msg_files'(Cindex3, [<<49>>]),

%%-------------------------------------------------
%% attribute type(4) with type ENUMERATED
%%-------------------------------------------------
   {EncBytes4,EncLen4} = case Cindex4 of
new -> encode_tags([<<10>>], [0], 1);
edit -> encode_tags([<<10>>], [1], 1);
delete -> encode_tags([<<10>>], [2], 1);
Enumval2 -> exit({error,{asn1, {enumerated_not_in_range,Enumval2}}})
end,

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3, EncBytes4],
LenSoFar = EncLen1 + EncLen2 + EncLen3 + EncLen4,
encode_tags(TagIn, BytesSoFar, LenSoFar).



%%================================
%%  Msg_files
%%================================
enc_Msg_files(Val, TagIn) ->
      {EncBytes,EncLen} = 'enc_Msg_files_components'(Val,[],0),
   encode_tags(TagIn, EncBytes, EncLen).

'enc_Msg_files_components'([], AccBytes, AccLen) -> 
   {lists:reverse(AccBytes),AccLen};

'enc_Msg_files_components'([H|T],AccBytes, AccLen) ->
   {EncBytes,EncLen} = 'enc_Bin'(H, [<<48>>]),
   'enc_Msg_files_components'(T,[EncBytes|AccBytes], AccLen + EncLen).



dec_Msg(Tlv) ->
   dec_Msg(Tlv, [16]).

dec_Msg(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute id(1) with type INTEGER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_integer(V1, [2]),

%%-------------------------------------------------
%% attribute feed(2)   External ROSTER:Adr
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = 'dec_Adr'(V2, []),

%%-------------------------------------------------
%% attribute files(3) with type SET OF
%%-------------------------------------------------
[V3|Tlv4] = Tlv3, 
Term3 = 'dec_Msg_files'(V3, [17]),

%%-------------------------------------------------
%% attribute type(4) with type ENUMERATED
%%-------------------------------------------------
[V4|Tlv5] = Tlv4, 
Term4 = case decode_integer(V4, [10]) of
0 -> new;
1 -> edit;
2 -> delete;
Default1 -> exit({error,{asn1,{illegal_enumerated,Default1}}})
end,

case Tlv5 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv5}}}) % extra fields not allowed
end,
Res1 = {'Msg',Term1,Term2,Term3,Term4},
Res1.
'dec_Msg_files'(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),
['dec_Bin'(V1, [16]) || V1 <- Tlv1].



%%%
%%% Run-time functions.
%%%

'dialyzer-suppressions'(Arg) ->
    ok.

ber_decode_nif(B) ->
    asn1rt_nif:decode_ber_tlv(B).

collect_parts(TlvList) ->
    collect_parts(TlvList, []).

collect_parts([{_,L}|Rest], Acc) when is_list(L) ->
    collect_parts(Rest, [collect_parts(L)|Acc]);
collect_parts([{3,<<Unused,Bits/binary>>}|Rest], _Acc) ->
    collect_parts_bit(Rest, [Bits], Unused);
collect_parts([{_T,V}|Rest], Acc) ->
    collect_parts(Rest, [V|Acc]);
collect_parts([], Acc) ->
    list_to_binary(lists:reverse(Acc)).

collect_parts_bit([{3,<<Unused,Bits/binary>>}|Rest], Acc, Uacc) ->
    collect_parts_bit(Rest, [Bits|Acc], Unused + Uacc);
collect_parts_bit([], Acc, Uacc) ->
    list_to_binary([Uacc|lists:reverse(Acc)]).

decode_integer(Tlv, TagIn) ->
    Bin = match_tags(Tlv, TagIn),
    Len = byte_size(Bin),
    <<Int:Len/signed-unit:8>> = Bin,
    Int.

decode_octet_string(Tlv, TagsIn) ->
    Bin = match_and_collect(Tlv, TagsIn),
    binary:copy(Bin).

encode_integer(Val) ->
    Bytes =
        if
            Val >= 0 ->
                encode_integer_pos(Val, []);
            true ->
                encode_integer_neg(Val, [])
        end,
    {Bytes,length(Bytes)}.

encode_integer(Val, Tag) when is_integer(Val) ->
    encode_tags(Tag, encode_integer(Val));
encode_integer(Val, _Tag) ->
    exit({error,{asn1,{encode_integer,Val}}}).

encode_integer_neg(- 1, [B1|_T] = L) when B1 > 127 ->
    L;
encode_integer_neg(N, Acc) ->
    encode_integer_neg(N bsr 8, [N band 255|Acc]).

encode_integer_pos(0, [B|_Acc] = L) when B < 128 ->
    L;
encode_integer_pos(N, Acc) ->
    encode_integer_pos(N bsr 8, [N band 255|Acc]).

encode_length(L) when L =< 127 ->
    {[L],1};
encode_length(L) ->
    Oct = minimum_octets(L),
    Len = length(Oct),
    if
        Len =< 126 ->
            {[128 bor Len|Oct],Len + 1};
        true ->
            exit({error,{asn1,too_long_length_oct,Len}})
    end.

encode_restricted_string(OctetList, TagIn) when is_binary(OctetList) ->
    encode_tags(TagIn, OctetList, byte_size(OctetList));
encode_restricted_string(OctetList, TagIn) when is_list(OctetList) ->
    encode_tags(TagIn, OctetList, length(OctetList)).

encode_tags(TagIn, {BytesSoFar,LenSoFar}) ->
    encode_tags(TagIn, BytesSoFar, LenSoFar).

encode_tags([Tag|Trest], BytesSoFar, LenSoFar) ->
    {Bytes2,L2} = encode_length(LenSoFar),
    encode_tags(Trest,
                [Tag,Bytes2|BytesSoFar],
                LenSoFar + byte_size(Tag) + L2);
encode_tags([], BytesSoFar, LenSoFar) ->
    {BytesSoFar,LenSoFar}.

match_and_collect(Tlv, TagsIn) ->
    Val = match_tags(Tlv, TagsIn),
    case Val of
        [_|_] = PartList ->
            collect_parts(PartList);
        Bin when is_binary(Bin) ->
            Bin
    end.

match_tags({T,V}, [T]) ->
    V;
match_tags({T,V}, [T|Tt]) ->
    match_tags(V, Tt);
match_tags([{T,V}], [T|Tt]) ->
    match_tags(V, Tt);
match_tags([{T,_V}|_] = Vlist, [T]) ->
    Vlist;
match_tags(Tlv, []) ->
    Tlv;
match_tags({Tag,_V} = Tlv, [T|_Tt]) ->
    exit({error,{asn1,{wrong_tag,{{expected,T},{got,Tag,Tlv}}}}}).

minimum_octets(0, Acc) ->
    Acc;
minimum_octets(Val, Acc) ->
    minimum_octets(Val bsr 8, [Val band 255|Acc]).

minimum_octets(Val) ->
    minimum_octets(Val, []).
