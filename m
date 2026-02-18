Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGs0LdGQlWn1SQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B39155292
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADC50607F6;
	Wed, 18 Feb 2026 10:13:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3T4-CZndHg0q; Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB166607DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409612;
	bh=mTYLbojPpVFA2MVDjQ4fAyKVTvcXVuXTJx29E7yNHwE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MEkoqPNo3clA+GxqlMTLPsegTe0kBK4qBoed9+mkfkRucdP6cOfToDd+2jfl64udZ
	 NQwS85pHvDuGkBeN4MxBNP+lCcEZnYltoREo7vXbbPTPoTY29VTaAVayELYfxYaYjg
	 oMby2z8Vb44HXHFFlaeirmnQ/aPNoASTTUTZsYK9IPO5WFQQBRE9cReTFtCppSYzdJ
	 iCRRokqr0iEo048ZiYA4xAbYKWbwYDiDSKH87inDvPYNmIpbtXvmvwCJkgZzUd9HDT
	 o5s5zXvqBMCJLWzXqjHdsV8x+wS968LjLFdCLriF7uB1PUJ4uP7d8E3T6dobTJzoQU
	 UaOX05XeDLVKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB166607DF;
	Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C95C35B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 427B860785
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 552cRnftorNL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4BAE960726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BAE960726
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BAE960726
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1258844524;
 Wed, 18 Feb 2026 10:13:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA9A3C19425;
 Wed, 18 Feb 2026 10:13:24 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYd-00000000Lh8-0uUp; Wed, 18 Feb 2026 11:13:23 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Wed, 18 Feb 2026 11:12:49 +0100
Message-ID: <a27f96e3e6e2b58bf1e4e7aab8a592d81f32887f.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409605;
 bh=DvfUwTuholX9BC+W38TUGNzdKlUVnreeYvd3PlaaCGM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IO/JRtRAZj1btQXAZYuHO3FVv0sk70uvJvDQTiS/kTA63xY5Fm5GuSVHCJT8NDuuG
 bFxwUfGH+yckZPM2PpqfmzCjcrepNSH3JP3ACwMoAO+3uW2AFEj7FBwzRA9Xqp9tYF
 eOWuyp6YYdywv1b2hvvYjsPetFFraFwl6Nq1MmI9UFaAi2g7qupBtB7so4ix5GF9lO
 rX6543ISqBAgQeCH2r0+H94CdsqE41uPfCHjDIDR9gspPNDokPgCbBtGSDcuxndtKQ
 Uy7l+up6Flmx3XdfdoxvEBmCFlxecMfDAdK8Z7CBwhNbA7BSqPG4KpLBOt0rYVvWA/
 L2oM/RY4AJpuw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IO/JRtRA
Subject: [Intel-wired-lan] [PATCH 19/38] docs: kdoc_re: make NestedMatch use
 KernRe
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 54B39155292
X-Rspamd-Action: no action

Instead of using re_compile, let's create the class with the
regex and use KernRe to keep it cached.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 tools/lib/python/kdoc/kdoc_parser.py | 55 ++++++++--------------------
 tools/lib/python/kdoc/kdoc_re.py     | 24 ++++++++----
 2 files changed, 33 insertions(+), 46 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index 3ee169b505d3..06a7af4bfa57 100644
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
@@ -211,6 +186,17 @@ function_xforms = [
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
@@ -231,7 +217,6 @@ var_xforms = [
 # Ancillary functions
 #
 
-
 multi_space = KernRe(r'\s\s+')
 def trim_whitespace(s):
     """
@@ -425,8 +410,6 @@ class KernelDoc:
         # Place all potential outputs into an array
         self.entries = []
 
-        self.nested = NestedMatch()
-
         #
         # We need Python 3.7 for its "dicts remember the insertion
         # order" guarantee
@@ -524,14 +507,11 @@ class KernelDoc:
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
@@ -910,8 +890,7 @@ class KernelDoc:
         # Go through the list of members applying all of our transformations.
         #
         members = trim_private_members(members)
-        members = self.apply_transforms(struct_xforms, struct_nested_prefixes,
-                                        members)
+        members = self.apply_transforms(struct_xforms, members)
 
         #
         # Deal with embedded struct and union members, and drop enums entirely.
@@ -1126,9 +1105,7 @@ class KernelDoc:
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
index 2d83b6fb1cd6..fed9894a5c71 100644
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
 
@@ -278,12 +281,12 @@ class NestedMatch:
         returning occurrences only if all delimiters are paired.
         """
 
-        for t in self._search(regex, line):
+        for t in self._search(line):
 
             yield line[t[0]:t[2]]
 
-    def sub(self, regex, sub, line, count=0):
-        r"""
+    def sub(self, sub, line, count=0):
+        """
         This is similar to re.sub:
 
         It matches a regex that it is followed by a delimiter,
@@ -304,7 +307,7 @@ class NestedMatch:
         cur_pos = 0
         n = 0
 
-        for start, end, pos in self._search(regex, line):
+        for start, end, pos in self._search(line):
             out += line[cur_pos:start]
 
             # Value, ignoring start/end delimiters
@@ -331,3 +334,10 @@ class NestedMatch:
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

