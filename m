Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJW1CJsVe2n5BAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:08:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAAFAD2B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF3F160896;
	Thu, 29 Jan 2026 08:08:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9NvhFuXSLUTc; Thu, 29 Jan 2026 08:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3723660893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769674127;
	bh=osRDjTmkQOaz8sEP3Sr6ne2mZX9kmY2m1WYlgDacdLQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oiJzZDTI7cXU7Kz9QDgl2IuO7InY7Igccr8WNIgiTgCEAtbfqCTjQ0K4XFcbjjUxo
	 gy38eedmQ3x70w/0lD0u27m8wM3lc/Qm4F+3KQcKA4HZ02qq4MGTZ9UzvLSkXW14bw
	 4TWifO5adIzuVcuOojieySYwfYsZ/CJr1YIjGxcb7d47yCD6EvyNyhUWigyOEFkE9n
	 oljoE6+cQlJFjiUYMr3PdqoSaxNC2I/0kCsptf830o6/1jDPkKtARqqDtNRx0wH57k
	 3/zPLnXj8QDbcqyjfbTnmKtHNL2PJrZUbD39wSSjcJ/CmtoIUVFhdZq5XqfVcd9jlw
	 4FDrncT77gF0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3723660893;
	Thu, 29 Jan 2026 08:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 181AA1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C98A86085E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AaW18903srkg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D20060856
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D20060856
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D20060856
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 437BE44553;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F06D0C4AF10;
 Thu, 29 Jan 2026 08:08:30 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vlN4n-0000000ERNp-0t7G; Thu, 29 Jan 2026 09:08:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Thu, 29 Jan 2026 09:08:11 +0100
Message-ID: <fe4539f5573c62301fd1a94af5126266b023d4b8.1769673038.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769673038.git.mchehab+huawei@kernel.org>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769674111;
 bh=IMy+0Ya2RXQo7v/hj8y/wU7iFOGEnBMPK5mE8t6wErI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CVDoK7RV2De5lMoh9xFIjFW36Xn4xiO+ZCn9lNN83XJWKr7vlvmzvYVCvMc3GUAld
 Sdy6KYa7nHzCbYjuu3w7YHbw3wLoyozY1UZl54hlwCKezmMqqJOlI2qxgGz4ZSVBeG
 G8KIqX5PzQEHuN2F7JQkrV3i/C+dWyfps/nxxrvOrtSb5DawA0t0/NiGcO0MXaLN5F
 L50AO1wMZ8tzN3wUOjqebmi6TU8FtVXhg45aHHOlm41GiPQe/RxP84iS7eQY3qR/1F
 oWaekbBFNJHH8DERwfqpBkLqh46fyrhbBKkVfEed0EJZS1T/VyShSIBy1u14nqB4AU
 TEs0JQjjqrNEw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CVDoK7RV
Subject: [Intel-wired-lan] [PATCH v3 20/30] docs: kdoc_re: add support on
 NestedMatch for argument replacement
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
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: AEAAFAD2B1
X-Rspamd-Action: no action

Currently, NestedMatch has very limited support for aguments
replacement: it is all or nothing.

Add support to allow replacing individual arguments as well.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_re.py | 84 ++++++++++++++++++++++----------
 1 file changed, 59 insertions(+), 25 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_re.py b/tools/lib/python/kdoc/kdoc_re.py
index e34d55c25680..858cc688a58f 100644
--- a/tools/lib/python/kdoc/kdoc_re.py
+++ b/tools/lib/python/kdoc/kdoc_re.py
@@ -177,29 +177,6 @@ class NestedMatch:
     will ignore the search string.
     """
 
-    # TODO: make NestedMatch handle multiple match groups
-    #
-    # Right now, regular expressions to match it are defined only up to
-    #       the start delimiter, e.g.:
-    #
-    #       \bSTRUCT_GROUP\(
-    #
-    # is similar to: STRUCT_GROUP\((.*)\)
-    # except that the content inside the match group is delimiter-aligned.
-    #
-    # The content inside parentheses is converted into a single replace
-    # group (e.g. r`\1').
-    #
-    # It would be nice to change such definition to support multiple
-    # match groups, allowing a regex equivalent to:
-    #
-    #   FOO\((.*), (.*), (.*)\)
-    #
-    # it is probably easier to define it not as a regular expression, but
-    # with some lexical definition like:
-    #
-    #   FOO(arg1, arg2, arg3)
-
     def __init__(self, regex):
         self.regex = KernRe(regex)
 
@@ -285,6 +262,59 @@ class NestedMatch:
 
             yield line[t[0]:t[2]]
 
+    @staticmethod
+    def _split_args(all_args, delim=","):
+        """
+        Helper method to split comma-separated function arguments
+        or struct elements, if delim is set to ";".
+
+        It returns a list of arguments that can be used later on by
+        the sub() method.
+        """
+        args = [all_args]
+        stack = []
+        arg_start = 0
+        string_char = None
+        escape = False
+
+        for idx, d in enumerate(all_args):
+            if escape:
+                escape = False
+                continue
+
+            if string_char:
+                if d == '\\':
+                    escape = True
+                elif d == string_char:
+                    string_char = None
+
+                continue
+
+            if d in ('"', "'"):
+                string_char = d
+                continue
+
+            if d in DELIMITER_PAIRS:
+                end = DELIMITER_PAIRS[d]
+
+                stack.append(end)
+                continue
+
+            if stack and d == stack[-1]:
+                stack.pop()
+                continue
+
+            if d == delim and not stack:
+                args.append(all_args[arg_start:idx].strip())
+                arg_start = idx + 1
+
+        # Add the last argument (if any)
+        last = all_args[arg_start:].strip()
+        if last:
+            args.append(last)
+
+        return args
+
     def sub(self, sub, line, count=0):
         """
         This is similar to re.sub:
@@ -310,9 +340,13 @@ class NestedMatch:
             # Value, ignoring start/end delimiters
             value = line[end:pos - 1]
 
-            # replaces \0 at the sub string, if \0 is used there
+            # replace arguments
             new_sub = sub
-            new_sub = new_sub.replace(r'\0', value)
+            if "\\" in sub:
+                args = self._split_args(value)
+
+                new_sub = re.sub(r'\\(\d+)',
+                                 lambda m: args[int(m.group(1))], new_sub)
 
             out += new_sub
 
-- 
2.52.0

