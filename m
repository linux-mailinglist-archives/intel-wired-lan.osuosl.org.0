Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CdGK6AVe2kZBQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 550C9AD2E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55D3F83DCE;
	Thu, 29 Jan 2026 08:08:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ydug5ewkMp1N; Thu, 29 Jan 2026 08:08:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C58D83D6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769674124;
	bh=d2M2rlRPNenPg3fT6puqtXqD2T8Fxdaj3IwriMGaI/s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UOfI0hmclw6+6ydTTAgeFjuIINDK5UI81aO4L63JubOZvLZk5/GUkzH9NmGk6MK4s
	 MsVEnlRxqD9R51ccCEZ/pqBfMEX6Li0thOUEnn6dJQ/iIX+NXsbQSXitYP4vtvTASv
	 Y2PfG1Mge+hlQu6jJu66W/WOr99YGh+yUUX92kENO65Sr3fUQsR0vfuJbR1OWOIk5H
	 PLc1n0k2np1wkNSY98Q1MtUioBN0Pv0/NIZQBam6qlP2JSg/2z/qyCaChUOCo5nsVj
	 LAM15poL8Lzyv48USWTtfnZz9B4K0CKl7yglBIWQfLL0s4g7yd2ktOlW5nyOFrsVky
	 tdIv0opyAU8PA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C58D83D6C;
	Thu, 29 Jan 2026 08:08:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 435131BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A63C4030D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L409C5L9uWfb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5A626403C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A626403C8
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A626403C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6892460131;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2990C2BD00;
 Thu, 29 Jan 2026 08:08:30 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vlN4n-0000000ERNl-0liZ; Thu, 29 Jan 2026 09:08:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Thu, 29 Jan 2026 09:08:10 +0100
Message-ID: <8a7da8d12e69a5a70d63f85a3d4ea11af6ac782a.1769673038.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769673038.git.mchehab+huawei@kernel.org>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769674111;
 bh=ElI+oPOpkTCGBBK56tr/M/5Xy+VnpzXF5LiBdiYcH+E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mGa/IjA6IrkzctpaQRF7WJ3fnbRtP65E7tTtaDPMQg998Y92UeyK9o8eqEjGJwb5J
 EiX7ZxSogjNP7Z61cRX0ZIa3UH7D9pqs8ou9uXRB4qo8+K+dmPnvrzX6TmA0g23nQO
 axCmJQWllSoUITerpG4mncDqA+DtQZ0bA52GlmRGyzUbvoWL9wtyPgu/zYWANqdQI5
 dxNZXRC/0INgD2yCwsySphIBL+9mN6Y1v8K60v5DoaLt9e+kOx2ls6OI7pfbGDligR
 ZFEqvtFAG/pxuq+xak+HJ/xovQWBhy1oKwLDq0GAt+Z7WE/wEEY2HyO6hYu6vGwACw
 cG/AD0XRlfqkg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mGa/IjA6
Subject: [Intel-wired-lan] [PATCH v3 19/30] docs: kdoc_re: make NextedMatch
 use KernRe
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
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 550C9AD2E4
X-Rspamd-Action: no action

Instead of using re_compile, let's create the class with the
rejex and use KernRe to keep it cached.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_parser.py | 55 ++++++++--------------------
 tools/lib/python/kdoc/kdoc_re.py     | 22 ++++++++---
 2 files changed, 32 insertions(+), 45 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index 4d52a00acfad..3a5614106af7 100644
--- a/tools/lib/python/kdoc/kdoc_parser.py
+++ b/tools/lib/python/kdoc/kdoc_parser.py
@@ -153,32 +153,7 @@ struct_xforms = [
     (KernRe(r'DEFINE_DMA_UNMAP_ADDR\s*\(' + struct_args_pattern + r'\)', re.S), r'dma_addr_t \1'),
     (KernRe(r'DEFINE_DMA_UNMAP_LEN\s*\(' + struct_args_pattern + r'\)', re.S), r'__u32 \1'),
     (KernRe(r'VIRTIO_DECLARE_FEATURES\(([\w_]+)\)'), r'union { u64 \1; u64 \1_array[VIRTIO_FEATURES_U64S]; }'),
-]
-#
-# Struct regexes here are guaranteed to have the end delimiter matching
-# the start delimiter. Yet, right now, only one replace group
-# is allowed.
-#
-struct_nested_prefixes = [
-    (re.compile(r'\bSTRUCT_GROUP\('), r'\0'),
-]
-
-#
-# Function Regexes here are guaranteed to have the end delimiter matching
-# the start delimiter.
-#
-function_nested_prefixes = [
-    (re.compile(r"__cond_acquires\s*\("), ""),
-    (re.compile(r"__cond_releases\s*\("), ""),
-    (re.compile(r"__acquires\s*\("), ""),
-    (re.compile(r"__releases\s*\("), ""),
-    (re.compile(r"__must_hold\s*\("), ""),
-    (re.compile(r"__must_not_hold\s*\("), ""),
-    (re.compile(r"__must_hold_shared\s*\("), ""),
-    (re.compile(r"__cond_acquires_shared\s*\("), ""),
-    (re.compile(r"__acquires_shared\s*\("), ""),
-    (re.compile(r"__releases_shared\s*\("), ""),
-    (re.compile(r"__attribute__\s*\("), ""),
+    (NestedMatch(r'\bSTRUCT_GROUP\('), r'\0'),
 ]
 
 #
@@ -210,6 +185,17 @@ function_xforms = [
     (KernRe(r"DECL_BUCKET_PARAMS\s*\(\s*(\S+)\s*,\s*(\S+)\s*\)"), r"\1, \2"),
     (KernRe(r"__no_context_analysis\s*"), ""),
     (KernRe(r"__attribute_const__ +"), ""),
+    (NestedMatch(r"__cond_acquires\s*\("), ""),
+    (NestedMatch(r"__cond_releases\s*\("), ""),
+    (NestedMatch(r"__acquires\s*\("), ""),
+    (NestedMatch(r"__releases\s*\("), ""),
+    (NestedMatch(r"__must_hold\s*\("), ""),
+    (NestedMatch(r"__must_not_hold\s*\("), ""),
+    (NestedMatch(r"__must_hold_shared\s*\("), ""),
+    (NestedMatch(r"__cond_acquires_shared\s*\("), ""),
+    (NestedMatch(r"__acquires_shared\s*\("), ""),
+    (NestedMatch(r"__releases_shared\s*\("), ""),
+    (NestedMatch(r"__attribute__\s*\("), ""),
 ]
 
 #
@@ -230,7 +216,6 @@ var_xforms = [
 # Ancillary functions
 #
 
-
 multi_space = KernRe(r'\s\s+')
 def trim_whitespace(s):
     """
@@ -424,8 +409,6 @@ class KernelDoc:
         # Place all potential outputs into an array
         self.entries = []
 
-        self.nested = NestedMatch()
-
         #
         # We need Python 3.7 for its "dicts remember the insertion
         # order" guarantee
@@ -523,14 +506,11 @@ class KernelDoc:
         # State flags
         self.state = state.NORMAL
 
-    def apply_transforms(self, regex_xforms, nested_xforms, text):
+    def apply_transforms(self, xforms, text):
         """Apply a set of transforms to a block of text."""
-        for search, subst in regex_xforms:
+        for search, subst in xforms:
             text = search.sub(subst, text)
 
-        for search, sub in nested_xforms:
-            text = self.nested.sub(search, sub, text)
-
         return text.strip()
 
     def push_parameter(self, ln, decl_type, param, dtype,
@@ -909,8 +889,7 @@ class KernelDoc:
         # Go through the list of members applying all of our transformations.
         #
         members = trim_private_members(members)
-        members = self.apply_transforms(struct_xforms, struct_nested_prefixes,
-                                        members)
+        members = self.apply_transforms(struct_xforms, members)
 
         #
         # Deal with embedded struct and union members, and drop enums entirely.
@@ -1125,9 +1104,7 @@ class KernelDoc:
             #
             # Apply the initial transformations.
             #
-            prototype = self.apply_transforms(function_xforms,
-                                              function_nested_prefixes,
-                                              prototype)
+            prototype = self.apply_transforms(function_xforms, prototype)
 
         # Yes, this truly is vile.  We are looking for:
         # 1. Return type (may be nothing if we're looking at a macro)
diff --git a/tools/lib/python/kdoc/kdoc_re.py b/tools/lib/python/kdoc/kdoc_re.py
index 8933e1a62776..e34d55c25680 100644
--- a/tools/lib/python/kdoc/kdoc_re.py
+++ b/tools/lib/python/kdoc/kdoc_re.py
@@ -200,7 +200,10 @@ class NestedMatch:
     #
     #   FOO(arg1, arg2, arg3)
 
-    def _search(self, regex, line):
+    def __init__(self, regex):
+        self.regex = KernRe(regex)
+
+    def _search(self, line):
         """
         Finds paired blocks for a regex that ends with a delimiter.
 
@@ -222,7 +225,7 @@ class NestedMatch:
 
         stack = []
 
-        for match_re in regex.finditer(line):
+        for match_re in self.regex.finditer(line):
             start = match_re.start()
             offset = match_re.end()
             string_char = None
@@ -270,7 +273,7 @@ class NestedMatch:
                         yield start, offset, pos + 1
                         break
 
-    def search(self, regex, line):
+    def search(self, line):
         """
         This is similar to re.search:
 
@@ -278,11 +281,11 @@ class NestedMatch:
         returning occurrences only if all delimiters are paired.
         """
 
-        for t in self._search(regex, line):
+        for t in self._search(line):
 
             yield line[t[0]:t[2]]
 
-    def sub(self, regex, sub, line, count=0):
+    def sub(self, sub, line, count=0):
         """
         This is similar to re.sub:
 
@@ -301,7 +304,7 @@ class NestedMatch:
         cur_pos = 0
         n = 0
 
-        for start, end, pos in self._search(regex, line):
+        for start, end, pos in self._search(line):
             out += line[cur_pos:start]
 
             # Value, ignoring start/end delimiters
@@ -328,3 +331,10 @@ class NestedMatch:
         out += line[cur_pos:l]
 
         return out
+
+    def __repr__(self):
+        """
+        Returns a displayable version of the class init.
+        """
+
+        return f'NestedMatch("{self.regex.regex.pattern}")'
-- 
2.52.0

