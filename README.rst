|license|

:Version: 0.0.2
:Web: https://github.com/luismayta/node-tweets
:Download: https://github.com/luismayta/node-tweets
:Source: https://github.com/luismayta/node-tweets
:Keywords: node-tweets

.. contents:: Table of Contents:
    :local:

Node Tweets
===========

License
-------

The code in this repository is licensed under the AGPL 3.0 unless
otherwise noted.

Please see ``LICENSE.rst`` for details.

How To Contribute
-----------------

Contributions are very welcome.

Please read `How To Contribute <https://github.com/luismayta/node-tweets/blob/master/CONTRIBUTING.rst>`_ for details.

PR description template should be automatically applied if you are sending PR from gitlab interface; otherwise you
can find it it at `PULL_REQUEST_TEMPLATE.md <https://github.com/luismayta/node-tweets/blob/master/.gitlab/PULL_REQUEST_TEMPLATE.md>`_

Issue report template should be automatically applied if you are sending it from gitlab UI as well; otherwise you
can find it at `ISSUE_TEMPLATE.md <https://github.com/luismayta/node-tweets/blob/master/.gitlab/ISSUE_TEMPLATE.md>`_

Reporting Security Issues
-------------------------

Please do not report security issues in public. Please email security@chatydelivery.com.

Requirements
------------

This is a list of applications that need to be installed previously to
enjoy all the goodies of this configuration:

-  `Python 3.6.4`_
-  `Docker`_
-  `Docker Compose`_
-  `MongoDB`_
-  `NodeJS`_

.. code:: bash

    $ make setup
    $ make docker.build service=app


Troubleshooting
---------------

Wrong pre-commit with pyenv
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Execute the next:

.. code:: bash

    pyenv shell 3.6.4


License
=======

GNU

Changelog
---------

Please see `CHANGELOG`_ for more information what
has changed recently.

Contributing
============

Please see `CONTRIBUTING`_ for details.


Versioning
----------

Releases are managed using gitlab release feature. We use [Semantic Versioning](http://semver.org) for all
the releases. Every change made to the code base will be referred to in the release notes (except for
cleanups and refactorings).

Credits
-------

-  `CONTRIBUTORS`_

Made with :heart: :coffee: and :pizza: by `company`_.

.. |license| image:: https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square
  :target: LICENSE
  :alt: License

.. Links
.. _`CHANGELOG`: CHANGELOG.rst
.. _`CONTRIBUTORS`: AUTHORS.rst
.. _`CONTRIBUTING`: CONTRIBUTING.rst


.. _`company`: https://github.com/luismayta
.. dependences
.. _`Python 3.6.4`: https://www.python.org/downloads/release/python-364
.. _`Docker`: https://www.docker.com/
.. _`Docker Compose`: https://docs.docker.com/compose/
.. _`MongoDB`: https://www.mongodb.com/
.. _`NodeJS`: https://nodejs.org/en
