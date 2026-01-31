Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8O6OLeYQfmkqVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5DDC2470
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 321F160B5F;
	Sat, 31 Jan 2026 14:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mQmv0Tv9aakp; Sat, 31 Jan 2026 14:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3571C60B64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869539;
	bh=Qf0mhDXuGgvxgZB61QxmhrGQz1icMrc5GOk5uUew8JA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WfZYqNZKNM38nH0WDVytu/SedYUF0s+mc12gXvFjuGrdtApNYBlAzyU1+NQrI3Gey
	 HpKx9fuOT831/vzmVoj2p5WKkfWofsFAhN1Ph0cEV2IYezshq67pIIcJaVCogbwUgx
	 IcgEaOm/F5EM5gWEHP1T+C0dY+0RrF19Df8l37KSRLRPRlBPWTkFlEKdscSwAKj/wG
	 85hvzk3dmnxHJD+eMtKitcp1n3AliDCDrgzo6JV7KVzehF0s997nvmSkr22gbNQ21H
	 en5wcrtO+SNzZUq5f4TQtOKwxXHJ6XWqw7/tXs1yDngzLnUqiXTU6YTALcGaatUla2
	 zFrqru/lUCvmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3571C60B64;
	Sat, 31 Jan 2026 14:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D84B2D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2519260B4B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xWWeF8LOfKTp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 13FA060B4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13FA060B4C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13FA060B4C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A9A914454B;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BFFCC2BCAF;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBua-0000000AVmN-1hvH; Sat, 31 Jan 2026 15:25:20 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Sat, 31 Jan 2026 15:25:14 +0100
Message-ID: <b6502c5c5576d00afb6eb275600eb1fdc8abff87.1769867954.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869522;
 bh=JgAESjeyMdGBTP/DT74Q19UkIkpbBQsD4O6RYrpw4MQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FWjwGdDDFTueSCv2dGBxIxcKTvz6ucwoQyWv2j0Enk5xwhFFzMr/Ai1X7nhp7J0Zn
 KUZWXHrUjbulh7pnOD45vi2mjdH9u1F+3y55NKPPkrYzNy4Svo+LXOhE95ucYTCkqs
 zm4i6CzQop1iYv6z8oZ8TnQOhSk/9BLdRXK06mDyPMJnjoIWWrE8MBP43XiAHGqFlT
 sVOK8sBbmRg991tJEBDsw1JPHerSy4TVVL3/W1Lm52j+xgKTOMWxuYO30ST/Bj8CoK
 tIyYF3hyUU0JvsJ+CCR7VWRAzO/+o1rg53sCKQ57wQ0PxRSyOm/afznVCo5F8higx+
 OCD2IcsBZSeGA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FWjwGdDD
Subject: [Intel-wired-lan] [PATCH v4 40/41] docs: python: add helpers to run
 unit tests
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5C5DDC2470
X-Rspamd-Action: no action

While python internal libraries have support for unit tests, its
output is not nice. Add a helper module to improve its output.

I wrote this module last year while testing some scripts I used
internally. The initial skeleton was generated with the help of
LLM tools, but it was higly modified to ensure that it will work
as I would expect.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/tools/python.rst      |   2 +
 Documentation/tools/unittest.rst    |  24 ++
 tools/lib/python/unittest_helper.py | 348 ++++++++++++++++++++++++++++
 3 files changed, 374 insertions(+)
 create mode 100644 Documentation/tools/unittest.rst
 create mode 100755 tools/lib/python/unittest_helper.py

diff --git a/Documentation/tools/python.rst b/Documentation/tools/python.rst
index 1444c1816735..3b7299161f20 100644
--- a/Documentation/tools/python.rst
+++ b/Documentation/tools/python.rst
@@ -11,3 +11,5 @@ Python libraries
    feat
    kdoc
    kabi
+
+   unittest
diff --git a/Documentation/tools/unittest.rst b/Documentation/tools/unittest.rst
new file mode 100644
index 000000000000..14a2b2a65236
--- /dev/null
+++ b/Documentation/tools/unittest.rst
@@ -0,0 +1,24 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+===============
+Python unittest
+===============
+
+Checking consistency of python modules can be complex. Sometimes, it is
+useful to define a set of unit tests to help checking them.
+
+While the actual test implementation is usecase dependent, Python already
+provides a standard way to add unit tests by using ``import unittest``.
+
+Using such class, requires setting up a test suite. Also, the default format
+is a little bit ackward. To improve it and provide a more uniform way to
+report errors, some unittest classes and functions are defined.
+
+
+Unittest helper module
+======================
+
+.. automodule:: lib.python.unittest_helper
+   :members:
+   :show-inheritance:
+   :undoc-members:
diff --git a/tools/lib/python/unittest_helper.py b/tools/lib/python/unittest_helper.py
new file mode 100755
index 000000000000..d2efb78d8561
--- /dev/null
+++ b/tools/lib/python/unittest_helper.py
@@ -0,0 +1,348 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+# Copyright(c) 2025-2026: Mauro Carvalho Chehab <mchehab@kernel.org>.
+#
+# pylint: disable=C0103,R0912,R0914,E1101
+
+"""
+Provides helper functions and classes execute python unit tests.
+
+Those help functions provide a nice colored output summary of each
+executed test and, when a test fails, it shows the different in diff
+format when running in verbose mode, like::
+
+    $ tools/unittests/nested_match.py -v
+    ...
+    Traceback (most recent call last):
+    File "/new_devel/docs/tools/unittests/nested_match.py", line 69, in test_count_limit
+        self.assertEqual(replaced, "bar(a); bar(b); foo(c)")
+        ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+    AssertionError: 'bar(a) foo(b); foo(c)' != 'bar(a); bar(b); foo(c)'
+    - bar(a) foo(b); foo(c)
+    ?       ^^^^
+    + bar(a); bar(b); foo(c)
+    ?       ^^^^^
+    ...
+
+It also allows filtering what tests will be executed via ``-k`` parameter.
+
+Typical usage is to do::
+
+    from unittest_helper import run_unittest
+    ...
+
+    if __name__ == "__main__":
+        run_unittest(__file__)
+
+If passing arguments is needed, on a more complex scenario, it can be
+used like on this example::
+
+    from unittest_helper import TestUnits, run_unittest
+    ...
+    env = {'sudo': ""}
+    ...
+    if __name__ == "__main__":
+        runner = TestUnits()
+        base_parser = runner.parse_args()
+        base_parser.add_argument('--sudo', action='store_true',
+                                help='Enable tests requiring sudo privileges')
+
+        args = base_parser.parse_args()
+
+        # Update module-level flag
+        if args.sudo:
+            env['sudo'] = "1"
+
+        # Run tests with customized arguments
+        runner.run(__file__, parser=base_parser, args=args, env=env)
+"""
+
+import argparse
+import atexit
+import os
+import re
+import unittest
+import sys
+
+from unittest.mock import patch
+
+
+class Summary(unittest.TestResult):
+    """
+    Overrides ``unittest.TestResult`` class to provide a nice colored
+    summary. When in verbose mode, displays actual/expected difference in
+    unified diff format.
+    """
+    def __init__(self, *args, **kwargs):
+        super().__init__(*args, **kwargs)
+
+        #: Dictionary to store organized test results.
+        self.test_results = {}
+
+        #: max length of the test names.
+        self.max_name_length = 0
+
+    def startTest(self, test):
+        super().startTest(test)
+        test_id = test.id()
+        parts = test_id.split(".")
+
+        # Extract module, class, and method names
+        if len(parts) >= 3:
+            module_name = parts[-3]
+        else:
+            module_name = ""
+        if len(parts) >= 2:
+            class_name = parts[-2]
+        else:
+            class_name = ""
+
+        method_name = parts[-1]
+
+        # Build the hierarchical structure
+        if module_name not in self.test_results:
+            self.test_results[module_name] = {}
+
+        if class_name not in self.test_results[module_name]:
+            self.test_results[module_name][class_name] = []
+
+        # Track maximum test name length for alignment
+        display_name = f"{method_name}:"
+
+        self.max_name_length = max(len(display_name), self.max_name_length)
+
+    def _record_test(self, test, status):
+        test_id = test.id()
+        parts = test_id.split(".")
+        if len(parts) >= 3:
+            module_name = parts[-3]
+        else:
+            module_name = ""
+        if len(parts) >= 2:
+            class_name = parts[-2]
+        else:
+            class_name = ""
+        method_name = parts[-1]
+        self.test_results[module_name][class_name].append((method_name, status))
+
+    def addSuccess(self, test):
+        super().addSuccess(test)
+        self._record_test(test, "OK")
+
+    def addFailure(self, test, err):
+        super().addFailure(test, err)
+        self._record_test(test, "FAIL")
+
+    def addError(self, test, err):
+        super().addError(test, err)
+        self._record_test(test, "ERROR")
+
+    def addSkip(self, test, reason):
+        super().addSkip(test, reason)
+        self._record_test(test, f"SKIP ({reason})")
+
+    def printResults(self):
+        """
+        Print results using colors if tty.
+        """
+        # Check for ANSI color support
+        use_color = sys.stdout.isatty()
+        COLORS = {
+            "OK":            "\033[32m",   # Green
+            "FAIL":          "\033[31m",   # Red
+            "SKIP":          "\033[1;33m", # Yellow
+            "PARTIAL":       "\033[33m",   # Orange
+            "EXPECTED_FAIL": "\033[36m",   # Cyan
+            "reset":         "\033[0m",    # Reset to default terminal color
+        }
+        if not use_color:
+            for c in COLORS:
+                COLORS[c] = ""
+
+        # Calculate maximum test name length
+        if not self.test_results:
+            return
+        try:
+            lengths = []
+            for module in self.test_results.values():
+                for tests in module.values():
+                    for test_name, _ in tests:
+                        lengths.append(len(test_name) + 1)  # +1 for colon
+            max_length = max(lengths) + 2  # Additional padding
+        except ValueError:
+            sys.exit("Test list is empty")
+
+        # Print results
+        for module_name, classes in self.test_results.items():
+            print(f"{module_name}:")
+            for class_name, tests in classes.items():
+                print(f"    {class_name}:")
+                for test_name, status in tests:
+                    # Get base status without reason for SKIP
+                    if status.startswith("SKIP"):
+                        status_code = status.split()[0]
+                    else:
+                        status_code = status
+                    color = COLORS.get(status_code, "")
+                    print(
+                        f"        {test_name + ':':<{max_length}}{color}{status}{COLORS['reset']}"
+                    )
+            print()
+
+        # Print summary
+        print(f"\nRan {self.testsRun} tests", end="")
+        if hasattr(self, "timeTaken"):
+            print(f" in {self.timeTaken:.3f}s", end="")
+        print()
+
+        if not self.wasSuccessful():
+            print(f"\n{COLORS['FAIL']}FAILED (", end="")
+            failures = getattr(self, "failures", [])
+            errors = getattr(self, "errors", [])
+            if failures:
+                print(f"failures={len(failures)}", end="")
+            if errors:
+                if failures:
+                    print(", ", end="")
+                print(f"errors={len(errors)}", end="")
+            print(f"){COLORS['reset']}")
+
+
+def flatten_suite(suite):
+    """Flatten test suite hierarchy."""
+    tests = []
+    for item in suite:
+        if isinstance(item, unittest.TestSuite):
+            tests.extend(flatten_suite(item))
+        else:
+            tests.append(item)
+    return tests
+
+
+class TestUnits:
+    """
+    Helper class to set verbosity level.
+
+    This class discover test files, import its unittest classes and
+    executes the test on it.
+    """
+    def parse_args(self):
+        """Returns a parser for command line arguments."""
+        parser = argparse.ArgumentParser(description="Test runner with regex filtering")
+        parser.add_argument("-v", "--verbose", action="count", default=1)
+        parser.add_argument("-f", "--failfast", action="store_true")
+        parser.add_argument("-k", "--keyword",
+                            help="Regex pattern to filter test methods")
+        return parser
+
+    def run(self, caller_file=None, pattern=None,
+            suite=None, parser=None, args=None, env=None):
+        """
+        Execute all tests from the unity test file.
+
+        It contains several optional parameters:
+
+        ``caller_file``:
+            -  name of the file that contains test.
+
+               typical usage is to place __file__ at the caller test, e.g.::
+
+                    if __name__ == "__main__":
+                        TestUnits().run(__file__)
+
+        ``pattern``:
+            - optional pattern to match multiple file names. Defaults
+              to basename of ``caller_file``.
+
+        ``suite``:
+            - an unittest suite initialized by the caller using
+              ``unittest.TestLoader().discover()``.
+
+        ``parser``:
+            - an argparse parser. If not defined, this helper will create
+              one.
+
+        ``args``:
+            - an ``argparse.Namespace`` data filled by the caller.
+
+        ``env``:
+            - environment variables that will be passed to the test suite
+
+        At least ``caller_file`` or ``suite`` must be used, otherwise a
+        ``TypeError`` will be raised.
+        """
+        if not args:
+            if not parser:
+                parser = self.parse_args()
+            args = parser.parse_args()
+
+        if not caller_file and not suite:
+            raise TypeError("Either caller_file or suite is needed at TestUnits")
+
+        if env:
+            patcher = patch.dict(os.environ, env)
+            patcher.start()
+            # ensure it gets stopped after
+            atexit.register(patcher.stop)
+
+        verbose = args.verbose
+
+        if verbose >= 2:
+            unittest.TextTestRunner(verbosity=verbose).run = lambda suite: suite
+
+        # Load ONLY tests from the calling file
+        if not suite:
+            if not pattern:
+                pattern = caller_file
+
+            loader = unittest.TestLoader()
+            suite = loader.discover(start_dir=os.path.dirname(caller_file),
+                                    pattern=os.path.basename(caller_file))
+
+        # Flatten the suite for environment injection
+        tests_to_inject = flatten_suite(suite)
+
+        # Filter tests by method name if -k specified
+        if args.keyword:
+            try:
+                pattern = re.compile(args.keyword)
+                filtered_suite = unittest.TestSuite()
+                for test in tests_to_inject:  # Use the pre-flattened list
+                    method_name = test.id().split(".")[-1]
+                    if pattern.search(method_name):
+                        filtered_suite.addTest(test)
+                suite = filtered_suite
+            except re.error as e:
+                sys.stderr.write(f"Invalid regex pattern: {e}\n")
+                sys.exit(1)
+        else:
+            # Maintain original suite structure if no keyword filtering
+            suite = unittest.TestSuite(tests_to_inject)
+
+        if verbose >= 2:
+            resultclass = None
+        else:
+            resultclass = Summary
+
+        runner = unittest.TextTestRunner(verbosity=args.verbose,
+                                            resultclass=resultclass,
+                                            failfast=args.failfast)
+        result = runner.run(suite)
+        if resultclass:
+            result.printResults()
+
+        sys.exit(not result.wasSuccessful())
+
+
+def run_unittest(fname):
+    """
+    Basic usage of TestUnits class.
+
+    Use it when there's no need to pass any extra argument to the tests
+    with. The recommended way is to place this at the end of each
+    unittest module::
+
+        if __name__ == "__main__":
+            run_unittest(__file__)
+    """
+    TestUnits().run(fname)
-- 
2.52.0

