Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKKpBOCQlWnoSQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A65155320
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1FAC810C9;
	Wed, 18 Feb 2026 10:13:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9VEAo3138b3D; Wed, 18 Feb 2026 10:13:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45736810C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409624;
	bh=ZFarqj/R/r3ArEfpTLMMZ2sYAwIm9hgPCWPCcnBmnQU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4lwJS5/88P5LN9jnpz/L8/c1sQqZqd7rFtu9rnL9IYiXONBs/tioFLR2hwmaeEhNA
	 R/FQ0zt72n2wWh74OUTxxdjFvgr1leDRyfuuGVtY1j2s94iXombEGf/J6fJFLUYtzD
	 r59+9XUt6PTuxSi01lrNb4Q3qPnRDwkk+Tz1RanZngEikkzBpJtQEwzPBcptVN/B+m
	 AIdJ/eYMYOfrV7fqw84HtCrmUriWOJGuwUK/D285X6nHFV95LzP+BWAQNsXHc6gpvX
	 9iynB+WAoc19OFdyOtvUk/pyaXE3eMzF630jOLRQdWFplIXHg+fZyaB+w8AosnFhVO
	 SbbSZJV23Kxvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45736810C4;
	Wed, 18 Feb 2026 10:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D165206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FA1E810B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VS8mePKkIRm2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4CD0D810A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CD0D810A5
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CD0D810A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 712BC61862;
 Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26B82C19421;
 Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYj-00000000Lxe-1kJB; Wed, 18 Feb 2026 11:13:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>
Date: Wed, 18 Feb 2026 11:13:02 +0100
Message-ID: <ca064642fd70b1dd2fa2c72a119a3a579ef0a3c2.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409611;
 bh=93FI6HCbFuKLoTGysvIesP/671jVJYX05qdlxtKR9Kk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D6zqkt/3NUB6EpxHEputgfvaw1vHtc0NsZ65QNN3AAKsJuHWSBcq82NKFzJu8llkR
 S+1bk/UPxulyqkqcMbYtUMX/IIRr09HFtRuwNOA1NPlhPHsSPUiXhECDzbmymTKCPU
 JmPJyAld8CPADXng3h49bxxTnDEx8O6tZ/7uUMOx2P8DlevrZHSEFbuD7SA01tAoZe
 Wy2GDlPrU1hQLkRN135ojO5oHWcW9ckY5i4kcvDUXG5i7xXrBHkp+i3T/cZga64Syq
 yIzxySQ3SnLG+PqvN40MnLlrYGZ278mb8gxtsx2bB1lNqpGUgxCJ6tFZMhIOwetkTl
 /MxbF5cjFyQRg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=D6zqkt/3
Subject: [Intel-wired-lan] [PATCH 32/38] docs: kdoc_files: document
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 60A65155320
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

