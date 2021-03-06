@three_one

Feature: Pagination with Multiblog
  Scenario: Index pages are accessible from preview server
    Given the Server is running at "paginate-multiblog-app"
    When I go to "/blog1/2011.html"
    Then I should see "Paginate1: true"
    Then I should see "Article Count1: 5"
    Then I should see "Page Num1: 1"
    Then I should see "Num Pages1: 2"
    Then I should see "Per Page1: 5"
    Then I should see "Page Start1: 1"
    Then I should see "Page End1: 5"
    Then I should see "Next Page1: '/blog1/2011/page/2.html'"
    Then I should see "Prev Page1: ''"
    Then I should not see "/blog1/2011-01-01-test-article.html"
    Then I should see "/blog1/2011-01-02-test-article.html"
    Then I should see "/blog1/2011-01-03-test-article.html"
    Then I should see "/blog1/2011-01-04-test-article.html"
    Then I should see "/blog1/2011-01-05-test-article.html"
    Then I should see "/blog1/2011-02-01-test-article.html"
    Then I should not see "/blog2/2011-01-01-test-article.html"
    Then I should not see "/blog2/2011-01-02-test-article.html"
    Then I should not see "/blog2/2011-01-03-test-article.html"
    Then I should not see "/blog2/2011-01-04-test-article.html"
    Then I should not see "/blog2/2011-01-05-test-article.html"

    When I go to "/blog2/2011.html"
    Then I should see "Paginate2: true"
    Then I should see "Article Count2: 3"
    Then I should see "Page Num2: 1"
    Then I should see "Num Pages2: 2"
    Then I should see "Per Page2: 3"
    Then I should see "Page Start2: 1"
    Then I should see "Page End2: 3"
    Then I should see "Next Page2: '/blog2/2011/page/2.html'"
    Then I should see "Prev Page2: ''"
    Then I should not see "/blog2/2011-01-01-test-article.html"
    Then I should not see "/blog2/2011-01-02-test-article.html"
    Then I should see "/blog2/2011-01-03-test-article.html"
    Then I should see "/blog2/2011-01-04-test-article.html"
    Then I should see "/blog2/2011-01-05-test-article.html"
    Then I should not see "/blog1/2011-01-02-test-article.html"
    Then I should not see "/blog1/2011-01-03-test-article.html"
    Then I should not see "/blog1/2011-01-04-test-article.html"
    Then I should not see "/blog1/2011-01-05-test-article.html"
    Then I should not see "/blog1/2011-02-01-test-article.html"

    When I go to "/blog3/2011.html"
    Then I should see "Paginate3: false"
    Then I should see "Article Count3: 7"
    Then I should see "/blog3/2011-01-01-test-article.html"
    Then I should see "/blog3/2011-01-02-test-article.html"
    Then I should see "/blog3/2011-01-03-test-article.html"
    Then I should see "/blog3/2011-01-04-test-article.html"
    Then I should see "/blog3/2011-01-05-test-article.html"
    Then I should see "/blog3/2011-02-01-test-article.html"
    Then I should see "/blog3/2011-02-02-test-article.html"
    Then I should not see "/blog1/2011-01-02-test-article.html"
    Then I should not see "/blog1/2011-01-03-test-article.html"
    Then I should not see "/blog1/2011-01-04-test-article.html"
    Then I should not see "/blog1/2011-01-05-test-article.html"
    Then I should not see "/blog1/2011-02-01-test-article.html"
    Then I should not see "/blog2/2011-01-01-test-article.html"
    Then I should not see "/blog2/2011-01-02-test-article.html"
    Then I should not see "/blog2/2011-01-03-test-article.html"
    Then I should not see "/blog2/2011-01-04-test-article.html"
    Then I should not see "/blog2/2011-01-05-test-article.html"

    When I go to "/blog1/2011/page/2.html"
    Then I should see "Article Count1: 1"
    Then I should see "Page Num1: 2"
    Then I should see "Page Start1: 6"
    Then I should see "Page End1: 6"
    Then I should see "Next Page1: ''"
    Then I should see "Prev Page1: '/blog1/2011.html'"
    Then I should see "/blog1/2011-01-01-test-article.html"
    Then I should not see "/blog1/2011-01-02-test-article.html"
    Then I should not see "/blog1/2011-01-03-test-article.html"
    Then I should not see "/blog1/2011-01-04-test-article.html"
    Then I should not see "/blog1/2011-01-05-test-article.html"
    Then I should not see "/blog1/2011-02-01-test-article.html"

    When I go to "/blog1/tags/bar.html"
    Then I should see "Paginate1: true"
    Then I should see "Article Count1: 2"
    Then I should see "Page Num1: 1"
    Then I should see "Num Pages1: 2"
    Then I should see "Per Page1: 2"
    Then I should see "Page Start1: 1"
    Then I should see "Page End1: 2"
    Then I should see "Next Page1: '/blog1/tags/bar/page/2.html'"
    Then I should see "Prev Page1: ''"
    Then I should see "/blog1/2011-02-01-test-article.html"
    Then I should see "/blog1/2011-01-05-test-article.html"
    Then I should not see "/blog1/2011-02-05-test-article.html"
    Then I should not see "/blog1/2011-01-04-test-article.html"
    Then I should not see "/blog1/2011-01-03-test-article.html"

    When I go to "/blog2/tags/bar.html"
    Then I should see "Paginate2: true"
    Then I should see "Article Count2: 1"
    Then I should see "Page Num2: 1"
    Then I should see "Num Pages2: 3"
    Then I should see "Per Page2: 1"
    Then I should see "Page Start2: 1"
    Then I should see "Page End2: 1"
    Then I should see "Next Page2: '/blog2/tags/bar/page/2.html'"
    Then I should see "Prev Page2: ''"
    Then I should see "/blog2/2011-01-05-test-article.html"
    Then I should not see "/blog2/2011-01-04-test-article.html"
    Then I should not see "/blog2/2011-01-03-test-article.html"
    Then I should not see "/blog2/2011-01-02-test-article.html"
    Then I should not see "/blog2/2011-01-01-test-article.html"

  Scenario: Index pages also get built
    Given a successfully built app at "paginate-multiblog-app"
    When I cd to "build"
    Then the following files should exist:
    | blog1/tags/foo.html        |
    | blog1/tags/bar.html        |
    | blog1/tags/bar/page/2.html |
    | blog1/2011.html            |
    | blog1/2011/page/2.html     |
    | blog2/tags/foo.html        |
    | blog2/tags/bar.html        |
    | blog2/tags/bar/page/2.html |
    | blog2/tags/bar/page/3.html |
    | blog2/2011.html            |
    | blog2/2011/page/2.html     |
    Then the following files should not exist:
    | tags1.html     |
    | calendar1.html |
    | tags2.html     |
    | calendar2.html |
    | tags3.html     |
    | calendar3.html |

    And the file "blog1/2011/page/2.html" should contain "Year1: '2011'"
    And the file "blog1/2011/page/2.html" should contain "Month1: ''"
    And the file "blog1/2011/page/2.html" should contain "Day1: ''"
    And the file "blog1/2011/page/2.html" should contain "Article Count1: 1"
    And the file "blog1/2011/page/2.html" should contain "/blog1/2011-01-01-test-article.html"

    And the file "blog1/tags/bar/page/2.html" should contain "Tag1: bar"
    And the file "blog1/tags/bar/page/2.html" should contain "Article Count1: 2"
    And the file "blog1/tags/bar/page/2.html" should contain "Prev Page1: '/blog1/tags/bar.html'"
    And the file "blog1/tags/bar/page/2.html" should contain "Next Page1: ''"
    And the file "blog1/tags/bar/page/2.html" should contain "/blog1/2011-01-04-test-article.html"
    And the file "blog1/tags/bar/page/2.html" should contain "/blog1/2011-01-03-test-article.html"

    And the file "blog2/2011/page/2.html" should contain "Year2: '2011'"
    And the file "blog2/2011/page/2.html" should contain "Month2: ''"
    And the file "blog2/2011/page/2.html" should contain "Day2: ''"
    And the file "blog2/2011/page/2.html" should contain "Article Count2: 2"
    And the file "blog2/2011/page/2.html" should contain "/blog2/2011-01-01-test-article.html"

    And the file "blog2/tags/bar/page/3.html" should contain "Tag2: bar"
    And the file "blog2/tags/bar/page/3.html" should contain "Article Count2: 1"
    And the file "blog2/tags/bar/page/3.html" should contain "Prev Page2: '/blog2/tags/bar/page/2.html'"
    And the file "blog2/tags/bar/page/3.html" should contain "Next Page2: ''"
    And the file "blog2/tags/bar/page/3.html" should contain "/blog2/2011-01-03-test-article.html"

  Scenario: Adding a tag to a post in preview adds a new index page
    Given the Server is running at "paginate-multiblog-app"
    When I go to "/blog1/tags/foo.html"
    Then I should see "/blog1/2011-01-01-test-article.html"
    Then I should see "Next Page1: ''"

    When I go to "/blog1/tags/foo/page/2.html"
    Then I should see "Not Found"

    And the file "source/blog1/2011-02-03-new-article.html.markdown" has the contents
      """
      ---
      title: "Newest Article"
      date: 2011-02-03
      tags: foo
      ---

      Newer Article Content
      """
    When I go to "/blog1/tags/foo.html"
    Then I should see "Next Page1: '/blog1/tags/foo/page/2.html'"
    Then I should see "/blog1/2011-02-03-new-article.html"
    Then I should not see "/blog1/2011-01-01-test-article.html"

    When I go to "/blog1/tags/foo/page/2.html"
    Then I should see "/blog1/2011-01-01-test-article.html"
