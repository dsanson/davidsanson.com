-------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import qualified Data.Set as S
import           Text.Pandoc.Options

-- Config

siteConfig = defaultConfiguration 
  {
    deployCommand = "make cv.pdf; rsync -avz --exclude '.git' --delete _site/ nfsn:/home/public" 
  }

-- Main

main :: IO ()
main = hakyllWith siteConfig $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "js/*.js" $ do
        route   idRoute
        compile copyFileCompiler

    match (fromList ["cv.pdf", "favicon.ico", "robots.txt", "frivolous_fictions.pdf"]) $ do
        route   idRoute
        compile copyFileCompiler

    match "htaccess" $ do
            route   (constRoute ".htaccess")
            compile copyFileCompiler

    match "css/*.scss" $ do
        route   $ setExtension "css"
        compile $ getResourceString >>=
            withItemBody (unixFilter "sass" ["-s", "--scss"]) >>=
            return .fmap compressCss

    match (fromList ["teaching.markdown", "site.markdown", "index.markdown", "software.markdown", "404.markdown", "410.markdown", "pgp.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "cv.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/cv.html" defaultContext
            >>= relativizeUrls

    match "research/pub/*" $ do
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    match "research/prog/*" $ do
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    match "research/dis/*" $ do
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    
    create ["research/index.html"] $ do
        route idRoute
        compile $ do

            pubs <- recentFirst =<< loadAllSnapshots "research/pub/*" "content"
            progs <- recentFirst =<< loadAllSnapshots "research/prog/*" "content"
            dis <- recentFirst =<< loadAllSnapshots "research/dis/*" "content"
            let archiveCtx =
                    listField "pubs" postCtx (return pubs) `mappend`
                    listField "progs" postCtx (return progs) `mappend`
                    listField "dis" postCtx (return dis) `mappend`
                    constField "title" "Research – David Sanson"            `mappend`
                    constField "section" "research" `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/research-page.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls

    match "texts/*.md" $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/texts.html" defaultContext
            >>= relativizeUrls
   
    create ["texts/index.html"] $ do
        route idRoute
        compile $ do

            texts <- loadAll "texts/*.md"
            let textCtx =
                    listField "posts" defaultContext (return texts) `mappend`
                    constField "title" "Philosophy Texts" `mappend`
                    constField "section" "teaching" `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/texts-page.html" textCtx
                >>= loadAndApplyTemplate "templates/default.html" textCtx
                >>= relativizeUrls

    match "handouts/*.md" $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/handouts.html" defaultContext
            >>= relativizeUrls
   
    create ["handouts/index.html"] $ do
        route idRoute
        compile $ do

            handouts <- loadAll "handouts/*.md"
            let textCtx =
                    listField "posts" defaultContext (return handouts) `mappend`
                    constField "title" "Philosophy Handouts" `mappend`
                    constField "section" "teaching" `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/handouts-page.html" textCtx
                >>= loadAndApplyTemplate "templates/default.html" textCtx
                >>= relativizeUrls

    match (fromList ["251/syllabus.markdown", "251/schedule.markdown", "251/index.markdown", "251/assignments.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/251.html" defaultContext
            >>= relativizeUrls

    match "251/assn/*.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/251.html" defaultContext
            >>= relativizeUrls

    match (fromList ["363/syllabus.markdown", "363/schedule.markdown", "363/index.markdown", "363/assignments.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/363.html" defaultContext
            >>= relativizeUrls


    match "logic/index.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/logic.html" defaultContext
            >>= relativizeUrls

    match (fromList ["logic/syllabus.markdown", "logic/schedule.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/logic.html" defaultContext
            >>= relativizeUrls

    match "logic/flashcards/*.txt" $ do
        route   idRoute
        compile copyFileCompiler
        
    match "logic/flashcards/htaccess" $ do
            route   (constRoute "logic/flashcards/.htaccess")
            compile copyFileCompiler

    match (fromList ["logic/flashcards/HEADER.html"]) $ do
        route   idRoute
        compile copyFileCompiler

    match "logic/supplements/*.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/logic.html" defaultContext
            >>= relativizeUrls
   
    match "logic/supplements/revised/*.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocMathCompiler
            >>= loadAndApplyTemplate "templates/logic-supp.html" defaultContext
            >>= relativizeUrls

    -- create ["logic/supplements/index.html"] $ do
    --     route idRoute
    --     compile $ do
    --
    --         logic <- loadAll "logic/supplements/*.markdown"
    --         let textCtx =
    --                 listField "posts" defaultContext (return logic) `mappend`
    --                 constField "title" "Logic Textbook Supplements" `mappend`
    --                 constField "section" "teaching" `mappend`
    --                 constField "author" "David Sanson" `mappend`
    --                 defaultContext
    --         
    --         makeItem ""
    --             >>= loadAndApplyTemplate "templates/logic-supplements.html" textCtx
    --             >>= loadAndApplyTemplate "templates/logic.html" textCtx
    --             >>= relativizeUrls
    --
    -- match "logic/assn/*.markdown" $ do
    --     route   $ setExtension "html"
    --     compile $ pandocMathCompiler
    --         >>= loadAndApplyTemplate "templates/logic.html" defaultContext
    --         >>= relativizeUrls
    --
    -- create ["logic/assn/index.html"] $ do
    --     route idRoute
    --     compile $ do
    --
    --         logic <- loadAll "logic/assn/*.markdown"
    --         let textCtx =
    --                 listField "posts" defaultContext (return logic) `mappend`
    --                 constField "title" "Assignments" `mappend`
    --                 constField "section" "teaching" `mappend`
    --                 constField "author" "David Sanson" `mappend`
    --                 defaultContext
    --         
    --         makeItem ""
    --             >>= loadAndApplyTemplate "templates/logic-assn.html" textCtx
    --             >>= loadAndApplyTemplate "templates/logic.html" textCtx
    --             >>= relativizeUrls

    match (fromList ["363s2015/syllabus.markdown", "363s2015/assignments.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/363s2015.html" defaultContext
            >>= relativizeUrls

    match "363s2015/index.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/course-page.html" defaultContext
            >>= relativizeUrls


    match "gizmos/*.markdown" $ do
        route   $ gsubRoute "posts" (const "") `composeRoutes` rmDateRoute
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    gizmoPostCtx
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/default.html" gizmoPostCtx
            >>= relativizeUrls
 
    create ["gizmos/index.html"] $ do
        route idRoute
        compile $ do

            gizmos <- recentFirst =<< loadAllSnapshots "gizmos/*.markdown" "content"
            let archiveCtx =
                    listField "gizmos" postCtx (return gizmos) `mappend`
                    constField "title" "Gizmos – David Sanson"            `mappend`
                    constField "section" "gizmos" `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/gizmos-page.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls

   
    match "templates/*" $ compile templateCompiler


-------------

postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext

gizmoPostCtx :: Context String
gizmoPostCtx =
    dateField "date" "%B %e, %Y" `mappend`
    constField "section" "gizmos" `mappend`
    defaultContext


-- Take out the post/YYYY-MM-DD part from the post URL
rmDateRoute = 
  gsubRoute "/[0-9]{4}-[0-9]{2}-[0-9]{2}-" (const "/")
  `composeRoutes` setExtension "html"

pandocMathCompiler =
    let mathExtensions = [Ext_tex_math_dollars, Ext_tex_math_double_backslash,
                          Ext_latex_macros]
        defaultExtensions = writerExtensions defaultHakyllWriterOptions
        newExtensions = foldr S.insert defaultExtensions mathExtensions
        writerOptions = defaultHakyllWriterOptions {
                          writerExtensions = newExtensions,
                          writerHTMLMathMethod = MathJax ""
                        }
    in pandocCompilerWith defaultHakyllReaderOptions writerOptions
