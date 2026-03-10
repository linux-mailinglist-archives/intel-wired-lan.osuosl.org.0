Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KfqMVM4sGkKhQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 550BA253629
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D079A80BB2;
	Tue, 10 Mar 2026 15:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZhuriewdLi27; Tue, 10 Mar 2026 15:27:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35CB480F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773156430;
	bh=kFNnc0fM/uj/UTRfoSSwiw1Kve/S6tlLTERJUkGw2mk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z1ZNKehucJIu9aTuTusMHmi2fFhNtVICj8G9Pqp6VMyIGxrkTfyETAKGmObt/s37V
	 dvzkNIO/Q+CopSYS+JB0ygVDbdl8gttOYDcEuDtahwXyMTj4FHuSOfMW8B7Ft1xlXM
	 3KGzIz+j2Wm2Tc9EG15vw/bTY+izWLlJy6xR1A0TyLn369DR8N646XNGZE6reFxTG4
	 2CL8lCPrLeiseQ40hS4B5nOOu9cPCNSXjUEGNqUaKmEvAJr4aGP9dt0AZcLJAt8toU
	 h9cvpNuPOujlaOjLsYRwJX6++c5bHofKB+I1HZFuF59zdPRoi0iLY2LSMjReqpoOQY
	 MBkMdLYX2Fqkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35CB480F4C;
	Tue, 10 Mar 2026 15:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 18E7DB2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09F4F60B75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ST7m0CIkl_s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 12:01:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:bf0:244:244::119; helo=mail.avm.de;
 envelope-from=phahn-oss@avm.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A6BD560B56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6BD560B56
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::119])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6BD560B56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:17 +0000 (UTC)
Received: from [2001:bf0:244:244::71] (helo=mail.avm.de)
 by mail.avm.de with ESMTP (eXpurgate 4.55.2)
 (envelope-from <phahn-oss@avm.de>)
 id 69b006aa-2367-7f0000032729-7f0000019cb8-1
 for <multiple-recipients>; Tue, 10 Mar 2026 12:55:23 +0100
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de
 [IPv6:2001:bf0:244:244::71]) by mail.avm.de (Postfix) with ESMTPS;
 Tue, 10 Mar 2026 12:55:22 +0100 (CET)
From: Philipp Hahn <phahn-oss@avm.de>
Date: Tue, 10 Mar 2026 12:48:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-b4-is_err_or_null-v1-1-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
To: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, 
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org, 
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-mips@vger.kernel.org, linux-mm@kvack.org, 
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org, 
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org, 
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev, 
 Philipp Hahn <phahn-oss@avm.de>
Cc: Julia Lawall <Julia.Lawall@inria.fr>, 
 Nicolas Palix <nicolas.palix@imag.fr>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3942; i=phahn-oss@avm.de;
 h=from:subject:message-id; bh=pg0bcAlKCqGzZYxxvjTHT3BjuiImw/JCztrCxw0OaYk=;
 b=owEBbQGS/pANAwAKATQtBlPRrKzbAcsmYgBpsAXSiE/1KQSdimAccvhjPksfwMRe29ZGV0WmQ
 dc68UTm4wOJATMEAAEKAB0WIQQ5bPBtrWDUcDQCppg0LQZT0ays2wUCabAF0gAKCRA0LQZT0ays
 23P4B/sHBnCDcdVo4QHtyw/PgaWkSZpnGi/FADclDF/JNscwRsXCrFWzhKgn3xZ7GBKm9yEUANd
 kHYMMKsDVZ5Sq7xOrshFMfBSWpA+0BsCM8pKaxoj2QHBKIDA4UgN93hm4YvutplfF9/q6gdQOqR
 x0WpQkBc7InCLdKCwpXNhcL/HWVvBtzqT2nSOrbK1Rd5xcaVOko56aV82Fnst/bFUZLKttOBTCU
 bLU0LprdbSKp+PN7eyMO37tBs3H4QuuQgnRmZxd8L6mNXEFIpj0UqSFvKNrDWZBtTjurbiwItHZ
 +OYdOt4ryN9C08iNZEaNQULUxcRTzE4KumgPWWtIEShH9ICc
X-Developer-Key: i=phahn-oss@avm.de; a=openpgp;
 fpr=58AF7C2E007CDBE62C59E078F50EFDCF8AD04B1A
X-purgate-ID: 149429::1773143723-D8CB5E1F-6C1339D5/0/0
X-purgate-type: clean
X-purgate-size: 3944
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Tue, 10 Mar 2026 15:27:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=avm.de; s=mail; 
 t=1773143723; bh=pg0bcAlKCqGzZYxxvjTHT3BjuiImw/JCztrCxw0OaYk=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=bIWX9HTo18B4ZE3sIquR8sbft3qzxzntZILxo7B74pgnu0rbeOHxAC7dlzZUeUKhf
 HyziuuxI8v1FJdI0XETgMVlTILYL71/sVzADfcPBmDn0JPtGKUshimXXHFg01f3FBK
 jYVNQFVbnSBvARzQ5cTWzBurkew0k16ZhIWvNTOE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=avm.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=bIWX9HTo
Subject: [Intel-wired-lan] [PATCH 01/61] Coccinelle: Prefer IS_ERR_OR_NULL
 over manual NULL check
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
X-Rspamd-Queue-Id: 550BA253629
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[avm.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-pm@vger.
 kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:phahn-oss@avm.de,m:Julia.Lawall@inria.fr,m:nicolas.palix@imag.fr,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[56];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Find and convert uses of IS_ERR() plus NULL check to IS_ERR_OR_NULL().

There are several cases where `!ptr && WARN_ON[_ONCE](IS_ERR(ptr))` is
used:
- arch/x86/kernel/callthunks.c:215 WARN_ON_ONCE
- drivers/clk/clk.c:4561 WARN_ON_ONCE
- drivers/interconnect/core.c:793 WARN_ON
- drivers/reset/core.c:718 WARN_ON
The change is not 100% semantical equivalent as the warning will now
also happen when the pointer is NULL.

To: Julia Lawall <Julia.Lawall@inria.fr>
To: Nicolas Palix <nicolas.palix@imag.fr>
Cc: cocci@inria.fr
Cc: linux-kernel@vger.kernel.org

---
drivers/clocksource/mips-gic-timer.c:283 looks suspicious: ret != clk,
but Daniel Lezcano verified it as cottect.

There are some cases where the checks are part of a larger expression:
- mm/kmemleak.c:1095
- mm/kmemleak.c:1155
- mm/kmemleak.c:1173
- mm/kmemleak.c:1290
- mm/kmemleak.c:1328
- mm/kmemleak.c:1241
- mm/kmemleak.c:1310
- mm/kmemleak.c:1258
- net/netlink/af_netlink.c:2670
Thanks to Julia Lawall for the help to also handle them.

Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
---
 scripts/coccinelle/api/is_err_or_null.cocci | 125 ++++++++++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/scripts/coccinelle/api/is_err_or_null.cocci b/scripts/coccinelle/api/is_err_or_null.cocci
new file mode 100644
index 0000000000000000000000000000000000000000..7a430eadccd9f9f28b1711d67dd87a817a45bd52
--- /dev/null
+++ b/scripts/coccinelle/api/is_err_or_null.cocci
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: GPL-2.0-only
+///
+/// Use IF_ERR_OR_NULL() instead of IS_ERR() plus a check for (not) NULL
+///
+// Copyright: (C) 2026 Philipp Hahn, FRITZ! Technology GmbH.
+// Confidence: High
+// Options: --no-includes --include-headers
+// Keywords: IS_ERR, IS_ERR_OR_NULL
+
+virtual patch
+virtual report
+virtual org
+
+@p1 depends on patch@
+expression E;
+@@
+(
+-	E != NULL && !IS_ERR(E)
++	!IS_ERR_OR_NULL(E)
+|
+-	E == NULL || IS_ERR(E)
++	IS_ERR_OR_NULL(E)
+|
+-	!IS_ERR(E) && E != NULL
++	!IS_ERR_OR_NULL(E)
+|
+-	IS_ERR(E) || E == NULL
++	IS_ERR_OR_NULL(E)
+)
+
+@p2 depends on patch@
+expression E;
+@@
+(
+-	E == NULL || WARN_ON(IS_ERR(E))
++	WARN_ON(IS_ERR_OR_NULL(E))
+|
+-	E == NULL || WARN_ON_ONCE(IS_ERR(E))
++	WARN_ON_ONCE(IS_ERR_OR_NULL(E))
+)
+
+@p3 depends on patch@
+expression E,e1;
+@@
+(
+-	e1 && E != NULL && !IS_ERR(E)
++	e1 && !IS_ERR_OR_NULL(E)
+|
+-	e1 || E == NULL || IS_ERR(E)
++	e1 || IS_ERR_OR_NULL(E)
+|
+-	e1 && !IS_ERR(E) && E != NULL
++	e1 && !IS_ERR_OR_NULL(E)
+|
+-	e1 || IS_ERR(E) || E == NULL
++	e1 || IS_ERR_OR_NULL(E)
+)
+
+@r1 depends on report || org@
+expression E;
+position p;
+@@
+(
+ 	E != NULL && ... && !IS_ERR@p(E)
+|
+ 	E == NULL || ... || IS_ERR@p(E)
+|
+ 	!IS_ERR@p(E) && ... && E != NULL
+|
+ 	IS_ERR@p(E) || ... || E == NULL
+)
+
+@script:python depends on report@
+p << r1.p;
+@@
+coccilib.report.print_report(p[0], "opportunity for IS_ERR_OR_NULL()")
+
+@script:python depends on org@
+p << r1.p;
+@@
+coccilib.org.print_todo(p[0], "opportunity for IS_ERR_OR_NULL()")
+
+@p4 depends on patch@
+identifier I;
+expression E;
+@@
+(
+-	(I = E) != NULL && !IS_ERR(I)
++	!IS_ERR_OR_NULL((I = E))
+|
+-	(I = E) == NULL || IS_ERR(I)
++	IS_ERR_OR_NULL((I = E))
+)
+
+@r2 depends on report || org@
+identifier I;
+expression E;
+position p;
+@@
+(
+*	(I = E) != NULL && ... && !IS_ERR@p(I)
+|
+*	(I = E) == NULL || ... || IS_ERR@p(I)
+)
+
+@script:python depends on report@
+p << r2.p;
+@@
+coccilib.report.print_report(p[0], "opportunity for IS_ERR_OR_NULL()")
+
+@script:python depends on org@
+p << r2.p;
+@@
+coccilib.org.print_todo(p[0], "opportunity for IS_ERR_OR_NULL()")
+
+@p5 depends on patch disable unlikely @
+expression E;
+@@
+-\( likely \| unlikely \)(
+(
+ IS_ERR_OR_NULL(E)
+|
+ !IS_ERR_OR_NULL(E)
+)
+-)

-- 
2.43.0

