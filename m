Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEBwGRqHemkE7gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 23:00:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DABFA954A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 23:00:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 397C6607C6;
	Wed, 28 Jan 2026 22:00:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cWUnl2cduydm; Wed, 28 Jan 2026 22:00:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87666607C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769637655;
	bh=XJ6q7itnm+/TpNNPTH5koMGshmB1Q0pQS2QUQt+g3Bg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R1aVCpE6woMdJGAUOwXiLEJLWeqoV3JPrs+ATdsDfE6uaJCcZhAC4GQ6kw83IvneM
	 igteQfGnHWMYZU2kn1Es1lyxnCu/9v2F+ouUjxSs1XoN3Z2HTDHVfLD2tYXopYFlIW
	 p4Xa61eQSEG9Qi2rd54JGT9uK4UKvo0oDc9azvR1xcUmfNjqRdw0qLrL5eVUPLog/j
	 QFy8TXF4eUj/494zNbnHdAqc9M+urZTCB+2/PSAqUzwcb6czbNWk6bY70kJC87oeUQ
	 y3PPlUPtHi+LIBawWTlCu2T9pKQWQvc+ceWXbs6kQWZPuOMmPRsb4KbRAgAqcgxc57
	 MEHGFuO9bvj7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87666607C4;
	Wed, 28 Jan 2026 22:00:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1778CD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1170A82E5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:00:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OiPP8R6B_tGo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 22:00:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3BBC882D40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BBC882D40
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BBC882D40
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:00:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id ABD1640DBA;
 Wed, 28 Jan 2026 22:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0B3FC4CEF1;
 Wed, 28 Jan 2026 22:00:48 +0000 (UTC)
Date: Wed, 28 Jan 2026 23:00:45 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>, "David S. Miller"
 <davem@davemloft.net>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, <bpf@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, Randy Dunlap
 <rdunlap@infradead.org>, Shuah Khan <skhan@linuxfoundation.org>, Stanislav
 Fomichev <sdf@fomichev.me>
Message-ID: <20260128230045.781937b5@foz.lan>
In-Reply-To: <fced629d-2470-4673-ab0b-80de11f0e4c5@intel.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <87ecn97ild.fsf@trenco.lwn.net>
 <fced629d-2470-4673-ab0b-80de11f0e4c5@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769637652;
 bh=v6wbKzh3F7F644v0ovvi+Y5SHZExUe48wIX7iPPR5t8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b1wqms2r8OrzKJ/zJa0gAn8jDGSPMeUhVLnYn9xRQTdvsSp/Gwa6249fcMvM5QOpq
 NH27SeEvLSY9TDIZ7AsosgcOBPLM7p1eXM82SAcKOFD2enOdkKZqNRtEa4NdQ4IHKh
 ysmGxpU5XEXMisRRs0S9UXEypFzi98wdbvwqYIjTKnU933lCEvRXu8uqGfnqXiHx8y
 cEJZEVuRUn2KQjXpNjgUt4HJd1D5SFghS7vhN0SF4ANNyt6qEcixWQKEAzz4xFiftb
 h6JX/1aXplZMngfkoTkModJcg9dKiskhi7825/vvKW5j/tb3n6bZqBXnyqpklzHBSD
 oxrV52swzM0Sw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=b1wqms2r
Subject: Re: [Intel-wired-lan] [PATCH v2 00/25] kernel-doc: make it parse
 new functions and structs
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:corbet@lwn.net,m:davem@davemloft.net,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:kuba@kernel.org,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mchehab@kernel.org,m:richardcochran@gmail.com,m:bpf@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sdf@fomichev.me,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lwn.net,davemloft.net,intel.com,kernel.org,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org,infradead.org,linuxfoundation.org,fomichev.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8DABFA954A
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 10:15:51 -0800
Jacob Keller <jacob.e.keller@intel.com> wrote:

> On 1/28/2026 9:27 AM, Jonathan Corbet wrote:
> > Mauro Carvalho Chehab <mchehab+huawei@kernel.org> writes:
> >   
> >> Hi Jon,
> >>
> >> It is impressive how a single patch became a series with 25 ones ;-)  
> > 
> > *sigh*
> >   
> 
> Splitting things up helped me understand all the changes at least :)
> 
> > I will try to have a good look at these shortly.  It seems pretty clear
> > that this isn't 7.0 material at this point, though.
> > 
> > One thing that jumped at me:
> >   
> >> Ah, due to the complexity of NestedMatch, I opted to write
> >> some unit tests to verify that the logic there is correct.
> >> We can use it to add other border cases.
> >>
> >> Using it is as easy as running:
> >>
> >> 	$ tools/unittests/nested_match.py
> >>
> >> (I opted to create a separate directory for it, as this
> >> is not really documentation)  
> > 
> > Do we really need another unit-testing setup in the kernel?  I can't say
> > I'm familiar enough with kunit to say whether it would work for
> > non-kernel code; have you looked and verified that it isn't suitable?
> >   
> 
> I'm not sure kunit would be suitable here, since its meant for running 
> kernel code and does a lot of stuff to make that possible. It might be 
> able to be extended, but.. this is python code. Why *shouldn't* we use 
> one of the python unit test frameworks for it?

This is not using kunit. It is using standard "import unittest" from
Python internal lib.

> We have other python code in tree. Does any of that code have unit tests?

Good question. On a quick grep, it sounds so:

	$ git grep "import unittest" tools scripts
	scripts/rust_is_available_test.py:import unittest
	tools/crypto/ccp/test_dbc.py:import unittest
	tools/perf/pmu-events/metric_test.py:import unittest
	tools/testing/kunit/kunit_tool_test.py:import unittest
	tools/testing/selftests/bpf/test_bpftool.py:import unittest
	tools/testing/selftests/tpm2/tpm2.py:import unittest
	tools/testing/selftests/tpm2/tpm2_tests.py:import unittest

> I agree that it doesn't make sense to build new bespoke unit tests 
> different or unique per each python module, so if we want to adopt 
> python unit tests we should try to pick something that works for the 
> python tools in the kernel.
> 
> Perhaps finding a way to integrate this with kunit so that you can use 
> "kunit run" and get python tests executed as well would make sense? 
> But.. then again this isn't kernel code so I'm not sure it makes sense 
> to conflate the tests with kernel unit tests.

It shouldn't be hard to add it there - or to have a separate script
to run python unittests.

Assuming that we place all unittests at the same directory
(tools/unittests), the enclosed path will run all of them
altogether:

	$ tools/unittests/run.py
	Ran 35 tests in 0.001s

	OK
	nested_match:
	    TestStructGroup:
	        test_struct_group_01:            OK
	        test_struct_group_02:            OK
	        test_struct_group_03:            OK
	        test_struct_group_04:            OK
	        test_struct_group_05:            OK
	        test_struct_group_06:            OK
	        test_struct_group_07:            OK
	        test_struct_group_08:            OK
	        test_struct_group_09:            OK
	        test_struct_group_10:            OK
	        test_struct_group_11:            OK
        	test_struct_group_12:            OK
	        test_struct_group_13:            OK
	        test_struct_group_14:            OK
	        test_struct_group_15:            OK
	        test_struct_group_16:            OK
	        test_struct_group_17:            OK
	        test_struct_group_18:            OK
	        test_struct_group_19:            OK
	        test_struct_group_sub:           OK
	    TestSubMacros:
	        test_acquires_multiple:          OK
        	test_acquires_nested_paren:      OK
	        test_acquires_simple:            OK
        	test_mixed_macros:               OK
	        test_must_hold:                  OK
        	test_must_hold_shared:           OK
	        test_no_false_positive:          OK
	        test_no_macro_remains:           OK
	    TestSubReplacement:
	        test_sub_count_parameter:        OK
	        test_sub_mixed_placeholders:     OK
	        test_sub_multiple_placeholders:  OK
	        test_sub_no_placeholder:         OK
	        test_sub_single_placeholder:     OK
	        test_sub_with_capture:           OK
	        test_sub_zero_placeholder:       OK


	Ran 35 tests

And the helper will also provide an argparse to allow filtering
tests, change verbosity and filtering them with a regex:

	$ tools/unittests/run.py --help
	usage: run.py [-h] [-v] [-f] [-k KEYWORD]

	Test runner with regex filtering

	options:
	  -h, --help            show this help message and exit
	  -v, --verbose
	  -f, --failfast
	  -k, --keyword KEYWORD
	                        Regex pattern to filter test methods

That's said, some integration with kunit can be interesting
to have it producing a KTAP output if needed by some CI.

---

[PATCH] [RFC] Run all tests from tools/unittests

This small example runs all unittests from tools/unittests with:

    $ tools/unittests/run.py

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

diff --git a/tools/lib/python/unittest_helper.py b/tools/lib/python/unittest_helper.py
index 3cf1075b1de4..af16acc3af17 100755
--- a/tools/lib/python/unittest_helper.py
+++ b/tools/lib/python/unittest_helper.py
@@ -213,7 +213,7 @@ class TestUnits:
                             help="Regex pattern to filter test methods")
         return parser
 
-    def run(self, caller_file, parser=None, args=None, env=None):
+    def run(self, caller_file, suite=None, parser=None, args=None, env=None):
         """Execute all tests from the unity test file"""
         if not args:
             if not parser:
@@ -232,9 +232,10 @@ class TestUnits:
             unittest.TextTestRunner(verbosity=verbose).run = lambda suite: suite
 
         # Load ONLY tests from the calling file
-        loader = unittest.TestLoader()
-        suite = loader.discover(start_dir=os.path.dirname(caller_file),
-                                pattern=os.path.basename(caller_file))
+        if not suite:
+            loader = unittest.TestLoader()
+            suite = loader.discover(start_dir=os.path.dirname(caller_file),
+                                    pattern=os.path.basename(caller_file))
 
         # Flatten the suite for environment injection
         tests_to_inject = flatten_suite(suite)
diff --git a/tools/unittests/run.py b/tools/unittests/run.py
new file mode 100755
index 000000000000..2a5a754219de
--- /dev/null
+++ b/tools/unittests/run.py
@@ -0,0 +1,17 @@
+#!/bin/env python3
+import os
+import unittest
+import sys
+
+TOOLS_DIR=os.path.join(os.path.dirname(os.path.realpath(__file__)), "..")
+sys.path.insert(0, TOOLS_DIR)
+
+from lib.python.unittest_helper import TestUnits
+
+if __name__ == "__main__":
+    loader = unittest.TestLoader()
+
+    suite = loader.discover(start_dir=os.path.join(TOOLS_DIR, "unittests"),
+                            pattern="*.py")
+
+    TestUnits().run("", suite=suite)

Thanks,
Mauro
