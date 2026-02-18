Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHVNKMWQlWnoSQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB94A15521A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C294A40749;
	Wed, 18 Feb 2026 10:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iiIvINcA9m7c; Wed, 18 Feb 2026 10:13:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1706B40755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409602;
	bh=RZiVcoqkBC/JFnaNthD7YqfMckNY+HlSnPGOg1NITxY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2cfRZ6+XKcoOwLJLwSHCh7OSeS7tXMSI+eaS8WUoKW7zral+t4zoaWc8uL4+zyhwC
	 s5ks+nLa6cTcl4TKidOssb9kiPB69l42meoN1BSOjbeXrHRp3CK8Pi9S5PLSNq7lM3
	 FjA6n+6xrfbv4eUF7X9N1i4t3BnBi+Y4mzaP9NyYy0PuP/zxDrj2fdqX6hi4lY7H9u
	 LmrDgf9ayXLvjXkniJDn4oRzphTDdt3BQLpiSiBxAjQvsLRBb4Sui5XKcvELeYF3vD
	 pQZ1zjQL+y8pUL3YOS2VQWzcJjGW3gh0O4ciymGuGsyQ+rgCedsa8fEKEcn+aViQ6H
	 tAf7fDm9JNnkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1706B40755;
	Wed, 18 Feb 2026 10:13:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CE2C35B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1DA898108E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kUGhtwyiz9b1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 39D4A8108B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39D4A8108B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39D4A8108B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8B7424452F;
 Wed, 18 Feb 2026 10:13:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE31C2BC86;
 Wed, 18 Feb 2026 10:13:18 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYW-00000000LMC-2DMh; Wed, 18 Feb 2026 11:13:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Wed, 18 Feb 2026 11:12:32 +0100
Message-ID: <98da31eb6b5b2c84e960945e0ea283d3fcd2cce5.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409598;
 bh=ZQpmZi3xCboNCaTitC+DH8Zwcl8IPzrA6Uao2EOU9sw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V4mai1t9MrPfripNwkG+T4D2sdL2EKgkZEsiE7+/d1+6A635o536kp8D/PJk8JfN5
 jY7ne68OA3MfMpRFOglO9rou7faRljM2edDo7w5fWjhhGT4z34ctWyOgLP5wIYc1Ka
 OAzHwdsccUyFXZHS63EAhy68OeW+dJ//KdcIPegB+ChAlHM+7s7Y/Y7VD1ZXrjM53x
 pCD8Nr7cqwwSDDKw0iWZAuQgDwoA/CxtRKlhxK36ZO32/k+CbhkaysSWLLq0gdKG1U
 Wl+8fR0RKi6gB/0XQPF27N05gWr3DJw5EqGz+mTuBFqW/uxvOsDgnTfO9Oqr4W3Kn9
 CcKWiujG5to0g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=V4mai1t9
Subject: [Intel-wired-lan] [PATCH 02/38] docs: kdoc_re: don't go past the
 end of a line
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,infradead.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
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
X-Rspamd-Queue-Id: DB94A15521A
X-Rspamd-Action: no action

The logic which checks if the line ends with ";" is currently
broken: it may try to read past the buffer.

Fix it by checking before trying to access line[pos].

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 tools/lib/python/kdoc/kdoc_re.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/lib/python/kdoc/kdoc_re.py b/tools/lib/python/kdoc/kdoc_re.py
index 774dd747ecb0..6c44fcce0415 100644
--- a/tools/lib/python/kdoc/kdoc_re.py
+++ b/tools/lib/python/kdoc/kdoc_re.py
@@ -269,7 +269,7 @@ class NestedMatch:
             out += new_sub
 
             # Drop end ';' if any
-            if line[pos] == ';':
+            if pos < len(line) and line[pos] == ';':
                 pos += 1
 
             cur_pos = pos
-- 
2.52.0

