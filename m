Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDtpMfMQfmkbVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50703C2528
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0E9040BE1;
	Sat, 31 Jan 2026 14:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6uZ7T8UfHymb; Sat, 31 Jan 2026 14:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96BCA40B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869549;
	bh=kgWRZJO10pCbmbrYBsmWwI+Ld/AoTtijA1FhNorGAok=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zEhd6E33vR4GH6HowG5hW+VQ+KYTX4QX/JL4y4tJ13gjtAlQYTsYyol8FWlkACq1c
	 ETGfzfyJLAhPOksv5Qzk1SMuVcSdGS0gcghCm893zxQpKG1WgXoBdqaUxC4DTmUWPt
	 b7QbJ6pCAQ05lXccXwiP/Ae8o3IOOzkBqIWQrWH1NSU5C1loDOyEZWcxD18NAFGWTU
	 njr0SXnP9Zw679eg08m32rp136Xtamyw1eFH0LHupI+Fj9p7f3UP9xzRxkKKHHhlPq
	 yg48vKAyyo88KTqe8vNlvCaZW4IC2IVOWN4hNvZT8jOnRlMiKNtYHbK93EVjI1iYyX
	 jWThRoDRLXiYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96BCA40B8C;
	Sat, 31 Jan 2026 14:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 28D9B25F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4BE540814
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mb1blmWhEo01 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 714AF40820
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 714AF40820
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 714AF40820
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B018644558;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30946C4DDF2;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBua-0000000AVmR-1p2Y; Sat, 31 Jan 2026 15:25:20 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>, Kees Cook <kees@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Sat, 31 Jan 2026 15:25:15 +0100
Message-ID: <5132658a4c47babf905f1e469eba289ae1ebdc8c.1769867954.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869522;
 bh=BBoYIDvTc4/ZRDpBii5k/vxa0438Gqzt0Fqrx3bypIQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XfC7C9GXjgcC3bK4pVfL/M0YbnVLJf+h24CzHZ+giiSpzH2BFGgGNQ7fN0n9/u7Kh
 UNoQaJyEU2t3gOyoRFq44/qIo8NG8NotEPNT+ppK8CziERcCMZysBJcoV005dAfAL+
 ilBtg8RTllg9DrkKWwS1JoolakTPwaIFkb3WgBcz5wFddBg3CkjcBEjcR+O98j5yV8
 fsn0kKD9t7sLEnixqLDxR73oa2IDmTYJ21FlLPt6miJQV4KjwsEf9EjoLFzlHpKB9E
 l1/lY8P2qf5/lStvrdThacFtFSEARL94VaaAWfsbnaeP0eBAxs7xGU6eRFrKgCDjPS
 +mGijVX0jySPA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XfC7C9GX
Subject: [Intel-wired-lan] [PATCH v4 41/41] tools: unittests: add tests for
 kernel-doc NestedMatch and KernRe
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 50703C2528
X-Rspamd-Action: no action

The NestedMatch logic is complex enough to justify tests to ensure
that it is doing its job.

Add unittests to check the functionality provided by NestedMatch
by replicating expected patterns.

The NestedMatch class handles with complex macros. Add an unittest
to check if its doing the right thing and detect eventual regressions
as we improve its code.

The initial version was generated using gpt-oss:latest LLM
on my local GPU, as LLMs aren't bad transforming patterns
into unittests.

Yet, the curent version contains only the skeleton of what
LLM produced, as I ended higly changing its content to be
more representative and to have real case scenarios.

The kdoc_xforms test suite contains 3 test groups. Two of
them tests the basic functionality of NestedMatch to
replace patterns.

The last one (TestRealUsecases) contains real code snippets
from the Kernel with some cleanups to better fit in 80 columns
and uses the same transforms as kernel-doc, thus allowing
to test the logic used inside kdoc_parser to transform
functions, structs and variable patterns.

Its output is like this:

        $ tools/unittests/kdoc_xforms.py
        Ran 25 tests in 0.003s

        OK
        kdoc_xforms:
            TestDifferentReplacements:
                test_strip_multiple_acquires:               OK
                test_sub_count_parameter:                   OK
                test_sub_mixed_placeholders:                OK
                test_sub_multiple_placeholders:             OK
                test_sub_no_placeholder:                    OK
                test_sub_single_placeholder:                OK
                test_sub_with_capture:                      OK
                test_sub_zero_placeholder:                  OK
            TestMultipleMacros:
                test_acquires_multiple:                     OK
                test_acquires_nested_paren:                 OK
                test_acquires_simple:                       OK
                test_mixed_macros:                          OK
                test_must_hold:                             OK
                test_must_hold_shared:                      OK
                test_no_false_positive:                     OK
                test_no_function:                           OK
                test_no_macro_remains:                      OK
            TestRealUsecases:
                test_functions_with_acquires_and_releases:  OK
                test_raw_struct_group:                      OK
                test_raw_struct_group_tagged:               OK
                test_struct_group:                          OK
                test_struct_group_attr:                     OK
                test_struct_group_tagged_with_private:      OK
                test_struct_kcov:                           OK
                test_vars_stackdepot:                       OK

        Ran 25 tests

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/unittests/kdoc_xforms.py | 654 +++++++++++++++++++++++++++++++++
 1 file changed, 654 insertions(+)
 create mode 100755 tools/unittests/kdoc_xforms.py

diff --git a/tools/unittests/kdoc_xforms.py b/tools/unittests/kdoc_xforms.py
new file mode 100755
index 000000000000..71b42c8c75ea
--- /dev/null
+++ b/tools/unittests/kdoc_xforms.py
@@ -0,0 +1,654 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+# Copyright(c) 2026: Mauro Carvalho Chehab <mchehab@kernel.org>.
+#
+# pylint: disable=C0413,R0904
+
+
+"""
+Unit tests for kernel-doc NestedMatch.
+"""
+
+import os
+import re
+import sys
+import unittest
+
+
+# Import Python modules
+
+SRC_DIR = os.path.dirname(os.path.realpath(__file__))
+sys.path.insert(0, os.path.join(SRC_DIR, "../lib/python"))
+
+from kdoc.kdoc_re import NestedMatch, CFunction
+from kdoc.xforms_lists import CTransforms
+from unittest_helper import run_unittest
+
+#
+# Override unittest.TestCase to better compare diffs ignoring whitespaces
+#
+class TestCaseDiff(unittest.TestCase):
+    """
+    Disable maximum limit on diffs and add a method to better
+    handle diffs with whitespace differences.
+    """
+
+    @classmethod
+    def setUpClass(cls):
+        """Ensure that there won't be limit for diffs"""
+        cls.maxDiff = None
+
+    def assertLogicallyEqual(self, a, b):
+        """
+        Compare two results ignoring multiple whitespace differences.
+
+        This is useful to check more complex matches picked from examples.
+        On a plus side, we also don't need to use dedent.
+        Please notice that line breaks still need to match. We might
+        remove it at the regex, but this way, checking the diff is easier.
+        """
+        a = re.sub(r"[\t ]+", " ", a.strip())
+        b = re.sub(r"[\t ]+", " ", b.strip())
+
+        a = re.sub(" ;", ";", a)
+        b = re.sub(" ;", ";", b)
+
+        self.assertEqual(a, b)
+
+#
+# Tests doing with different macros
+#
+
+class TestMultipleMacros(TestCaseDiff):
+    """
+    Tests doing with different macros.
+
+    Here, we won't use assertLogicallyEqual. Instead, we'll check if each
+    of the expected patterns are present at the answer.
+    """
+
+    def test_acquires_simple(self):
+        """Simple replacement test with __acquires"""
+        line = "__acquires(ctx) foo();"
+        result = NestedMatch(r"__acquires\s*\(").sub("REPLACED", line)
+
+        self.assertNotIn("__acquires(", result)
+        self.assertIn("foo();", result)
+
+    def test_acquires_multiple(self):
+        """Multiple __acquires"""
+        line = "__acquires(ctx) __acquires(other) bar();"
+        result = NestedMatch(r"__acquires\s*\(").sub("REPLACED", line)
+
+        self.assertNotIn("__acquires(", result)
+        self.assertEqual(result.count("REPLACED"), 2)
+
+    def test_acquires_nested_paren(self):
+        """__acquires with nested pattern"""
+        line = "__acquires((ctx1, ctx2)) baz();"
+        result = NestedMatch(r"__acquires\s*\(").sub("REPLACED", line)
+
+        self.assertNotIn("__acquires(", result)
+        self.assertIn("baz();", result)
+
+    def test_must_hold(self):
+        """__must_hold with a pointer"""
+        line = "__must_hold(&lock) do_something();"
+        result = NestedMatch(r"__must_hold\s*\(").sub("REPLACED", line)
+
+        self.assertNotIn("__must_hold(", result)
+        self.assertIn("do_something();", result)
+
+    def test_must_hold_shared(self):
+        """__must_hold with an upercase defined value"""
+        line = "__must_hold_shared(RCU) other();"
+        result = NestedMatch(r"__must_hold_shared\s*\(").sub("REPLACED", line)
+
+        self.assertNotIn("__must_hold_shared(", result)
+        self.assertIn("other();", result)
+
+    def test_no_false_positive(self):
+        """
+        Ensure that unrelated text containing similar patterns is preserved
+        """
+        line = "call__acquires(foo);  // should stay intact"
+        result = NestedMatch(r"\b__acquires\s*\(").sub("REPLACED", line)
+
+        self.assertEqual(result, line)
+
+    def test_mixed_macros(self):
+        """Add a mix of macros"""
+        line = "__acquires(ctx) __releases(ctx) __must_hold(&lock) foo();"
+
+        result = NestedMatch(r"__acquires\s*\(").sub("REPLACED", line)
+        result = NestedMatch(r"__releases\s*\(").sub("REPLACED", result)
+        result = NestedMatch(r"__must_hold\s*\(").sub("REPLACED", result)
+
+        self.assertNotIn("__acquires(", result)
+        self.assertNotIn("__releases(", result)
+        self.assertNotIn("__must_hold(", result)
+
+        self.assertIn("foo();", result)
+
+    def test_no_macro_remains(self):
+        """Ensures that unmatched macros are untouched"""
+        line = "do_something_else();"
+        result = NestedMatch(r"__acquires\s*\(").sub("REPLACED", line)
+
+        self.assertEqual(result, line)
+
+    def test_no_function(self):
+        """Ensures that no functions will remain untouched"""
+        line = "something"
+        result = NestedMatch(line).sub("REPLACED", line)
+
+        self.assertEqual(result, line)
+
+#
+# Check if the diff is logically equivalent. To simplify, the tests here
+# use a single macro name for all replacements.
+#
+
+class TestDifferentReplacements(TestCaseDiff):
+    """
+    Test argument replacements.
+
+    Here, the function name can be anything. So, we picked __attribute__(),
+    to mimic a macro found at the Kernel, but none of the replacements her
+    has any relationship with the Kernel usage.
+    """
+
+    MACRO = "__attribute__"
+
+    @classmethod
+    def setUpClass(cls):
+        """Define a NestedMatch to be used for all tests"""
+        cls.matcher = NestedMatch(re.compile(rf"{cls.MACRO}\s*\("))
+
+    def test_sub_with_capture(self):
+        """Test all arguments replacement with a single arg"""
+        line = f"{self.MACRO}(&ctx)\nfoo();"
+
+        result = self.matcher.sub(r"ACQUIRED(\0)", line)
+
+        self.assertLogicallyEqual("ACQUIRED(&ctx)\nfoo();", result)
+
+    def test_sub_zero_placeholder(self):
+        """Test all arguments replacement with a multiple args"""
+        line = f"{self.MACRO}(arg1, arg2)\nbar();"
+
+        result = self.matcher.sub(r"REPLACED(\0)", line)
+
+        self.assertLogicallyEqual("REPLACED(arg1, arg2)\nbar();", result)
+
+    def test_sub_single_placeholder(self):
+        """Single replacement rule for \1"""
+        line = f"{self.MACRO}(ctx, boo)\nfoo();"
+        result = self.matcher.sub(r"ACQUIRED(\1)", line)
+
+        self.assertLogicallyEqual("ACQUIRED(ctx)\nfoo();", result)
+
+    def test_sub_multiple_placeholders(self):
+        """Replacement rule for both \1 and \2"""
+        line = f"{self.MACRO}(arg1, arg2)\nbar();"
+        result = self.matcher.sub(r"REPLACE(\1, \2)", line)
+
+        self.assertLogicallyEqual("REPLACE(arg1, arg2)\nbar();", result)
+
+    def test_sub_mixed_placeholders(self):
+        """Replacement rule for \0, \1 and additional text"""
+        line = f"{self.MACRO}(foo, bar)\nbaz();"
+        result = self.matcher.sub(r"ALL(\0) FIRST(\1)", line)
+
+        self.assertLogicallyEqual("ALL(foo, bar) FIRST(foo)\nbaz();", result)
+
+    def test_sub_no_placeholder(self):
+        """Replacement without placeholders"""
+        line = f"{self.MACRO}(arg)\nfoo();"
+        result = self.matcher.sub(r"NO_BACKREFS()", line)
+
+        self.assertLogicallyEqual("NO_BACKREFS()\nfoo();", result)
+
+    def test_sub_count_parameter(self):
+        """Verify that the algorithm stops after the requested count"""
+        line = f"{self.MACRO}(a1) x();\n{self.MACRO}(a2) y();"
+        result = self.matcher.sub(r"ONLY_FIRST(\1) ", line, count=1)
+
+        self.assertLogicallyEqual(f"ONLY_FIRST(a1) x();\n{self.MACRO}(a2) y();",
+                                  result)
+
+    def test_strip_multiple_acquires(self):
+        """Check if spaces between removed delimiters will be dropped"""
+        line = f"int {self.MACRO}(1)  {self.MACRO}(2 )   {self.MACRO}(3) foo;"
+        result = self.matcher.sub(r"", line)
+
+        self.assertLogicallyEqual(result, "int foo;")
+
+
+#
+# Test struct_group replacements
+#
+
+
+class TestRealUsecases(TestCaseDiff):
+    """
+    Test diferent usecase patterns found at the Kernel.
+
+    Here, replacements using both NestedMatch and KernRe can be tested,
+    as it will import the actual replacement rules used by kernel-doc.
+    """
+
+    xforms = {
+        "func":   CTransforms.function_xforms,
+        "struct": CTransforms.struct_xforms,
+        "var":    CTransforms.var_xforms,
+    }
+
+    @classmethod
+    def apply_transforms(cls, xform_type, text):
+        """
+        Mimic the behavior of kdoc_parser.apply_transforms() method.
+
+        For each element of STRUCT_XFORMS, apply apply_transforms.
+
+        There are two parameters:
+
+        - ``xform_type``
+            Can be ``func``, ``struct`` or ``var``;
+        - ``text``
+            The text where the sub patterns from CTransforms will be applied.
+        """
+        for search, subst in cls.xforms.get(xform_type):
+            text = search.sub(subst, text)
+
+        return text.strip()
+
+        cls.matcher = NestedMatch(r"\bstruct_group[\w\_]*\(")
+
+    def test_struct_group(self):
+        """
+        Test struct_group using a pattern from
+        drivers/net/ethernet/asix/ax88796c_main.h.
+        """
+        line = """
+            struct tx_pkt_info {
+                    struct_group(tx_overhead,
+                            struct tx_sop_header sop;
+                            struct tx_segment_header seg;
+                    );
+                    struct tx_eop_header eop;
+                    u16 pkt_len;
+                    u16 seq_num;
+            };
+        """
+        expected = """
+            struct tx_pkt_info {
+                    struct tx_sop_header sop;
+                    struct tx_segment_header seg;;
+                    struct tx_eop_header eop;
+                    u16 pkt_len;
+                    u16 seq_num;
+            };
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_struct_group_attr(self):
+        """
+        Test two struct_group_attr using patterns from fs/smb/client/cifspdu.h.
+        """
+        line = """
+            typedef struct smb_com_open_rsp {
+                struct smb_hdr hdr;     /* wct = 34 BB */
+                __u8 AndXCommand;
+                __u8 AndXReserved;
+                __le16 AndXOffset;
+                __u8 OplockLevel;
+                __u16 Fid;
+                __le32 CreateAction;
+                struct_group_attr(common_attributes, __packed,
+                    __le64 CreationTime;
+                    __le64 LastAccessTime;
+                    __le64 LastWriteTime;
+                    __le64 ChangeTime;
+                    __le32 FileAttributes;
+                );
+                __le64 AllocationSize;
+                __le64 EndOfFile;
+                __le16 FileType;
+                __le16 DeviceState;
+                __u8 DirectoryFlag;
+                __u16 ByteCount;        /* bct = 0 */
+            } __packed OPEN_RSP;
+
+            typedef struct {
+                struct_group_attr(common_attributes, __packed,
+                    __le64 CreationTime;
+                    __le64 LastAccessTime;
+                    __le64 LastWriteTime;
+                    __le64 ChangeTime;
+                    __le32 Attributes;
+                );
+                __u32 Pad1;
+                __le64 AllocationSize;
+                __le64 EndOfFile;
+                __le32 NumberOfLinks;
+                __u8 DeletePending;
+                __u8 Directory;
+                __u16 Pad2;
+                __le32 EASize;
+                __le32 FileNameLength;
+                union {
+                    char __pad;
+                    DECLARE_FLEX_ARRAY(char, FileName);
+                };
+            } __packed FILE_ALL_INFO;       /* level 0x107 QPathInfo */
+        """
+        expected = """
+            typedef struct smb_com_open_rsp {
+                struct smb_hdr hdr; /* wct = 34 BB */
+                __u8 AndXCommand;
+                __u8 AndXReserved;
+                __le16 AndXOffset;
+                __u8 OplockLevel;
+                __u16 Fid;
+                __le32 CreateAction;
+                __le64 CreationTime;
+                __le64 LastAccessTime;
+                __le64 LastWriteTime;
+                __le64 ChangeTime;
+                __le32 FileAttributes;;
+                __le64 AllocationSize;
+                __le64 EndOfFile;
+                __le16 FileType;
+                __le16 DeviceState;
+                __u8 DirectoryFlag;
+                __u16 ByteCount; /* bct = 0 */
+            } OPEN_RSP;
+
+        typedef struct {
+            __le64 CreationTime;
+            __le64 LastAccessTime;
+            __le64 LastWriteTime;
+            __le64 ChangeTime;
+            __le32 Attributes;;
+            __u32 Pad1;
+            __le64 AllocationSize;
+            __le64 EndOfFile;
+            __le32 NumberOfLinks;
+            __u8 DeletePending;
+            __u8 Directory;
+            __u16 Pad2;
+            __le32 EASize;
+            __le32 FileNameLength;
+            union {
+                char __pad;
+                char FileName[];
+            };
+        } FILE_ALL_INFO; /* level 0x107 QPathInfo */
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_raw_struct_group(self):
+        """
+        Test a __struct_group pattern from include/uapi/cxl/features.h.
+        """
+        line = """
+            struct cxl_mbox_get_sup_feats_out {
+                __struct_group(cxl_mbox_get_sup_feats_out_hdr, hdr, /* empty */,
+                    __le16 num_entries;
+                    __le16 supported_feats;
+                    __u8 reserved[4];
+                );
+                struct cxl_feat_entry ents[] __counted_by_le(num_entries);
+            } __attribute__ ((__packed__));
+        """
+        expected = """
+            struct cxl_mbox_get_sup_feats_out {
+                __le16 num_entries;
+                __le16 supported_feats;
+                __u8 reserved[4];;
+                struct cxl_feat_entry ents[];
+            };
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_raw_struct_group_tagged(self):
+        """
+        Test some  struct_group_tagged patterns from drivers/cxl/cxl.h.
+        """
+        line = """
+            struct cxl_regs {
+                struct_group_tagged(cxl_component_regs, component,
+                    void __iomem *hdm_decoder;
+                    void __iomem *ras;
+                );
+
+                struct_group_tagged(cxl_device_regs, device_regs,
+                    void __iomem *status, *mbox, *memdev;
+                );
+
+                struct_group_tagged(cxl_pmu_regs, pmu_regs,
+                    void __iomem *pmu;
+                );
+
+                struct_group_tagged(cxl_rch_regs, rch_regs,
+                    void __iomem *dport_aer;
+                );
+
+                struct_group_tagged(cxl_rcd_regs, rcd_regs,
+                    void __iomem *rcd_pcie_cap;
+                );
+            };
+        """
+        expected = """
+        struct cxl_regs {
+            struct cxl_component_regs component; void __iomem *hdm_decoder;
+            void __iomem *ras;;
+
+            struct cxl_device_regs device_regs; void __iomem *status;
+
+            struct cxl_pmu_regs pmu_regs; void __iomem *pmu;;
+
+            struct cxl_rch_regs rch_regs; void __iomem *dport_aer;;
+
+            struct cxl_rcd_regs rcd_regs; void __iomem *rcd_pcie_cap;;
+        };
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_struct_group_tagged_with_private(self):
+        """
+        Replace struct_group_tagged with private, using the same regex
+        for the replacement as what happens in xforms_lists.py.
+
+        As the private removal happens outside NestedGroup class, we manually
+        dropped the remaining part of the struct, to simulate what happens
+        at kdoc_parser.
+
+        Taken from include/net/page_pool/types.h
+        """
+        line = """
+            struct page_pool_params {
+                struct_group_tagged(page_pool_params_fast, fast,
+                    unsigned int    order;
+                    unsigned int    pool_size;
+                    int             nid;
+                    struct device   *dev;
+                    struct napi_struct *napi;
+                    enum dma_data_direction dma_dir;
+                    unsigned int    max_len;
+                    unsigned int    offset;
+                );
+                struct_group_tagged(page_pool_params_slow, slow,
+                    struct net_device *netdev;
+                    unsigned int queue_idx;
+                    unsigned int    flags;
+            /* private: used by test code only */
+        """
+        expected = """
+            struct page_pool_params {
+                struct page_pool_params_fast fast; unsigned int order;
+                unsigned int    pool_size;
+                int             nid;
+                struct device   *dev;
+                struct napi_struct *napi;
+                enum dma_data_direction dma_dir;
+                unsigned int    max_len;
+                unsigned int    offset;;
+                struct page_pool_params_slow slow; struct net_device *netdev;
+                unsigned int queue_idx;
+                unsigned int    flags;
+                /* private: used by test code only */
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_struct_kcov(self):
+        """
+        """
+        line = """
+            struct kcov {
+                refcount_t              refcount;
+                spinlock_t              lock;
+                enum kcov_mode          mode __guarded_by(&lock);
+                unsigned int            size __guarded_by(&lock);
+                void                    *area __guarded_by(&lock);
+                struct task_struct      *t __guarded_by(&lock);
+                bool                    remote;
+                unsigned int            remote_size;
+                int                     sequence;
+            };
+        """
+        expected = """
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+
+    def test_struct_kcov(self):
+        """
+        Test a struct from kernel/kcov.c.
+        """
+        line = """
+            struct kcov {
+                refcount_t              refcount;
+                spinlock_t              lock;
+                enum kcov_mode          mode __guarded_by(&lock);
+                unsigned int            size __guarded_by(&lock);
+                void                    *area __guarded_by(&lock);
+                struct task_struct      *t __guarded_by(&lock);
+                bool                    remote;
+                unsigned int            remote_size;
+                int                     sequence;
+            };
+        """
+        expected = """
+            struct kcov {
+                refcount_t              refcount;
+                spinlock_t              lock;
+                enum kcov_mode          mode;
+                unsigned int            size;
+                void                    *area;
+                struct task_struct      *t;
+                bool                    remote;
+                unsigned int            remote_size;
+                int                     sequence;
+            };
+        """
+
+        result = self.apply_transforms("struct", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_vars_stackdepot(self):
+        """
+        Test guarded_by on vars from lib/stackdepot.c.
+        """
+        line = """
+            size_t pool_offset __guarded_by(&pool_lock) = DEPOT_POOL_SIZE;
+            __guarded_by(&pool_lock) LIST_HEAD(free_stacks);
+            void **stack_pools __pt_guarded_by(&pool_lock);
+        """
+        expected = """
+            size_t pool_offset = DEPOT_POOL_SIZE;
+            struct list_head free_stacks;
+            void **stack_pools;
+        """
+
+        result = self.apply_transforms("var", line)
+        self.assertLogicallyEqual(result, expected)
+
+    def test_functions_with_acquires_and_releases(self):
+        """
+        Test guarded_by on vars from lib/stackdepot.c.
+        """
+        line = """
+            bool prepare_report_consumer(unsigned long *flags,
+                                         const struct access_info *ai,
+                                         struct other_info *other_info) \
+                                        __cond_acquires(true, &report_lock);
+
+            int tcp_sigpool_start(unsigned int id, struct tcp_sigpool *c) \
+                                  __cond_acquires(0, RCU_BH);
+
+            bool undo_report_consumer(unsigned long *flags,
+                                      const struct access_info *ai,
+                                      struct other_info *other_info) \
+                                     __cond_releases(true, &report_lock);
+
+            void debugfs_enter_cancellation(struct file *file,
+                                            struct debugfs_cancellation *c) \
+                                           __acquires(cancellation);
+
+            void debugfs_leave_cancellation(struct file *file,
+                                            struct debugfs_cancellation *c) \
+                                           __releases(cancellation);
+
+            acpi_cpu_flags acpi_os_acquire_lock(acpi_spinlock lockp) \
+                                               __acquires(lockp);
+
+            void acpi_os_release_lock(acpi_spinlock lockp,
+                                      acpi_cpu_flags not_used) \
+                                     __releases(lockp)
+        """
+        expected = """
+            bool prepare_report_consumer(unsigned long *flags,
+                                         const struct access_info *ai,
+                                         struct other_info *other_info);
+
+            int tcp_sigpool_start(unsigned int id, struct tcp_sigpool *c);
+
+            bool undo_report_consumer(unsigned long *flags,
+                                      const struct access_info *ai,
+                                      struct other_info *other_info);
+
+            void debugfs_enter_cancellation(struct file *file,
+                                            struct debugfs_cancellation *c);
+
+            void debugfs_leave_cancellation(struct file *file,
+                                            struct debugfs_cancellation *c);
+
+            acpi_cpu_flags acpi_os_acquire_lock(acpi_spinlock lockp);
+
+            void acpi_os_release_lock(acpi_spinlock lockp,
+                                      acpi_cpu_flags not_used)
+        """
+
+        result = self.apply_transforms("func", line)
+        self.assertLogicallyEqual(result, expected)
+
+
+#
+# Run all tests
+#
+if __name__ == "__main__":
+    run_unittest(__file__)
-- 
2.52.0

