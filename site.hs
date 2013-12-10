-------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll

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

    match (fromList ["cv.pdf", "favicon.ico", "robots.txt"]) $ do
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

    match (fromList ["teaching.markdown", "site.markdown", "index.markdown", "software.markdown", "404.markdown", "410.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
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
        compile $ pandocCompiler
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
