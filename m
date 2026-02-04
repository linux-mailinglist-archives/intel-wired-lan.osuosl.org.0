Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEqAAktyg2mFmwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 17:22:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 497AEEA22E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 17:22:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3AB360F58;
	Wed,  4 Feb 2026 16:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QBE1wGxxB6ky; Wed,  4 Feb 2026 16:22:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2840A60EC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770222150;
	bh=5Z2IM4Z35Vn6qnneQ2FOXC3Xxl6YzIbYQR2DMfu8vCY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GAfWDQYji1tElEIaxh4Q/59Q8hfaFJOAHVPeyTtojlQFLpnueZrFgjuQciMt7xMiF
	 TtLdV95YRTfLMbhrXRr7JF8IyIz8Q09yT61EyBIg6FJLaD9qXSKlxGR5iELbgp8ArE
	 x6PE6ltoO8wCkjxu+0PIZpuZO0/1W12Ng59Bdz/DToFsKC+jMK/qgohbSZxAGLC4t4
	 h0cocwrAVM7MFtPgrOwvCfyFIED2TB7uaFdVNbgcX51+MOa2wFm0PqAvXb4fn5cYP5
	 kld+EQd2XTQZWIAosZFYONWw9XBQuCYlLlNHnpdbG7Dkjz0HDMUuas1554uQmgMOTa
	 s9N866zmFxBDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2840A60EC8;
	Wed,  4 Feb 2026 16:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8782EF4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 04:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7230483EB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 04:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKapFKi3tZbR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 04:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=kmta1236@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A268583EA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A268583EA8
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A268583EA8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 04:48:35 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-2a90055b9e9so1643965ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Feb 2026 20:48:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770180515; x=1770785315;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5Z2IM4Z35Vn6qnneQ2FOXC3Xxl6YzIbYQR2DMfu8vCY=;
 b=njA1t6YkiMrONUmtS7Aq5BHfkroRSh91LhDvAUWvf6klVI2vH2Xd/ReyWpsi4txuBs
 GE4tRLPGWY8ykEhIkOEsPcGccX3ewCqxJfuCuyq5wBKeORGCEp1JD462+3mQ6sN5s0I5
 CHs22S5RwieAlyTtIIYsjIjKZ11v9vt++Pr00/lHw2LYUbFD+xbQlhqB1NEg3jby7K65
 CnIAaCzyX0xRFltlLgXxOBdNjJj/nPl6mPUkVrxaqXH8ZZkSo/hu6S1bPQkAB3DAquG5
 n3nv/UoXJULyQAB2RXbZ6tAQvqfNWABS29Ar3Sdeov3dOcVZE/MaCveepM7iN8RBoLB/
 LxkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWd6zyTuhqDroJpBB9VFVznY7SiIwTXlVFJnL7kwZXjkrTGA9JNTJ/7O2vrbLcs6XUyiBVOxj7DgUiHNe63gaU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxKF4thvnMwqOHj8YEd7DLc9PBOemTjFO0g7Hg66jz6R69PcrZ7
 bNFNQq1F3c4o8t7JaSWaGJkH9PkflQh3k58tD8DD7lE0oFwz9/swur+M
X-Gm-Gg: AZuq6aKAnwHQgqznL7ZSpY95PMOJbGWzFloxM1OFJS25k01FX6eVJhdSe33aKV8Dtdu
 XZwGcJ3zHUBmereJaNr44EBx31J9Y4NorbEGplFk64os0aJHmdi2hWMbpvCktU7eMcUk43Qmkvg
 o1OKrQyrLgVz9DBpgUxmmnmUuhNRPzl+xWYFLsngiMXZ06pCm5RtzfLm4X1cInkGN55C6CMx0AS
 m0Z63Lz3HmyuHs5PoWpg0g0R4Hg7mD1Dv5Y3b4uQFqZXFp6DSsuVQFwvY8OrwmNU3qOlbKe78GS
 IBVs/YbGtaYwEluJD3m9ECdnmE1VZC4WAzAf7+eKel7ujNVwFblq2O3NE/VyayQ73JV5UQQqKLF
 ZgFv0Hkw/32AssUlRnjFbt0z1gP8Gd0/uz0mv5Zc3iMD103PRY+gOOkHqERNlpAEyPtOa323GIR
 EYiNJ6r59blMPnUXmLTOtZa/ZawrqKYMrSKxFD2/iZhViWWYdvJExdE6XJ0LEU23rymk69VV1B
X-Received: by 2002:a17:902:e54c:b0:29e:facd:7c02 with SMTP id
 d9443c01a7336-2a933e68cf0mr20042835ad.28.1770180514780; 
 Tue, 03 Feb 2026 20:48:34 -0800 (PST)
Received: from dpc2500057.. (fsb6a9315e.tkyc502.ap.nuro.jp. [182.169.49.94])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a933977e8bsm9503835ad.85.2026.02.03.20.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Feb 2026 20:48:34 -0800 (PST)
From: Keita Morisaki <kmta1236@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Keita Morisaki <kmta1236@gmail.com>
Date: Wed,  4 Feb 2026 13:48:22 +0900
Message-Id: <20260204044822.2754803-1-kmta1236@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 04 Feb 2026 16:22:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770180515; x=1770785315; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5Z2IM4Z35Vn6qnneQ2FOXC3Xxl6YzIbYQR2DMfu8vCY=;
 b=nIN77rG2JZfmgNC6Viugn7bNyVht0tU6r4dngci/5ajn1/9PDm7uZdU7b48+JOLSr8
 bSNsUHkJVDZmY4F6NxzUp17/GH3RBS5Hzk73p3F9EDmsKyPaJb16DqJwVYC4JONdk4oL
 j9rxFC2MIiJUZvb7x1Zs4spHUIq+Cclp+KRroVHwMI8YIda8axkBRTFXZnEMyRrLhe8f
 J9xDy3jP0v4NBWiJ4vfVTvVgpAWNZVdJ6g2F6kFGlZit+HgQSgtnpGdmDDPkTDR+XSN4
 6LpWMMO8EO6Hss8U6sJ2+qw83qsT2QIhm5wMfvy02uO8qKhfE0tzkpKi4wl8F8N6JUR4
 zOlA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=nIN77rG2
Subject: [Intel-wired-lan] [PATCH] ice: fix race condition in TX timestamp
 ring cleanup
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:kmta1236@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.osuosl.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 497AEEA22E
X-Rspamd-Action: no action

Fix a race condition between ice_free_tx_tstamp_ring() and ice_tx_map()
that can cause a NULL pointer dereference.

ice_free_tx_tstamp_ring currently clears the ICE_TX_FLAGS_TXTIME flag
after NULLing the tstamp_ring. This could allow a concurrent ice_tx_map
call on another CPU to dereference the tstamp_ring, which could lead to
a NULL pointer dereference.

  CPU A:ice_free_tx_tstamp_ring() | CPU B:ice_tx_map()
  --------------------------------|---------------------------------
  tx_ring->tstamp_ring = NULL     |
                                  | ice_is_txtime_cfg() -> true
                                  | tstamp_ring = tx_ring->tstamp_ring
                                  | tstamp_ring->count  // NULL deref!
  flags &= ~ICE_TX_FLAGS_TXTIME   |

Fix by
1. ice_free_tx_tstamp_ring: Clear the flag before NULLing the pointer.
   Use WRITE_ONCE() to prevent store tearing, and smp_wmb() to
   prevent re-ordering.
2. ice_tx_map: Add smp_rmb() after the flag check to order the flag
   read before the pointer read, use READ_ONCE() for the pointer, and
   add a NULL check. If tstamp_ring is NULL, fall through to the
   regular TX ring kick to avoid leaving packets stuck in the ring.

Fixes: ccde82e90946 ("ice: add E830 Earliest TxTime First Offload support")
Signed-off-by: Keita Morisaki <kmta1236@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index ad76768a42323..d48740f2b626a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -190,9 +190,10 @@ void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring)
 void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring)
 {
 	ice_free_tstamp_ring(tx_ring);
+	WRITE_ONCE(tx_ring->flags, tx_ring->flags & ~ICE_TX_FLAGS_TXTIME);
+	smp_wmb();	/* order flag clear before pointer NULL; pairs with ice_tx_map() */
 	kfree_rcu(tx_ring->tstamp_ring, rcu);
-	tx_ring->tstamp_ring = NULL;
-	tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
+	WRITE_ONCE(tx_ring->tstamp_ring, NULL);
 }
 
 /**
@@ -1519,13 +1520,20 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 		return;
 
 	if (ice_is_txtime_cfg(tx_ring)) {
-		struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
-		u32 tstamp_count = tstamp_ring->count;
-		u32 j = tstamp_ring->next_to_use;
+		struct ice_tstamp_ring *tstamp_ring;
+		u32 tstamp_count, j;
 		struct ice_ts_desc *ts_desc;
 		struct timespec64 ts;
 		u32 tstamp;
 
+		smp_rmb();	/* order flag read before pointer read */
+		tstamp_ring = READ_ONCE(tx_ring->tstamp_ring);
+		if (unlikely(!tstamp_ring))
+			goto ring_kick;
+
+		tstamp_count = tstamp_ring->count;
+		j = tstamp_ring->next_to_use;
+
 		ts = ktime_to_timespec64(first->skb->tstamp);
 		tstamp = ts.tv_nsec >> ICE_TXTIME_CTX_RESOLUTION_128NS;
 
@@ -1553,6 +1561,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 		tstamp_ring->next_to_use = j;
 		writel_relaxed(j, tstamp_ring->tail);
 	} else {
+ring_kick:
 		writel_relaxed(i, tx_ring->tail);
 	}
 	return;

base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
-- 
2.34.1

