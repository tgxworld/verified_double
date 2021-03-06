0.8.0 - 2014-01-30
------------------

* Fix: any_instance_of calls should not be recorded by VerifiedDouble.

0.7.0 - 2014-01-22
------------------

* Fix: `VerifiedDouble.wrap(klass)` doesn't get cleared after the test where it
  is called. As a result, expectations of `klass` in other tests gets recorded by
  VerifiedDouble.

0.6.1 - 2013-12-30
------------------

* Fix RspecDoubleValue#content_class: Method fails if the value is an double of an inheriting class.

0.6.0 - 2013-12-28
------------------

* Implement partial mocks.

0.5.3 - 2013-12-26
------------------

* Implement any_instance mocks with new RSpec syntax.

0.5.2 - 2013-12-26
------------------

* Fix: use of is_s? in expect method causes tests to fail.

0.5.1 - 2013-12-25
------------------

* Minor README updates.

0.5.0 - 2013-12-24
------------------

* [#27] Implement describe "contract" feature.

* [#22] Add VerifiedDouble.any_instance_of(klass). Warning: only works with
  should_receive. Doesn't work with expect/allow syntax.

0.4.3 - 2013-10-22
------------------

* [#26] Allow class to be passed to `of_instance` and `of_class`.

0.4.2 - 2013-09-28
------------------

* [#25] Fix: cannot mock is_a? on a VerifiedDouble instance double.

0.4.1 - 2013-08-17
------------------

* [#20] Fix: Cannot get stack frame of method signature recorded within a shared example.

* [#21] Fix: Class double return value cannot be verified.

0.4.0 - 2013-07-28
------------------

* [#7] Pass: I should be able to use the RSpec's new expect syntax with
  VerifiedDouble.

* [#7] Require verified_double/rspec_configuration in order to integrate
  verified_double with rspec.

* [#18] Fix Scenario: stubbed doubles using hash syntax are no longer being
  recorded after 0.3.0.

* [#19] Ensure: if `VerifiedDouble.of_instance(class_name, method_stubs={})` is
  used a argument or return value value of an expectation, then it should
  not interfere with the method signature recording of the expectation.

0.3.0 - 2013-07-19
------------------

* [#17] Major refactor: extend RSpec doubles with VerifiedDouble recording
  functionality. No more need for RecordingDouble.

0.2.0 - 2013-06-30
------------------

* [#4] Add stack frames and relish app link to output.
* [#12] RecordingDouble#class should be the class of the object being doubled.
* [#16] Fix handling of doubles passed as method signature values.

Known issues:

* Stack frames sometimes point to verified_double gem instead of where the mock was recorded.


0.1.1 - 2013-06-26
------------------

* Constantize should be a runtime dependency since constantize is used in
  VerifiedDouble::MethodSignatureValue.

* [#10] Fix VerifiedDouble::MethodSignatureValue#modified_class.
  If the value is an rspec double, the modified_class should be the class
  represented by the double's name.


0.1.0 - 2013-06-24
------------------

* [#3] Pass Scenario: Verifying mocks for accessors.
* [#3] Pass Scenario: Verifying mocks for readers
* [#5] Remove rspec-fire dependency.
* [#5] Use VerifiedDouble to mock and stub doubles in own tests.

0.0.2 - 2013-06-22
------------------

* Passes #1: Customizing arguments and return values.
* Set rspec-fire to 1.1 for the meantime.

0.0.1 - 2013-06-02
------------------

* Initial release. Passes "I want to be informed if the mocks I use are verified by contract tests" feature.


