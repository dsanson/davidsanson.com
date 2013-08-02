--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll

-------------

siteConfig = defaultConfiguration 
  {
    deployCommand = "rsync -avz --exclude '.git' --delete _site/ nfsn:/home/public" 
  }

--------------------------------------------------------------------------------
main :: IO ()
main = hakyllWith siteConfig $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match (fromList ["cv.pdf", "favicon.ico"]) $ do
        route   idRoute
        compile copyFileCompiler

    match "htaccess" $ do
            route   (constRoute ".htaccess")
            compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match (fromList ["courses.markdown", "site.markdown", "index.markdown", "software.markdown", "404.markdown", "410.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
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

    
    create ["research.html"] $ do
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

    match "gizmos/*.markdown" $ do
        route   $ gsubRoute "posts" (const "") `composeRoutes` rmDateRoute
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    gizmoPostCtx
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/default.html" gizmoPostCtx
            >>= relativizeUrls
 
    create ["gizmos.html"] $ do
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


--------------------------------------------------------------------------------
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
