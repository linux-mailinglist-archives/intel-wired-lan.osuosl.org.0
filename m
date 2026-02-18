Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEjWNtqQlWnoSQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F551552F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5B2B81091;
	Wed, 18 Feb 2026 10:13:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jXhNyRAWpoIW; Wed, 18 Feb 2026 10:13:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D60FF810B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409619;
	bh=SDBwfiZ+ObLVowVHAGC5zKKRZVcrpvn3u3jGoGw7SHs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3jc1GY57qtsAN5BpwfJ1WPCiIhvTPsjIjOEv0kRwFh0J5Pm0CkLL7dNKTcYiJpWgm
	 f31ckYNme617/X+1jaZjklELB9llqIRj0NBt0wqar6svDVD5fhonr+UjRJNZjsOG8x
	 HHZfZiffweClPVKW8T67xnvnJWsDomugxEg1qhmFDCKJYWiiWBUbNnRKbDk00zSzBS
	 Yi3whW1bbwF0CWu/yyq5Pf5YJ9fC37PTeIxdO+dILOr1d0y40F3nAx2n0lcplBZD+S
	 xGMHKmavu7JbxVT9TANborTIVJEqYzCdXh+JOuIEFh4bX0OUEDgTY9V4dB2blZOnmJ
	 62lr3dDlXqntw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D60FF810B7;
	Wed, 18 Feb 2026 10:13:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 14F2D206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06499407EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q69doBnQp4np for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F1FE407CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F1FE407CF
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F1FE407CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0248344582;
 Wed, 18 Feb 2026 10:13:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A58FC19423;
 Wed, 18 Feb 2026 10:13:28 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYg-00000000LqA-3IMj; Wed, 18 Feb 2026 11:13:26 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Kees Cook <kees@kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Wed, 18 Feb 2026 11:12:56 +0100
Message-ID: <297f164226148f52b0b9a814086f51ade04ff031.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409608;
 bh=3QK91KuqWdY00vyGOroyTR5vxbbyLrMwk3WJEOvMx9g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=etEnEmCC/c9IziG98TAAR4uadZWWirKhrzZMy3hZ++PLKrzTF3GF26q2tWLSIdj70
 PqNSzpBYWmEUHZWxUqKvRvcYrYKYMW+zCQdUKk2/XL0iFsxiyhyLbIwemZje1i1NlW
 UI9czqhW8tqWm/11RFSvcTJRrZBDKeY+iSK07T1Dou/exea7pTASKQ8NZm7CTUwvDG
 z7BE4IAiLvUJHDpBJbqm7qlE5nRnTVoY52af63E05PDLcK7+HIGMwt1UvP3/12r1Aa
 qxz32Ov0D778k1QwM2QlCST928NIz1UsIexFSp0OWHr9yGh+Mpbqplb9ocAozwj/Lx
 +Y6znOhohep2g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=etEnEmCC
Subject: [Intel-wired-lan] [PATCH 26/38] docs: kdoc_parser: move transform
 lists to a separate file
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:mchehab@kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 68F551552F3
X-Rspamd-Action: no action

Over the time, most of the changes at kernel-doc are related
to maintaining a list of transforms to convert macros into pure
C code.

Place such transforms on a separate module, to cleanup the
parser module.

While here, drop the now obsolete comment about the two-steps
logic to handle struct_group macros.

There is an advantage on that: QEMU also uses our own kernel-doc,
but the xforms list there is different. By placing it on a
separate module, we can minimize the differences and make it
easier to keep QEMU in sync with Kernel upstream.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 Documentation/tools/kdoc_parser.rst   |   8 ++
 tools/lib/python/kdoc/kdoc_files.py   |   3 +-
 tools/lib/python/kdoc/kdoc_parser.py  | 148 ++------------------------
 tools/lib/python/kdoc/xforms_lists.py | 118 ++++++++++++++++++++
 4 files changed, 134 insertions(+), 143 deletions(-)
 create mode 100644 tools/lib/python/kdoc/xforms_lists.py

diff --git a/Documentation/tools/kdoc_parser.rst b/Documentation/tools/kdoc_parser.rst
index 03ee54a1b1cc..55b202173195 100644
--- a/Documentation/tools/kdoc_parser.rst
+++ b/Documentation/tools/kdoc_parser.rst
@@ -4,6 +4,14 @@
 Kernel-doc parser stage
 =======================
 
+C replacement rules used by the parser
+======================================
+
+.. automodule:: lib.python.kdoc.xforms_lists
+   :members:
+   :show-inheritance:
+   :undoc-members:
+
 File handler classes
 ====================
 
diff --git a/tools/lib/python/kdoc/kdoc_files.py b/tools/lib/python/kdoc/kdoc_files.py
index 022487ea2cc6..7357c97a4b01 100644
--- a/tools/lib/python/kdoc/kdoc_files.py
+++ b/tools/lib/python/kdoc/kdoc_files.py
@@ -15,6 +15,7 @@ import os
 import re
 
 from kdoc.kdoc_parser import KernelDoc
+from kdoc.xforms_lists import CTransforms
 from kdoc.kdoc_output import OutputFormat
 
 
@@ -117,7 +118,7 @@ class KernelFiles():
         if fname in self.files:
             return
 
-        doc = KernelDoc(self.config, fname)
+        doc = KernelDoc(self.config, fname, CTransforms)
         export_table, entries = doc.parse_kdoc()
 
         self.export_table[fname] = export_table
diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index e735e79b5061..a280fe581937 100644
--- a/tools/lib/python/kdoc/kdoc_parser.py
+++ b/tools/lib/python/kdoc/kdoc_parser.py
@@ -75,143 +75,6 @@ doc_begin_func = KernRe(str(doc_com) +			# initial " * '
 #
 struct_args_pattern = r'([^,)]+)'
 
-struct_xforms = [
-    # Strip attributes
-    (KernRe(r"__attribute__\s*\(\([a-z0-9,_\*\s\(\)]*\)\)", flags=re.I | re.S, cache=False), ' '),
-    (KernRe(r'\s*__aligned\s*\([^;]*\)', re.S), ' '),
-    (KernRe(r'\s*__counted_by\s*\([^;]*\)', re.S), ' '),
-    (KernRe(r'\s*__counted_by_(le|be)\s*\([^;]*\)', re.S), ' '),
-    (KernRe(r'\s*__guarded_by\s*\([^\)]*\)', re.S), ' '),
-    (KernRe(r'\s*__pt_guarded_by\s*\([^\)]*\)', re.S), ' '),
-    (KernRe(r'\s*__packed\s*', re.S), ' '),
-    (KernRe(r'\s*CRYPTO_MINALIGN_ATTR', re.S), ' '),
-    (KernRe(r'\s*__private', re.S), ' '),
-    (KernRe(r'\s*__rcu', re.S), ' '),
-    (KernRe(r'\s*____cacheline_aligned_in_smp', re.S), ' '),
-    (KernRe(r'\s*____cacheline_aligned', re.S), ' '),
-    (KernRe(r'\s*__cacheline_group_(begin|end)\([^\)]+\);'), ''),
-    #
-    # Unwrap struct_group macros based on this definition:
-    # __struct_group(TAG, NAME, ATTRS, MEMBERS...)
-    # which has variants like: struct_group(NAME, MEMBERS...)
-    # Only MEMBERS arguments require documentation.
-    #
-    # Parsing them happens on two steps:
-    #
-    # 1. drop struct group arguments that aren't at MEMBERS,
-    #    storing them as STRUCT_GROUP(MEMBERS)
-    #
-    # 2. remove STRUCT_GROUP() ancillary macro.
-    #
-    # The original logic used to remove STRUCT_GROUP() using an
-    # advanced regex:
-    #
-    #   \bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;
-    #
-    # with two patterns that are incompatible with
-    # Python re module, as it has:
-    #
-    #   - a recursive pattern: (?1)
-    #   - an atomic grouping: (?>...)
-    #
-    # I tried a simpler version: but it didn't work either:
-    #   \bSTRUCT_GROUP\(([^\)]+)\)[^;]*;
-    #
-    # As it doesn't properly match the end parenthesis on some cases.
-    #
-    # So, a better solution was crafted: there's now a CFunction
-    # class that ensures that delimiters after a search are properly
-    # matched. So, the implementation to drop STRUCT_GROUP() will be
-    # handled in separate.
-    #
-    (CFunction('struct_group'), r'\2'),
-    (CFunction('struct_group_attr'), r'\3'),
-    (CFunction('struct_group_tagged'), r'struct \1 \2; \3'),
-    (CFunction('__struct_group'), r'\4'),
-
-    #
-    # Replace macros
-    #
-    # TODO: use CFunction on all FOO($1, $2, ...) matches
-    #
-    # it is better to also move those to the CFunction logic,
-    # to ensure that parentheses will be properly matched.
-    #
-    (KernRe(r'__ETHTOOL_DECLARE_LINK_MODE_MASK\s*\(([^\)]+)\)', re.S),
-     r'DECLARE_BITMAP(\1, __ETHTOOL_LINK_MODE_MASK_NBITS)'),
-    (KernRe(r'DECLARE_PHY_INTERFACE_MASK\s*\(([^\)]+)\)', re.S),
-     r'DECLARE_BITMAP(\1, PHY_INTERFACE_MODE_MAX)'),
-    (KernRe(r'DECLARE_BITMAP\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern + r'\)',
-            re.S), r'unsigned long \1[BITS_TO_LONGS(\2)]'),
-    (KernRe(r'DECLARE_HASHTABLE\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern + r'\)',
-            re.S), r'unsigned long \1[1 << ((\2) - 1)]'),
-    (KernRe(r'DECLARE_KFIFO\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern +
-            r',\s*' + struct_args_pattern + r'\)', re.S), r'\2 *\1'),
-    (KernRe(r'DECLARE_KFIFO_PTR\s*\(' + struct_args_pattern + r',\s*' +
-            struct_args_pattern + r'\)', re.S), r'\2 *\1'),
-    (KernRe(r'(?:__)?DECLARE_FLEX_ARRAY\s*\(' + struct_args_pattern + r',\s*' +
-            struct_args_pattern + r'\)', re.S), r'\1 \2[]'),
-    (KernRe(r'DEFINE_DMA_UNMAP_ADDR\s*\(' + struct_args_pattern + r'\)', re.S), r'dma_addr_t \1'),
-    (KernRe(r'DEFINE_DMA_UNMAP_LEN\s*\(' + struct_args_pattern + r'\)', re.S), r'__u32 \1'),
-    (KernRe(r'VIRTIO_DECLARE_FEATURES\(([\w_]+)\)'), r'union { u64 \1; u64 \1_array[VIRTIO_FEATURES_U64S]; }'),
-]
-
-#
-# Transforms for function prototypes
-#
-function_xforms = [
-    (KernRe(r"^static +"), ""),
-    (KernRe(r"^extern +"), ""),
-    (KernRe(r"^asmlinkage +"), ""),
-    (KernRe(r"^inline +"), ""),
-    (KernRe(r"^__inline__ +"), ""),
-    (KernRe(r"^__inline +"), ""),
-    (KernRe(r"^__always_inline +"), ""),
-    (KernRe(r"^noinline +"), ""),
-    (KernRe(r"^__FORTIFY_INLINE +"), ""),
-    (KernRe(r"__init +"), ""),
-    (KernRe(r"__init_or_module +"), ""),
-    (KernRe(r"__exit +"), ""),
-    (KernRe(r"__deprecated +"), ""),
-    (KernRe(r"__flatten +"), ""),
-    (KernRe(r"__meminit +"), ""),
-    (KernRe(r"__must_check +"), ""),
-    (KernRe(r"__weak +"), ""),
-    (KernRe(r"__sched +"), ""),
-    (KernRe(r"_noprof"), ""),
-    (KernRe(r"__always_unused *"), ""),
-    (KernRe(r"__printf\s*\(\s*\d*\s*,\s*\d*\s*\) +"), ""),
-    (KernRe(r"__(?:re)?alloc_size\s*\(\s*\d+\s*(?:,\s*\d+\s*)?\) +"), ""),
-    (KernRe(r"__diagnose_as\s*\(\s*\S+\s*(?:,\s*\d+\s*)*\) +"), ""),
-    (KernRe(r"DECL_BUCKET_PARAMS\s*\(\s*(\S+)\s*,\s*(\S+)\s*\)"), r"\1, \2"),
-    (KernRe(r"__no_context_analysis\s*"), ""),
-    (KernRe(r"__attribute_const__ +"), ""),
-    (CFunction("__cond_acquires"), ""),
-    (CFunction("__cond_releases"), ""),
-    (CFunction("__acquires"), ""),
-    (CFunction("__releases"), ""),
-    (CFunction("__must_hold"), ""),
-    (CFunction("__must_not_hold"), ""),
-    (CFunction("__must_hold_shared"), ""),
-    (CFunction("__cond_acquires_shared"), ""),
-    (CFunction("__acquires_shared"), ""),
-    (CFunction("__releases_shared"), ""),
-    (CFunction("__attribute__"), ""),
-]
-
-#
-# Transforms for variable prototypes
-#
-var_xforms = [
-    (KernRe(r"__read_mostly"), ""),
-    (KernRe(r"__ro_after_init"), ""),
-    (KernRe(r'\s*__guarded_by\s*\([^\)]*\)', re.S), ""),
-    (KernRe(r'\s*__pt_guarded_by\s*\([^\)]*\)', re.S), ""),
-    (KernRe(r"LIST_HEAD\(([\w_]+)\)"), r"struct list_head \1"),
-    (KernRe(r"(?://.*)$"), ""),
-    (KernRe(r"(?:/\*.*\*/)"), ""),
-    (KernRe(r";$"), ""),
-]
 
 #
 # Ancillary functions
@@ -395,11 +258,12 @@ class KernelDoc:
     #: String to write when a parameter is not described.
     undescribed = "-- undescribed --"
 
-    def __init__(self, config, fname):
+    def __init__(self, config, fname, xforms):
         """Initialize internal variables"""
 
         self.fname = fname
         self.config = config
+        self.xforms = xforms
 
         # Initial state for the state machines
         self.state = state.NORMAL
@@ -890,7 +754,7 @@ class KernelDoc:
         # Go through the list of members applying all of our transformations.
         #
         members = trim_private_members(members)
-        members = self.apply_transforms(struct_xforms, members)
+        members = self.apply_transforms(self.xforms.struct_xforms, members)
 
         #
         # Deal with embedded struct and union members, and drop enums entirely.
@@ -1012,8 +876,7 @@ class KernelDoc:
         # Drop comments and macros to have a pure C prototype
         #
         if not declaration_name:
-            for r, sub in var_xforms:
-                proto = r.sub(sub, proto)
+            proto = self.apply_transforms(self.xforms.var_xforms, proto)
 
         proto = proto.rstrip()
 
@@ -1105,7 +968,8 @@ class KernelDoc:
             #
             # Apply the initial transformations.
             #
-            prototype = self.apply_transforms(function_xforms, prototype)
+            prototype = self.apply_transforms(self.xforms.function_xforms,
+                                              prototype)
 
         # Yes, this truly is vile.  We are looking for:
         # 1. Return type (may be nothing if we're looking at a macro)
diff --git a/tools/lib/python/kdoc/xforms_lists.py b/tools/lib/python/kdoc/xforms_lists.py
new file mode 100644
index 000000000000..2e7b470c4e65
--- /dev/null
+++ b/tools/lib/python/kdoc/xforms_lists.py
@@ -0,0 +1,118 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+# Copyright(c) 2026: Mauro Carvalho Chehab <mchehab@kernel.org>.
+
+import re
+
+from kdoc.kdoc_re import CFunction, KernRe
+
+struct_args_pattern = r'([^,)]+)'
+
+class CTransforms:
+    """
+    Data class containing a long set of transformations to turn
+    structure member prefixes, and macro invocations and variables
+    into something we can parse and generate kdoc for.
+    """
+
+    #: Transforms for structs and unions.
+    struct_xforms = [
+        # Strip attributes
+        (KernRe(r"__attribute__\s*\(\([a-z0-9,_\*\s\(\)]*\)\)", flags=re.I | re.S, cache=False), ' '),
+        (KernRe(r'\s*__aligned\s*\([^;]*\)', re.S), ' '),
+        (KernRe(r'\s*__counted_by\s*\([^;]*\)', re.S), ' '),
+        (KernRe(r'\s*__counted_by_(le|be)\s*\([^;]*\)', re.S), ' '),
+        (KernRe(r'\s*__guarded_by\s*\([^\)]*\)', re.S), ' '),
+        (KernRe(r'\s*__pt_guarded_by\s*\([^\)]*\)', re.S), ' '),
+        (KernRe(r'\s*__packed\s*', re.S), ' '),
+        (KernRe(r'\s*CRYPTO_MINALIGN_ATTR', re.S), ' '),
+        (KernRe(r'\s*__private', re.S), ' '),
+        (KernRe(r'\s*__rcu', re.S), ' '),
+        (KernRe(r'\s*____cacheline_aligned_in_smp', re.S), ' '),
+        (KernRe(r'\s*____cacheline_aligned', re.S), ' '),
+        (KernRe(r'\s*__cacheline_group_(begin|end)\([^\)]+\);'), ''),
+
+        (CFunction('struct_group'), r'\2'),
+        (CFunction('struct_group_attr'), r'\3'),
+        (CFunction('struct_group_tagged'), r'struct \1 \2; \3'),
+        (CFunction('__struct_group'), r'\4'),
+
+        #
+        # Replace macros
+        #
+        # TODO: use CFunction on all FOO($1, $2, ...) matches
+        #
+        # it is better to also move those to the CFunction logic,
+        # to ensure that parentheses will be properly matched.
+        #
+        (KernRe(r'__ETHTOOL_DECLARE_LINK_MODE_MASK\s*\(([^\)]+)\)', re.S),
+        r'DECLARE_BITMAP(\1, __ETHTOOL_LINK_MODE_MASK_NBITS)'),
+        (KernRe(r'DECLARE_PHY_INTERFACE_MASK\s*\(([^\)]+)\)', re.S),
+        r'DECLARE_BITMAP(\1, PHY_INTERFACE_MODE_MAX)'),
+        (KernRe(r'DECLARE_BITMAP\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern + r'\)',
+                re.S), r'unsigned long \1[BITS_TO_LONGS(\2)]'),
+        (KernRe(r'DECLARE_HASHTABLE\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern + r'\)',
+                re.S), r'unsigned long \1[1 << ((\2) - 1)]'),
+        (KernRe(r'DECLARE_KFIFO\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern +
+                r',\s*' + struct_args_pattern + r'\)', re.S), r'\2 *\1'),
+        (KernRe(r'DECLARE_KFIFO_PTR\s*\(' + struct_args_pattern + r',\s*' +
+                struct_args_pattern + r'\)', re.S), r'\2 *\1'),
+        (KernRe(r'(?:__)?DECLARE_FLEX_ARRAY\s*\(' + struct_args_pattern + r',\s*' +
+                struct_args_pattern + r'\)', re.S), r'\1 \2[]'),
+        (KernRe(r'DEFINE_DMA_UNMAP_ADDR\s*\(' + struct_args_pattern + r'\)', re.S), r'dma_addr_t \1'),
+        (KernRe(r'DEFINE_DMA_UNMAP_LEN\s*\(' + struct_args_pattern + r'\)', re.S), r'__u32 \1'),
+        (KernRe(r'VIRTIO_DECLARE_FEATURES\(([\w_]+)\)'), r'union { u64 \1; u64 \1_array[VIRTIO_FEATURES_U64S]; }'),
+    ]
+
+    #: Transforms for function prototypes.
+    function_xforms = [
+        (KernRe(r"^static +"), ""),
+        (KernRe(r"^extern +"), ""),
+        (KernRe(r"^asmlinkage +"), ""),
+        (KernRe(r"^inline +"), ""),
+        (KernRe(r"^__inline__ +"), ""),
+        (KernRe(r"^__inline +"), ""),
+        (KernRe(r"^__always_inline +"), ""),
+        (KernRe(r"^noinline +"), ""),
+        (KernRe(r"^__FORTIFY_INLINE +"), ""),
+        (KernRe(r"__init +"), ""),
+        (KernRe(r"__init_or_module +"), ""),
+        (KernRe(r"__exit +"), ""),
+        (KernRe(r"__deprecated +"), ""),
+        (KernRe(r"__flatten +"), ""),
+        (KernRe(r"__meminit +"), ""),
+        (KernRe(r"__must_check +"), ""),
+        (KernRe(r"__weak +"), ""),
+        (KernRe(r"__sched +"), ""),
+        (KernRe(r"_noprof"), ""),
+        (KernRe(r"__always_unused *"), ""),
+        (KernRe(r"__printf\s*\(\s*\d*\s*,\s*\d*\s*\) +"), ""),
+        (KernRe(r"__(?:re)?alloc_size\s*\(\s*\d+\s*(?:,\s*\d+\s*)?\) +"), ""),
+        (KernRe(r"__diagnose_as\s*\(\s*\S+\s*(?:,\s*\d+\s*)*\) +"), ""),
+        (KernRe(r"DECL_BUCKET_PARAMS\s*\(\s*(\S+)\s*,\s*(\S+)\s*\)"), r"\1, \2"),
+        (KernRe(r"__no_context_analysis\s*"), ""),
+        (KernRe(r"__attribute_const__ +"), ""),
+        (CFunction("__cond_acquires"), ""),
+        (CFunction("__cond_releases"), ""),
+        (CFunction("__acquires"), ""),
+        (CFunction("__releases"), ""),
+        (CFunction("__must_hold"), ""),
+        (CFunction("__must_not_hold"), ""),
+        (CFunction("__must_hold_shared"), ""),
+        (CFunction("__cond_acquires_shared"), ""),
+        (CFunction("__acquires_shared"), ""),
+        (CFunction("__releases_shared"), ""),
+        (CFunction("__attribute__"), ""),
+    ]
+
+    #: Transforms for variables.
+    var_xforms = [
+        (KernRe(r"__read_mostly"), ""),
+        (KernRe(r"__ro_after_init"), ""),
+        (KernRe(r'\s*__guarded_by\s*\([^\)]*\)', re.S), ""),
+        (KernRe(r'\s*__pt_guarded_by\s*\([^\)]*\)', re.S), ""),
+        (KernRe(r"LIST_HEAD\(([\w_]+)\)"), r"struct list_head \1"),
+        (KernRe(r"(?://.*)$"), ""),
+        (KernRe(r"(?:/\*.*\*/)"), ""),
+        (KernRe(r";$"), ""),
+    ]
-- 
2.52.0

