# >>> BEGIN BASE CONFIG (AUTO-GENERATED)
# !!! DO NOT EDIT THIS SECTION MANUALLY !!!
copyright = '2016-2025, Freenove'
author = 'Freenove'
release = 'v1.0.0'
version = 'v1.0.0'
# 啦啦啦啦啦
# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

# extensions = ['recommonmark','sphinx_markdown_tables']
extensions = [
    "sphinx.ext.duration",
    "sphinx.ext.doctest",
    "sphinx.ext.extlinks",
    "sphinx.ext.intersphinx",
    "sphinx.ext.extlinks",
    "sphinx.ext.autosectionlabel",
    "sphinxcontrib.googleanalytics",
    # "sphinx_favicon"
]

autosectionlabel_prefix_document = True
googleanalytics_id="G-THC0SQQTDX"

source_suffix = {
    '.rst': 'restructuredtext',
}

templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_static_path = ['_static']
html_favicon = "_static/images/freenove_logo_tag_icon.png"
html_logo = "_static/images/freenove_logo_home_button.png"

# html_favicon = "https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/images/freenove_logo_tag_icon.png"
# html_logo = "https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/images/freenove_logo_home_button.png"

html_theme = 'sphinx_rtd_theme'
html_theme_options = {
    'collapse_navigation': False,
    'logo_only': True,
    'navigation_depth': -1,
    'includehidden': True,
    'flyout_display': 'hidden',
    'version_selector': True,
    'prev_next_buttons_location': 'both',
    'style_external_links': True,
    'language_selector': True,
    # 'titles_only': True,
    # 'style_nav_header_background': '#E3E3E3',

}
# html_copy_source = False
# html_show_sourcelink = False

# multi-language docs
language = 'en'
locale_dirs = ['../locales/']   # path is example but recommended.
gettext_compact = False  # optional.
gettext_uuid = True  # optional.

rst_prolog = """
.. include:: <s5defs.txt>
.. include:: ../../../_static/style/custom-style.txt
"""

variables_to_export = [
    "project",
    "copyright",
    "version",
]
frozen_locals = dict(locals())
prolog = "\\n".join(
    map(lambda x: f".. |{x}| replace:: {frozen_locals[x]}",
        variables_to_export)
)
# rst_prolog = rst_prolog + prolog
print(rst_prolog)
del frozen_locals

html_css_files = [
    'https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/css/color-roles.css',
    'https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/css/custom.css',
    'https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/css/navigationStyle.css',
]

html_js_files = [
    'https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/js/custom.js',
    # 'js/custom.js'
]

extlinks = {
    "Freenove": (
        "https://docs.freenove.com/projects/%s/en/latest/", None
    )
}

html_baseurl = os.environ.get("READTHEDOCS_CANONICAL_URL", "/")

intersphinx_mapping = {
    # "fnk0017": ("https://docs.freenove.com/projects/fnk0017/en/latest/", None),
}
intersphinx_disabled_reftypes = ["*"]


def setup(app):
    pass
    # app.add_css_file("css/custom.css")
    # app.add_css_file('https://cdn.jsdelivr.net/gh/Freenove/freenove-docs/docs/source/_static/css/custom.css')

# <<< END BASE CONFIG