Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP1DIdoQfmkbVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55058C23E2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2182083BD4;
	Sat, 31 Jan 2026 14:25:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ayfW9Zc6HDwm; Sat, 31 Jan 2026 14:25:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FE8F83C19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869527;
	bh=UR1viRv80WBoMyQ1tCsRyGpK43AlJzd6GpKEwPot87k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1NwDvYpuxpiVJCxBZLK2DWjdKwicm2ZCSK79QAYWpmSpaq3UbRpOKfEYez4Q00fuj
	 cAM+HslPYEPQYf53bJc4usgDoFErc8MDjee611omMs3c25D9bB1k6hMcDmFi28OWvj
	 AiyjsrUPwr1STU7po9f1uCq1EVFy7zvO9FY/l5iNJ6TAmltJv8KmO++ElERpitoy3v
	 Jwfl7SoSQ0l8zTmK5Vl0SGU/r8sug41c36PFQSXG4ibJV8A90bBC8uyLB3HcSb+fV1
	 QWRbgIvbMAVWKeNEO/UaBzZVsSVCb59yFcylo7kSiIS1f7SUIGjo89NCXZyLZCPDjc
	 Gnqfg6qzeWx3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FE8F83C19;
	Sat, 31 Jan 2026 14:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DA0C25F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B778383BF3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UViJwYiMw7uC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21DE683BCF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21DE683BCF
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21DE683BCF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3C8DD44443;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADCACC32786;
 Sat, 31 Jan 2026 14:25:21 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBuZ-0000000AVlI-44GF; Sat, 31 Jan 2026 15:25:19 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Sat, 31 Jan 2026 15:24:58 +0100
Message-ID: <06eaea98108e280144f088cbb3f35bf1d2fb5937.1769867953.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869521;
 bh=C6CeWuwXNWfLjH/HHfru4lb9lJd9uRNWvYwHu3+yiQs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RkeM9Nrie3xNQ4HWedROr+6WaD2mh/DbAVra2t2JekLYUhCRXUO5h1jWn7zq01ekl
 ty+h8IZvW0lKLA+utKar+4BKpIxmJnvYAeHINMYJe0ABNrVdCQumBGKkHc1LzPN+1w
 17hsffFDWUIHZpZm35tVcgpviJ2Z9tdJZJDk/iPF6eWdCdkwo9jJVuzQhzyzlP92o8
 8A8zBatsh0c2161cT72F6aPDEQ2iZDvnWwY5Yfxr92x+2R0zgfezCncIJTUWhS6iXi
 bv14s5/6dXYb5yhTRJV1ghw787Sy+e1XedJRNUvO2HEEZgUZdNHFXtz/awTcArRy4t
 lqeL2ZMlMqANw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RkeM9Nri
Subject: [Intel-wired-lan] [PATCH v4 24/41] docs: kdoc_parser: use the new
 CFunction class
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.991];
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
X-Rspamd-Queue-Id: 55058C23E2
X-Rspamd-Action: no action

The match logic for transforms becomes a lot clearer if we use
CFunction convenient alias class instead of NestedMatch.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 tools/lib/python/kdoc/kdoc_parser.py | 38 ++++++++++++++--------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index d2eb93f9d489..50d57c6799bb 100644
--- a/tools/lib/python/kdoc/kdoc_parser.py
+++ b/tools/lib/python/kdoc/kdoc_parser.py
@@ -13,7 +13,7 @@ import sys
 import re
 from pprint import pformat
 
-from kdoc.kdoc_re import NestedMatch, KernRe
+from kdoc.kdoc_re import CFunction, KernRe
 from kdoc.kdoc_item import KdocItem
 
 #
@@ -119,22 +119,22 @@ struct_xforms = [
     #
     # As it doesn't properly match the end parenthesis on some cases.
     #
-    # So, a better solution was crafted: there's now a NestedMatch
+    # So, a better solution was crafted: there's now a CFunction
     # class that ensures that delimiters after a search are properly
     # matched. So, the implementation to drop STRUCT_GROUP() will be
     # handled in separate.
     #
-    (NestedMatch(r'\bstruct_group\s*\('), r'\2'),
-    (NestedMatch(r'\bstruct_group_attr\s*\('), r'\3'),
-    (NestedMatch(r'\bstruct_group_tagged\s*\('), r'struct \1 { \3 } \2;'),
-    (NestedMatch(r'\b__struct_group\s*\('), r'\4'),
+    (CFunction('struct_group'), r'\2'),
+    (CFunction('struct_group_attr'), r'\3'),
+    (CFunction('struct_group_tagged'), r'struct \1 { \3 } \2;'),
+    (CFunction('__struct_group'), r'\4'),
 
     #
     # Replace macros
     #
-    # TODO: use NestedMatch for FOO($1, $2, ...) matches
+    # TODO: use CFunction on all FOO($1, $2, ...) matches
     #
-    # it is better to also move those to the NestedMatch logic,
+    # it is better to also move those to the CFunction logic,
     # to ensure that parentheses will be properly matched.
     #
     (KernRe(r'__ETHTOOL_DECLARE_LINK_MODE_MASK\s*\(([^\)]+)\)', re.S),
@@ -185,17 +185,17 @@ function_xforms = [
     (KernRe(r"DECL_BUCKET_PARAMS\s*\(\s*(\S+)\s*,\s*(\S+)\s*\)"), r"\1, \2"),
     (KernRe(r"__no_context_analysis\s*"), ""),
     (KernRe(r"__attribute_const__ +"), ""),
-    (NestedMatch(r"__cond_acquires\s*\("), ""),
-    (NestedMatch(r"__cond_releases\s*\("), ""),
-    (NestedMatch(r"__acquires\s*\("), ""),
-    (NestedMatch(r"__releases\s*\("), ""),
-    (NestedMatch(r"__must_hold\s*\("), ""),
-    (NestedMatch(r"__must_not_hold\s*\("), ""),
-    (NestedMatch(r"__must_hold_shared\s*\("), ""),
-    (NestedMatch(r"__cond_acquires_shared\s*\("), ""),
-    (NestedMatch(r"__acquires_shared\s*\("), ""),
-    (NestedMatch(r"__releases_shared\s*\("), ""),
-    (NestedMatch(r"__attribute__\s*\("), ""),
+    (CFunction("__cond_acquires"), ""),
+    (CFunction("__cond_releases"), ""),
+    (CFunction("__acquires"), ""),
+    (CFunction("__releases"), ""),
+    (CFunction("__must_hold"), ""),
+    (CFunction("__must_not_hold"), ""),
+    (CFunction("__must_hold_shared"), ""),
+    (CFunction("__cond_acquires_shared"), ""),
+    (CFunction("__acquires_shared"), ""),
+    (CFunction("__releases_shared"), ""),
+    (CFunction("__attribute__"), ""),
 ]
 
 #
-- 
2.52.0

