Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGO4EubT1mkpJAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 00:17:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 458AB3C4654
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 00:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2CB441028;
	Wed,  8 Apr 2026 22:17:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CLrbCy54HTPS; Wed,  8 Apr 2026 22:17:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40F8441029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775686627;
	bh=ehmBTStGxjIWJb+87OhU5FsUCauocfeWuRVPJbg7eLY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gOHYWB7H1MY7X0b1JaNa8FnBP/l0vB3+qIlP6qyS3SsMog1n4ysZJpJzTsIHQc2h0
	 uiE7j8rN7V5F/yWv/fCStQU2PUUbFuSbeUZQypiUzzdgOCOXLZ8bK/hza7idZgloO3
	 Z23ns8O48tX89eR8LsE5YZSugX8bj50vESjI52tZZQJEd2ROCJl+1Li5deOPlXx32Z
	 n/ES119Wxr+BNrSzVRs/PKjhGdKKrMGylILoKHEtpPmJiVfNfBtgmCRtmwiiP/rau7
	 iHa3Xfzgi9KudHWyGmwsG5G7eIU7DJm9eFMN7n5FKxW+7RCbddN4sNDF3OFt3CBjc4
	 0WFcx+EQ71g9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40F8441029;
	Wed,  8 Apr 2026 22:17:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CF9291F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 22:17:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C13CB41025
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 22:17:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdEIjLvbfbLM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 22:17:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1334; helo=mail-dy1-x1334.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B32DE41021
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B32DE41021
Received: from mail-dy1-x1334.google.com (mail-dy1-x1334.google.com
 [IPv6:2607:f8b0:4864:20::1334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B32DE41021
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 22:17:04 +0000 (UTC)
Received: by mail-dy1-x1334.google.com with SMTP id
 5a478bee46e88-2bdd40d3c61so74807eec.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Apr 2026 15:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775686623; x=1776291423;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ehmBTStGxjIWJb+87OhU5FsUCauocfeWuRVPJbg7eLY=;
 b=iAhFLR8D/ncPxojQIVHFic/slmpOs34gmxTxGF60im4kmJ3ixEoakLIE/UaFTpZyVA
 9yiCbW2cnT5hy4IqOC4BvW7nomIP3ouGCJXEcRsbI+bdpTVrZxojcSr/UnXNyI/JqFcP
 eK0+pCFNSTj3xhPfS/cTG12GtFJp3St5Aj14hSmyTEvK6mcV7OxaVSI+hv2VLeaeWbB4
 6mR6dlsjxw6mJRUh00ytvSAZgQZHtpnhj0L6RmSq0uejhUOItI9AjAWbGtvlemPrlZMX
 oYEOcdVK8/5TRhCt77PhMiBcqqL355tdh+QCU6XBrT0AulesHn7OkoRxA6vN+6jd0V3+
 dOOA==
X-Gm-Message-State: AOJu0YzztJtT7YuemFK3f0xAAx7AwonYoW12smlQ5bKTrsmrzUS7te1u
 EUtZl9yVLZ+q41tjb3VN12A4IFxZ0sdfC/AV/oPDniARLCVY0g3UBNtEhHskP8U+
X-Gm-Gg: AeBDievF56VVpMTiWuPmAmEKMPymtK4EPtFVI9GGj/gMf3IhS4pcp0Lb+pdQVxH4u/y
 9roqT6lRSQzRlgfhpprgU1qH23+UPw8vTYD54wqsLNVD2ZATqJW99z5katE8qYL+8/nJ/sVeRao
 vrjECYpEzQsa4hshVLoReMSdGKbPTYVBAyVHxmHC+LgAUNw7DYpttU34T8gUb+89NW6y7zJy5mv
 J8DaNKvVvpT/8LnME2JJFjAiPQZf8NiPszI+RoFc1jtr/6/hgL1D0VsNzfh74egBpCa14Mrvig3
 PT5z73YefuBNd3fBF1JsHF6wvtsOsiIqE3HCvEOMFOSg2LykpjinfaMtAiDsGBNshlLL/8y2FaK
 oK2fIaWqYR+/VowPBPaG6cTbi2N7AVF50s+mJWNs9HZFm9iducyaoZ0QRF+7oy3G7AogIUeVkkn
 b1RSG9AY+kabb9XNABWve4GiolcSctadyFprw=
X-Received: by 2002:a05:693c:2b17:b0:2be:10a6:647e with SMTP id
 5a478bee46e88-2d40defc7fcmr742405eec.19.1775686623034; 
 Wed, 08 Apr 2026 15:17:03 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:62b:7fdb:100e:77c9:8ad6])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2cba5df5c24sm21369464eec.27.2026.04.08.15.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 15:17:02 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>
Date: Wed,  8 Apr 2026 18:16:33 -0400
Message-ID: <20260408221633.73854-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775686623; x=1776291423; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ehmBTStGxjIWJb+87OhU5FsUCauocfeWuRVPJbg7eLY=;
 b=kEU1EBI2It++t6iXmsdEybYaG9seCN4aQ/Jw2dgU9/MOIfDBkAF6nXDP1xXAC/+oTK
 wb3LUwtVgXzqx5SIdUc/dy6b8fSsGVDekLAyn2b3L4tZR9rRwPcO/eB9UkWZFS8qUkz3
 LoKWfJhGvK6dun7w/Ox061FXRUUsZAgxjt3UV+/gJoHGs5RoWq1KsDXTvdu1pnDBZTkE
 hJB0rAOiHo6SIewMFvZCAh9hDGqZj6tIzTZFbER9eM7O2L5nVLma9/7VR79YPEtV+hnX
 WpTxYJYlkjcoeUvyFyyEfxAJkgjOFwkT5ymbEml3a5sj1x0QUFGsVDZGllLc4HssgVyB
 z72A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=kEU1EBI2
Subject: [Intel-wired-lan] [PATCH iwl-next] e1000e: Use
 __napi_schedule_irqoff()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 458AB3C4654
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The __napi_schedule_irqoff() macro is intended to bypass saving and
restoring IRQ state when scheduling is requested from an IRQ handler,
where hard interrupts are already disabled. Use this macro in all three
interrupt handlers.

This was tested on a system with an I218-V and MSI interrupts. Because
this is an optimization, I was interested in measuring the impact, so I
added ktime_get() time measurement to e1000_intr_msi and a print of the
last sample in the watchdog task. For each test case I ran a
bi-directional iperf3 to saturate the line. With some help from awk,
here are the statistics.

49 samples each, all units ns
previous: min 678 max 1265 mean 879.429 median 806 stddev 137.188
noirq:    min 707 max 1165 mean 811.857 median 790 stddev  89.486

According to this informal comparison, the mean time to handle an
interrupt from start to finish is improved by about 8% under load.

Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9befdacd6730..3ba108bc3036 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1803,7 +1803,7 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
 		adapter->total_tx_packets = 0;
 		adapter->total_rx_bytes = 0;
 		adapter->total_rx_packets = 0;
-		__napi_schedule(&adapter->napi);
+		__napi_schedule_irqoff(&adapter->napi);
 	}
 
 	return IRQ_HANDLED;
@@ -1882,7 +1882,7 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
 		adapter->total_tx_packets = 0;
 		adapter->total_rx_bytes = 0;
 		adapter->total_rx_packets = 0;
-		__napi_schedule(&adapter->napi);
+		__napi_schedule_irqoff(&adapter->napi);
 	}
 
 	return IRQ_HANDLED;
@@ -1951,7 +1951,7 @@ static irqreturn_t e1000_intr_msix_rx(int __always_unused irq, void *data)
 	if (napi_schedule_prep(&adapter->napi)) {
 		adapter->total_rx_bytes = 0;
 		adapter->total_rx_packets = 0;
-		__napi_schedule(&adapter->napi);
+		__napi_schedule_irqoff(&adapter->napi);
 	}
 	return IRQ_HANDLED;
 }
-- 
2.43.0

