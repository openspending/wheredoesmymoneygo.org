Where Does My Money Go?
=======================

`Where Does My Money Go?`_ aims to promote transparency and citizen engagement through 
the analysis and visualisation of information about UK public spending. The site was
launched in 2009 and merged with `OffenerHaushalt`_ in 2010 to form the `OpenSpending`_
project, which tracks government finance from around the world. Where Does My Money 
Go continues to exist as a sub-project with a focus on the United Kingom.

.. _`Where Does My Money Go?`: http://wheredoesmymoneygo.org
.. _`OffenerHaushalt`: http://offenerhaushalt.de
.. _`OpenSpending`: http://openspending.org

What is in this repository?
---------------------------

Where Does My Money Go runs as an application on top of `OpenSpending`_. All data is
stored in the platform and the visualizations and search are driven directly from
its `API`_. As well as providing the source code for the WDMMG live site, this code
base is also intended as an example on which other OpenSpending apps can be
derived.

.. _`OpenSpending`: http://openspending.org
.. _`API`: http://openspending.org/help/api.html

The repository contains a basic layout for the site, based on Twitter's `Bootstrap 2`_
CSS framework, and a skeleton site based on Jekyll, a simple generator tool for static
web sites. The key component is code samples for embedding most of the widgets that are
currently available for OpenSpending: 

.. _`Bootstrap 2`: http://twitter.github.com/bootstrap/

* ``bubbletree.html`` holds the classic `BubbleTree <https://github.com/okfn/bubbletree>`_ 
  diagram, which can be used to easily break down a multi-level hierarchy of 
  classifications (such as the COFOG codes in the UK budget).
* ``bubbletree-map.html`` combines the BubbleTree and a simple vector map of the UK. This 
  would be more work to adapt for a custom site, but the beautiful view may well be worth
  the effort.
* ``dailybread.html`` contains the Daily Bread custom tax viewer, which breaks down
  government expenditure over the approximate tax contribution of the visitor.
* ``spending.html`` is a search interface for transactional spending information, used 
  for the UK's departmental spend in this example. This is useful for datasets which are 
  too unstructured for proper aggregation but contain interesting information at a
  detailed level.


How do I make a budget site for my own country/region?
------------------------------------------------------

If you want to set up a budget monitoring site for your own country, you first need
to acquire some budgetary or spending data and `load it into OpenSpending`_ using the 
site's web interface. Once the data is loaded, you can `fork this repository`_ and 
change the titles, styles and arrangement to meet your individual needs. Finally,
you can either host the site yourself, or let `GitHub Pages`_ do it.

.. _`load it into OpenSpending`: http://wiki.openspending.org/Loading_into_OpenSpending
.. _`fork this repository`: http://help.github.com/fork-a-repo/
.. _`GitHub Pages`: http://pages.github.com/


How do I build the site?
------------------------

The pages in this repository are built to their final form by combining them with
the template in ``_layouts/default.html`` using `Jekyll`_, a Ruby-based static site 
generator. To build the site, you first need to `install Jekyll` (works on either
Mac OS X or Linux)::

  sudo gem install jekyll

After that, you can simply build the site or even run a local web server::

  jeykll --server --auto

If you cannot install jekyll for some reason, you can still experiment with the site
by deploying its contents after each change.

The easiest way to deploy the site is via GitHub pages. To use them, simply adapt the
``CNAME`` file in the root of the repository and push to the ``gh-pages`` branch. All
pages will be automatically built and deployed.

.. _`Jekyll`: https://github.com/mojombo/jekyll
.. _`install Jekyll`: https://github.com/mojombo/jekyll/wiki/install


What customizations should I make if I set up my own site?
----------------------------------------------------------

In order to create a new, white-label site, there are a number of easy tweaks you can
make. 

* Edit the configuration file in ``_config.yml`` to set the overall site title and 
  some basic parameters, such as the OpenSpending installation to be used. Further 
  configuration options, mostly regarding page generation, are available for Jekyll.
* The JavaScript initializations for each of the widgets need to be customized; in 
  particular the dataset name needs to be set and an appropriate set of break down
  dimensions needs to be set for the BubbleTree and DailyBread.
* Adapt the style sheet in ``css/style.css`` to use your own theming; in particular 
  fonts and colorization.
* Replace ``img/logo.png`` to set a custom logo.
* Edit the basic HTML structure of the project in ``_layouts/default.html`` to extend
  or shorten the menu and any other page elements.


Where do I find help?
---------------------

If you need any support in setting up a WDMMG fork, please let us know! 

* `OpenSpending Developers List <http://lists.okfn.org/mailman/listinfo/openspending-dev>`_
* `Issue Tracker <https://github.com/openspending/wheredoesmymoneygo.org/issues>`_ at 
  GitHub (please report any problems here.
* Also join us at ``#openspending`` on FreeNode

