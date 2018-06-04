{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE CPP #-}
module Demo where

import Reflex.Dom.Core

#ifndef ghcjs_HOST_OS
import Language.Javascript.JSaddle.WebSockets
#endif

demo :: MonadWidget t m 
      => m ()
demo = 
  el "div" $ 
    text "This is a demo"


#ifndef ghcjs_HOST_OS
run :: IO ()
run = 
  debug 9090 $ 
    mainWidget demo
#endif
