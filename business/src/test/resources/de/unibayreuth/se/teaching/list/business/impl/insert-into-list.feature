Feature: Sorted Insertion Acceptance Tests
  This feature tests the functionality of inserting elements into a list so that the list maintains a sorted order.

  Scenario: Insert an element into an empty list
    Given I have an empty list
    When I insert the element with the following value:
      | 5 |
    Then the list should contain the elements in the following order:
      | 5 |

  Scenario: Insert an element into a non-empty sorted list
    Given I have elements with the following values in my list:
      | 3 |
      | 6 |
      | 9 |
    When I insert the element with the following value:
      | 7 |
    Then the list should contain the elements in the following order:
      | 3 |
      | 6 |
      | 7 |
      | 9 |

  Scenario: Insert multiple elements in succession into an empty list
    Given I have an empty list
    When I insert elements with the following values in succession:
      | 7 |
      | 3 |
      | 8 |
    Then the list should contain the elements in the following order:
      | 3 |
      | 7 |
      | 8 |
