Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDmWLp4Ve2kZBQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58071AD2D5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBF0283DCD;
	Thu, 29 Jan 2026 08:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XdjDDHy7Qouc; Thu, 29 Jan 2026 08:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C78883DA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769674123;
	bh=kHtvXCDxHBXdYQ07V9T0dj2WbOlzGaJqHJUQfOqZYj4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2y9ArUqaFqsgMDgK382331VrNGvCC9KPE8YYeB/jvfv0/p/EBdBpACAXlLKh505Ng
	 UMdbHmDgAXIeq0wTb5IwJ2OUxMH+B8raeBPd/p3ss/c53ZsbtngNlrlumAdnhj+M9L
	 eG8yRpFrSoTkWrkfNtr8wq0KbBD8NDB7PAGXDebZZBLOIyF6ni7Fz+lpTyeAfgARvP
	 r97kR3u2h4QUvVn7OQ0gUdolSQYkGgYA50kfH9/4hUL7U2DfchU//5RHkmjGX9ak6P
	 ZvBpuZEEs7SgX85FmHUV0nJfx4fV75AXexpUvxTCHIFLLunpN+E1S60Mgb73Hops8t
	 SQz9wkz0ier4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C78883DA9;
	Thu, 29 Jan 2026 08:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 03633118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68FC860861
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaNtErN7X0DQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D72C60857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D72C60857
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D72C60857
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1F4404452D;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEABDC2BCB3;
 Thu, 29 Jan 2026 08:08:30 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vlN4m-0000000ERMr-3HYB; Thu, 29 Jan 2026 09:08:28 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Thu, 29 Jan 2026 09:07:56 +0100
Message-ID: <ee5947f9427d8cdcca52ec3db32350b45d3fac91.1769673038.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769673038.git.mchehab+huawei@kernel.org>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769674110;
 bh=1UyEpa3PQCXAaiGwapZKBeWnBxx40S80+WhX3uQJt4s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EvhAAKzGzTPtlEJDqqgaXGoU6hJ9BsLh3leiHmwqXSfooJg+7x1GRQDkkS7MC19mQ
 nh8Es9tT3u7tnQQsWSN4DSijg4RzHB5Z+b4dMn928lh8XMpsOBeG3LPVrV3Q/BiFpK
 0Va0h5CtLNPuUvUh7pGMI/bM6sIOKg0sa8N6sUX3lSGbJvPTvrq+BoOJF9GsRcw/8G
 6mGgJq0saXS4RlCPaeJpN5bahy3EOSz3yCRCtnYSkx5Ofe5/kSWSYDYHlOuH6FW2HC
 jl/Nq2CxVvodSVqr9bS+CKITvILAgyzV7EGpXvby4lonY9nXvSGB64+2fZHhXYPWcW
 fbo0gu191vE2Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EvhAAKzG
Subject: [Intel-wired-lan] [PATCH v3 05/30] docs: kdoc_parser: add functions
 support for NestedMatch
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,infradead.org:email];
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
X-Rspamd-Queue-Id: 58071AD2D5
X-Rspamd-Action: no action

Some annotations macros may have nested parenthesis, causing normal
regex parsing to fail.

Extend apply_transforms to also use NestedMatch and add support
for nested functions.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>
---
 tools/lib/python/kdoc/kdoc_parser.py | 38 ++++++++++++++++++----------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index 3ba2cda2487a..ae5b2ef80f75 100644
--- a/tools/lib/python/kdoc/kdoc_parser.py
+++ b/tools/lib/python/kdoc/kdoc_parser.py
@@ -152,7 +152,7 @@ struct_xforms = [
     (KernRe(r'DEFINE_DMA_UNMAP_LEN\s*\(' + struct_args_pattern + r'\)', re.S), r'__u32 \1'),
 ]
 #
-# Regexes here are guaranteed to have the end delimiter matching
+# Struct regexes here are guaranteed to have the end delimiter matching
 # the start delimiter. Yet, right now, only one replace group
 # is allowed.
 #
@@ -160,6 +160,13 @@ struct_nested_prefixes = [
     (re.compile(r'\bSTRUCT_GROUP\('), r'\1'),
 ]
 
+#
+# Function Regexes here are guaranteed to have the end delimiter matching
+# the start delimiter.
+#
+function_nested_prefixes = [
+]
+
 #
 # Transforms for function prototypes
 #
@@ -207,13 +214,6 @@ var_xforms = [
 # Ancillary functions
 #
 
-def apply_transforms(xforms, text):
-    """
-    Apply a set of transforms to a block of text.
-    """
-    for search, subst in xforms:
-        text = search.sub(subst, text)
-    return text
 
 multi_space = KernRe(r'\s\s+')
 def trim_whitespace(s):
@@ -408,6 +408,8 @@ class KernelDoc:
         # Place all potential outputs into an array
         self.entries = []
 
+        self.nested = NestedMatch()
+
         #
         # We need Python 3.7 for its "dicts remember the insertion
         # order" guarantee
@@ -505,6 +507,16 @@ class KernelDoc:
         # State flags
         self.state = state.NORMAL
 
+    def apply_transforms(self, regex_xforms, nested_xforms, text):
+        """Apply a set of transforms to a block of text."""
+        for search, subst in regex_xforms:
+            text = search.sub(subst, text)
+
+        for search, sub in nested_xforms:
+            text = self.nested.sub(search, sub, text)
+
+        return text.strip()
+
     def push_parameter(self, ln, decl_type, param, dtype,
                        org_arg, declaration_name):
         """
@@ -881,11 +893,9 @@ class KernelDoc:
         # Go through the list of members applying all of our transformations.
         #
         members = trim_private_members(members)
-        members = apply_transforms(struct_xforms, members)
+        members = self.apply_transforms(struct_xforms, struct_nested_prefixes,
+                                        members)
 
-        nested = NestedMatch()
-        for search, sub in struct_nested_prefixes:
-            members = nested.sub(search, sub, members)
         #
         # Deal with embedded struct and union members, and drop enums entirely.
         #
@@ -1088,7 +1098,9 @@ class KernelDoc:
             #
             # Apply the initial transformations.
             #
-            prototype = apply_transforms(function_xforms, prototype)
+            prototype = self.apply_transforms(function_xforms,
+                                              function_nested_prefixes,
+                                              prototype)
 
         # Yes, this truly is vile.  We are looking for:
         # 1. Return type (may be nothing if we're looking at a macro)
-- 
2.52.0

