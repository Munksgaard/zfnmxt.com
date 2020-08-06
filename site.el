(require 'ox-publish)
(setq org-publish-project-alist
      '(
       ("zfnmxt.com"
        :base-directory "./"
        :base-extension "org"
        :publishing-directory "/ssh:nixvps:/var/www/public/"
        :recursive t
        :publishing-function org-html-publish-to-html
        :headline-levels 4             ; Just the default for this project.
        :auto-preamble t
	:auto-sitemap t
	:sitemap-title "posts"
	:sitemap-sort-files anti-chronologically
	:sitemao-style list
        :sitemap-filename "posts.org"
	:section-numbers nil
	:author "zfnmxt"
	:email "zfnmxt@zfnxmt.com"
	:with-toc nil
	:with-timestamps nil
	:html-postamble nil
        )

       ("static"
        :base-directory "./"
        :base-extension "png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
        :publishing-directory "/ssh:nixvps:/var/www/public/"
        :recursive t
        :publishing-function org-publish-attachment
        )

        ("css"
        :base-directory "css/"
        :base-extension "css"
        :publishing-directory "/ssh:nixvps:/var/www/public/css"
        :publishing-function org-publish-attachment
        :recursive t)

       ("all" :components ("zfnmxt.com" "static" "css"))
      ))
