%%%-------------------------------------------------------------------
%%% @author rbnpercy
%%% @copyright (C) 2017, Robin Percy
%%% @doc
%%%
%%% @end
%%% Created : 16. Oct 2017
%%%-------------------------------------------------------------------

-module(auth0_sample_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    auth0_sample_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================

whoa() ->
  try
    talk(),
    _Knight = "None shall pass!",
    _ = [N*2 || N <- lists:seq(1,100)],
    throw(up),
    _WillReturnThis = tequila
  catch
    Exception:Reason -> {caught, Exception, Reason}
  end.
