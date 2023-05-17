{-# LANGUAGE OverloadedStrings #-}
module AnalyzeTypes
  ()
  where

import qualified Data.ByteString.Builder as B
import qualified Data.Maybe as Maybe
import qualified Data.NonEmptyList as NE
import qualified System.Directory as Dir
import qualified System.FilePath as FP

import qualified AST.Optimized as Opt
import qualified BackgroundWriter as BW
import qualified Build
import qualified Elm.Details as Details
import qualified Elm.ModuleName as ModuleName
import qualified File
import qualified Generate
import qualified Generate.Html as Html
import qualified Reporting
import qualified Reporting.Exit as Exit
import qualified Reporting.Task as Task
import qualified Stuff
import Terminal (Parser(..))



main = do
  -- loadInterfaces :: FilePath -> [Dep] -> [CDep] -> IO (Maybe (Map.Map ModuleName.Raw I.Interface))
  ifaces <- loadInterfaces "path" 


  -- compile :: Pkg.Name -> Map.Map ModuleName.Raw I.Interface -> Src.Module -> Either E.Error Artifacts
  artifacts <- compile pkg ifaces modul