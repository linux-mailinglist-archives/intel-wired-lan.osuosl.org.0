Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GRLF7sVe2n5BAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 053D3AD365
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 437F583DC7;
	Thu, 29 Jan 2026 08:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRTbf_pvdznG; Thu, 29 Jan 2026 08:08:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7892B83DDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769674133;
	bh=QiC0PXc7+2Hc8wjTOJCNQU1P9LQiOMFCae7k9zta+Oo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gVNN1M0cvBjKbcXp7JuVF5PhPRVYCmcqLvGiE+gyhh4IwaO4ilCuuk/3DSo8MQ0hf
	 tr2dWI1Ge1GK3HGRKNcwbgXFpG4FkVk2Gqb0BADdYBhbpxBUimEH4C8a6dzfCrG9qr
	 PT5ZsZPuagBuDmUc7PfZzI0VeqigY60N1TmkCBqsZqJEzc72deg9MdP/qBvMy4rK06
	 +1HggSy/2IjXQW9bTDBNG4ibohZv6We7xshUNA6e3EE4P89Z9zc+G/a9j1Ntvt5v3v
	 CLaUlPe8AT91Qp3wiksgb5tXGaDBKx/xCcX29s0bRGzMzxSZTnHDVtQmbPgOPdZxFO
	 ii55eSQwR7bIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7892B83DDD;
	Thu, 29 Jan 2026 08:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B73D1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7CBB760859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gNmx3pbb4jjq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55655606F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55655606F1
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55655606F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 62B1D4456E;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A3C2C2BD04;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vlN4n-0000000EROT-25XE; Thu, 29 Jan 2026 09:08:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>, Kees Cook <kees@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Thu, 29 Jan 2026 09:08:21 +0100
Message-ID: <823756f6f8e5864817464560227820d8ef3a600f.1769673038.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769673038.git.mchehab+huawei@kernel.org>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769674111;
 bh=zrn1R99JmhSDpw80vFG4cNPSq/xnegn/WMP5J1mznhQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uhVQE0clrmRRFi6sGV6bb+5Ub4LO1z8yNb9HI/vnrJW+Jp3s1Br8Ym/rNoefncoiC
 nA/7J5lgEJMtAXkHq6CY/wh84UMpacfDQkvPayr4v4Er5buS5c+Vm8psLK21oXkf6A
 BaJnF4xeffly1o7j0tzxhLJLrA6B5FRmk95Wjf0/eZ35OGyx6juJ1Bdkl1pVWkgZ1D
 yljMKKDrrJM3H4UHjz5mvwyNNGAUJ5MWu6WwwtgzhCVRr50bigYZmwY5yF7qanLyBP
 pdX8AHr2XMznKUKthYQgDBRLSb0pETFbZPskImF6+HcUYgHYDI1dKqc2KcAI70hDly
 SxomQMtuh381g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uhVQE0cl
Subject: [Intel-wired-lan] [PATCH v3 30/30] docs: xforms_lists.py: use
 CFuntion to handle all function macros
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 053D3AD365
X-Rspamd-Action: no action

The new CFunction class handles better macros, as it works the same
way C compilers do, handling delimiters tha right way.

This allows removing complex regular expressions, placing instead
just a simple one with the name(s) of the functions to be replaced.

Doing a before/after check using "kernel-doc -man ." shows only
cosmetic changes (whitespaces, mostly).

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/xforms_lists.py | 54 +++++++++++----------------
 1 file changed, 21 insertions(+), 33 deletions(-)

diff --git a/tools/lib/python/kdoc/xforms_lists.py b/tools/lib/python/kdoc/xforms_lists.py
index 88968bafdb78..6e917beceb89 100644
--- a/tools/lib/python/kdoc/xforms_lists.py
+++ b/tools/lib/python/kdoc/xforms_lists.py
@@ -17,51 +17,38 @@ class CTransforms:
 
     #: Transforms for structs and unions
     struct_xforms = [
-        # Strip attributes
-        (KernRe(r"__attribute__\s*\(\([a-z0-9,_\*\s\(\)]*\)\)", flags=re.I | re.S, cache=False), ' '),
-        (KernRe(r'\s*__aligned\s*\([^;]*\)', re.S), ' '),
-        (KernRe(r'\s*__counted_by\s*\([^;]*\)', re.S), ' '),
-        (KernRe(r'\s*__counted_by_(le|be)\s*\([^;]*\)', re.S), ' '),
-        (KernRe(r'\s*__guarded_by\s*\([^\)]*\)', re.S), ' '),
-        (KernRe(r'\s*__pt_guarded_by\s*\([^\)]*\)', re.S), ' '),
+        (CFunction("__attribute__"), ' '),
+        (CFunction('__aligned'), ' '),
+        (CFunction('__counted_by'), ' '),
+        (CFunction('__counted_by_(le|be)'), ' '),
+        (CFunction('__guarded_by'), ' '),
+        (CFunction('__pt_guarded_by'), ' '),
+
         (KernRe(r'\s*__packed\s*', re.S), ' '),
         (KernRe(r'\s*CRYPTO_MINALIGN_ATTR', re.S), ' '),
         (KernRe(r'\s*__private', re.S), ' '),
         (KernRe(r'\s*__rcu', re.S), ' '),
         (KernRe(r'\s*____cacheline_aligned_in_smp', re.S), ' '),
         (KernRe(r'\s*____cacheline_aligned', re.S), ' '),
-        (KernRe(r'\s*__cacheline_group_(begin|end)\([^\)]+\);'), ''),
+
+        (CFunction('__cacheline_group_(begin|end)'), ''),
 
         (CFunction('struct_group'), r'\2'),
         (CFunction('struct_group_attr'), r'\3'),
         (CFunction('struct_group_tagged'), r'struct \1 \2; \3'),
         (CFunction('__struct_group'), r'\4'),
 
-        #
-        # Replace macros
-        #
-        # TODO: use CFunction on all FOO($1, $2, ...) matches
-        #
-        # it is better to also move those to the CFunction logic,
-        # to ensure that parentheses will be properly matched.
-        #
-        (KernRe(r'__ETHTOOL_DECLARE_LINK_MODE_MASK\s*\(([^\)]+)\)', re.S),
-        r'DECLARE_BITMAP(\1, __ETHTOOL_LINK_MODE_MASK_NBITS)'),
-        (KernRe(r'DECLARE_PHY_INTERFACE_MASK\s*\(([^\)]+)\)', re.S),
-        r'DECLARE_BITMAP(\1, PHY_INTERFACE_MODE_MAX)'),
-        (KernRe(r'DECLARE_BITMAP\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern + r'\)',
-                re.S), r'unsigned long \1[BITS_TO_LONGS(\2)]'),
-        (KernRe(r'DECLARE_HASHTABLE\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern + r'\)',
-                re.S), r'unsigned long \1[1 << ((\2) - 1)]'),
-        (KernRe(r'DECLARE_KFIFO\s*\(' + struct_args_pattern + r',\s*' + struct_args_pattern +
-                r',\s*' + struct_args_pattern + r'\)', re.S), r'\2 *\1'),
-        (KernRe(r'DECLARE_KFIFO_PTR\s*\(' + struct_args_pattern + r',\s*' +
-                struct_args_pattern + r'\)', re.S), r'\2 *\1'),
-        (KernRe(r'(?:__)?DECLARE_FLEX_ARRAY\s*\(' + struct_args_pattern + r',\s*' +
-                struct_args_pattern + r'\)', re.S), r'\1 \2[]'),
-        (KernRe(r'DEFINE_DMA_UNMAP_ADDR\s*\(' + struct_args_pattern + r'\)', re.S), r'dma_addr_t \1'),
-        (KernRe(r'DEFINE_DMA_UNMAP_LEN\s*\(' + struct_args_pattern + r'\)', re.S), r'__u32 \1'),
-        (KernRe(r'VIRTIO_DECLARE_FEATURES\(([\w_]+)\)'), r'union { u64 \1; u64 \1_array[VIRTIO_FEATURES_U64S]; }'),
+        (CFunction('__ETHTOOL_DECLARE_LINK_MODE_MASK'), r'DECLARE_BITMAP(\1, __ETHTOOL_LINK_MODE_MASK_NBITS)'),
+        (CFunction('DECLARE_PHY_INTERFACE_MASK',), r'DECLARE_BITMAP(\1, PHY_INTERFACE_MODE_MAX)'),
+        (CFunction('DECLARE_BITMAP'), r'unsigned long \1[BITS_TO_LONGS(\2)]'),
+
+        (CFunction('DECLARE_HASHTABLE'), r'unsigned long \1[1 << ((\2) - 1)]'),
+        (CFunction('DECLARE_KFIFO'), r'\2 *\1'),
+        (CFunction('DECLARE_KFIFO_PTR'), r'\2 *\1'),
+        (CFunction('(?:__)?DECLARE_FLEX_ARRAY'), r'\1 \2[]'),
+        (CFunction('DEFINE_DMA_UNMAP_ADDR'), r'dma_addr_t \1'),
+        (CFunction('DEFINE_DMA_UNMAP_LEN'), r'__u32 \1'),
+        (CFunction('VIRTIO_DECLARE_FEATURES'), r'union { u64 \1; u64 \1_array[VIRTIO_FEATURES_U64S]; }'),
     ]
 
     #: Transforms for function prototypes
@@ -91,6 +78,7 @@ class CTransforms:
         (KernRe(r"DECL_BUCKET_PARAMS\s*\(\s*(\S+)\s*,\s*(\S+)\s*\)"), r"\1, \2"),
         (KernRe(r"__no_context_analysis\s*"), ""),
         (KernRe(r"__attribute_const__ +"), ""),
+
         (CFunction("__cond_acquires"), ""),
         (CFunction("__cond_releases"), ""),
         (CFunction("__acquires"), ""),
-- 
2.52.0

