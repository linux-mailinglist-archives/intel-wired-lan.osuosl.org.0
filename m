Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDnrJ+gQfmkbVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C4BC248D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D289160B6C;
	Sat, 31 Jan 2026 14:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 793FN1vk8Ge2; Sat, 31 Jan 2026 14:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 183C860B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869541;
	bh=ZFarqj/R/r3ArEfpTLMMZ2sYAwIm9hgPCWPCcnBmnQU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sJLqUuIAPL+bavAv80zPO9nGzn38I32CzzjAoDPNMQ2rrIMlQ/YOmJry3RACyvP4j
	 B0qpyfkWGuaPAWDKVnkzuue5tnjSFsPXxXk4Dywptrg12oljHVTp6Hv9WJ7QUcB/yC
	 Bob65DQmL1rZ48M8YR5msDXCdNFDMYZ5HYSWJs0mPaai/qZG+0+avvzWGCeI7NOKwG
	 ApPcD+/ml1Qvoc6WcS8Z9262bNUswoxfNQDhx+2s84xbU9qPHmwV7XWQBGXwNbDmRL
	 126NOX4C9etUIsiUhxv6pFT9l+VQAJ2O8WhXk3ILQPLL+MQOrxH93/CDLBwYbw3OLu
	 +RSQ7qSMRxD6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 183C860B69;
	Sat, 31 Jan 2026 14:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15C8C2D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3761E60B4C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9K8_dPPe15bF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C3EE60B3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C3EE60B3C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C3EE60B3C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 81BD7444D3;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03990C4AF64;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBua-0000000AVlz-11Zm; Sat, 31 Jan 2026 15:25:20 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Sat, 31 Jan 2026 15:25:08 +0100
Message-ID: <ba775b448df3255dbae6ce6e22a02144949291c2.1769867954.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869522;
 bh=93FI6HCbFuKLoTGysvIesP/671jVJYX05qdlxtKR9Kk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SqYzYt4IVbQPk0+jVuZ5Mhm77EzcOYeCDYr1W2HuJd8hXnAxnVEJQ8JMaAIBj6hDK
 F9ld/mXQMtTt6G+oCP/+SOwNUStMoI62trzL72ps7dw3/2PBRffb/epek6i+75z9Wo
 sw4shcSs4yVNiPTU/KitBkVX6jiSrQKT3by6VGT9JLow1pCHB/xI615IOPPlwhv+S9
 ZTnQTEIGjPQZ8CPMO+MKH+8LP+9uC1b2j1P0P/+UCCa+2G8evst/yofLjr2xolWBwa
 NSAD99xusS4nq3x5iW/Wvjx6ul+7/wgQFUyHaNSK6Y4u6n1IcPC+t8lH3OJrGuxYJm
 AAWAO5q9fQ7JA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SqYzYt4I
Subject: [Intel-wired-lan] [PATCH v4 34/41] docs: kdoc_files: document
 KernelFiles() ABI
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
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 70C4BC248D
X-Rspamd-Action: no action

The KernelFiles is the main entry point to run kernel-doc,
being used by both tools/docs/kernel-doc and
Documentation/sphinx/kerneldoc.py.

It is also used on QEMU, which also uses the kernel-doc
libraries from tools/lib/python/kdoc.

Properly describe its ABI contract.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_files.py | 44 ++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/tools/lib/python/kdoc/kdoc_files.py b/tools/lib/python/kdoc/kdoc_files.py
index c35e033cf123..8c2059623949 100644
--- a/tools/lib/python/kdoc/kdoc_files.py
+++ b/tools/lib/python/kdoc/kdoc_files.py
@@ -91,7 +91,49 @@ class KernelFiles():
     """
     Parse kernel-doc tags on multiple kernel source files.
 
-    There are two type of parsers defined here:
+    This is the main entry point to run kernel-doc. This class is initialized
+    using a series of optional arguments:
+
+    ``verbose``
+        If True, enables kernel-doc verbosity. Default: False.
+
+    ``out_style``
+        Class to be used to format output. If None (default),
+        only report errors.
+
+    ``xforms``
+        Transforms to be applied to C prototypes and data structs.
+        If not specified, defaults to xforms = CFunction()
+
+    ``werror``
+        If True, treat warnings as errors, retuning an error code on warnings.
+
+        Default: False.
+
+    ``wreturn``
+        If True, warns about the lack of a return markup on functions.
+
+        Default: False.
+    ``wshort_desc``
+        If True, warns if initial short description is missing.
+
+        Default: False.
+
+    ``wcontents_before_sections``
+        If True, warn if there are contents before sections (deprecated).
+        This option is kept just for backward-compatibility, but it does
+        nothing, neither here nor at the original Perl script.
+
+        Default: False.
+
+    ``logger``
+        Optional logger class instance.
+
+        If not specified, defaults to use: ``logging.getLogger("kernel-doc")``
+
+    Note:
+        There are two type of parsers defined here:
+
         - self.parse_file(): parses both kernel-doc markups and
           ``EXPORT_SYMBOL*`` macros;
         - self.process_export_file(): parses only ``EXPORT_SYMBOL*`` macros.
-- 
2.52.0

