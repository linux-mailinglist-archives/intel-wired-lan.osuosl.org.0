Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFKDO+oDhGmHwwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 03:43:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEA5EE136
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 03:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D869281649;
	Thu,  5 Feb 2026 02:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jo8LeRKgesi7; Thu,  5 Feb 2026 02:43:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DFE681E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770259430;
	bh=Uq//eKnU0VIy+iDlWT3coRvXqAavfDjJ0UDudhoedEQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bBFO5EUXFNcGdxyovCJE909KRwkC7odCNYLmdkzggvH7HbCUyyz58NXSTBCY6z7Nc
	 pwUr3+s8IEwc+ZxWPctGf08gBiWB1uoUrd0SK9xtEVo8emZtbsMB7LZmx3Ht9+RxJ1
	 CnrzOdq6qSZZgau+UpH06CtMP/TMei3tshIQHylG21BX7+svRYxUrW4NEcmPZtMUlf
	 jx76agEs3plMtFeynCK1B6vkZe8gWawcYxjxcZ60J4t41ny/EgftD0IcH4wdo5IJoR
	 XQZO0I9DBBiO8Zo9fxu5EomtDVySIiB3l67+2Snj9pc4oLg4kI0gJoi2pu5FA115D7
	 46CXX1QkHcpLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DFE681E0E;
	Thu,  5 Feb 2026 02:43:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DD52E17A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 02:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAE894048F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 02:43:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1N7Ve3QCeUzv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 02:43:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=kmta1236@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DFE440422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DFE440422
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DFE440422
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 02:43:46 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-2a9042df9a2so2523945ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Feb 2026 18:43:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770259426; x=1770864226;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Uq//eKnU0VIy+iDlWT3coRvXqAavfDjJ0UDudhoedEQ=;
 b=mu6t8sz87riEQmQppUPW4mCTrHEpH/BcHmCyaqYUkIJQHnM6PsFC61m1evhKQOx5+q
 8KT15LA3vaswd4BVvMPSNiMeln6lXhleosUlCxu2J6SA9dmBDEvvMCF9T4D0ynW3HL6k
 4rtlnGwOFpx+zG4UK439FcYWZB4T3Y8OIrb6h7kXykRLBokj70f/xbuKlKiO7WUmkjNR
 DnRdf+13ll+u5TCZlJoLxHcnVqLwiiIYpt1kbAlMiMBBUJo2AIkIqJ27TBrnEkZNhWNt
 M0+yazJuSk4hJZsN5fPInrQ/PKU2Lbd4NonvH7ExZ+rQfKCldwOyfz2ZJxJ7G+wR7BjX
 W/tQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWd48y2rV38zfAM9UY3IFZ93vf352KrfiP4I947nUnpv2yNWFRRyoArW2wic2xtbGmRCe7oXXtbDXYhePDGYQw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyiYOeFayUHNCrBYmKYXwGXojIDor+YmEQAl/52/CeBun9xkKRa
 czBLB/RVoaP6ViMPv53S85PUkFMEX9PZQ67TV2l1VS6qaYzKN0qSMYDA
X-Gm-Gg: AZuq6aKOTdUcyLe0Ps1QUaPsUjcCbGJKUaMXleavlIDEV0t5v+z9CkmgvE7GLKuMuXi
 CMfn5XhJua6nuZ/5n7eAVyz+rvSAZPXnnnLPXGBbNryei67B6Km7MOKkVYeXiWX9q3ttpLD7/SS
 7reAmBoYGdolIiIvnMmCOAIwj+bbJnJe985SmTmJW1eJI74lWeyjboGCPybvVnUjdGjfADXQSJu
 aSnRioyKMu+yvKlxoPHxVT80v5NkOSjiGEwI+8rCp3jjBKgc9jE2bFNLmtsQrSfqdcqNPnrQdtz
 +Ph/0TWXfnlYE67IAxdebt+1sMn51g+szqIAecQ0Do4CXjeLAjh9AnWqJvVKwAgZNTkLU/8oxB6
 bitxiTemya52dDMKYSn+rRtcXNKw9tSJ614ihea9Uoj/KHBmGfgpPtj9cdh+2rvWKm9IvB4YWkK
 oqsS8wL2BaqcvZ2lBwyu+PQ+e2lVdFrihxgV1uskFhOn1gvkx+mfd75S2zZNmDexoA2XQzvC3h0
 t8cAf3NjU8=
X-Received: by 2002:a17:903:4b0d:b0:2a7:f369:4de8 with SMTP id
 d9443c01a7336-2a933fddab3mr51965225ad.42.1770259426114; 
 Wed, 04 Feb 2026 18:43:46 -0800 (PST)
Received: from dpc2500057.. (fsb6a9315e.tkyc502.ap.nuro.jp. [182.169.49.94])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a9338acfe8sm36559315ad.42.2026.02.04.18.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Feb 2026 18:43:45 -0800 (PST)
From: Keita Morisaki <kmta1236@gmail.com>
To: tony.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, paul.greenwalt@intel.com,
 maciej.fijalkowski@intel.com, aleksandr.loktionov@intel.com,
 alice.michael@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Keita Morisaki <kmta1236@gmail.com>
Date: Thu,  5 Feb 2026 11:43:27 +0900
Message-Id: <20260205024327.233346-1-kmta1236@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770259426; x=1770864226; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Uq//eKnU0VIy+iDlWT3coRvXqAavfDjJ0UDudhoedEQ=;
 b=m7yA+buncSiJjbtKATxW/GmDt21b0micy2kc5A9MGb5FROhjqN8+Y81t6amqg6YvSl
 cPrEzNKofVcwk/Aq9vZ6u2TGf0F/lRB6Nl+sVutMFzW+SRVENq/ttJncD3UUsvNwdVBK
 3/xZyx2XkHp2BzuL6bxC4O6xFvMfrhWXYXj8V4aDsZHPnjlwHlWrHUlrJkZJfa41Z0bz
 BqbOlFmxQkzUQ6RtlqZPMAN2t0p/YLMCD7e1Kb/H/9wHqcm4gohxbLWAoE7o5x8wcPdK
 bva9vjZlCzWAWiZiQvtxzJxVMMUHPuMd40A0eT2d7OkE7LzjZAVa1ApQeu85Lz6MBiA9
 AtfQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=m7yA+bun
Subject: [Intel-wired-lan] [PATCH v2] ice: fix race condition in TX
 timestamp ring cleanup
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:tony.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:paul.greenwalt@intel.com,m:maciej.fijalkowski@intel.com,m:aleksandr.loktionov@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:kmta1236@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,lists.osuosl.org,vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3CEA5EE136
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

Fix by:
1. Reordering ice_free_tx_tstamp_ring() to clear the flag before
   NULLing the pointer, with smp_wmb() to ensure proper ordering.
2. Adding smp_rmb() in ice_tx_map() after the flag check to order the
   flag read before the pointer read, using READ_ONCE() for the
   pointer, and adding a NULL check as a safety net.
3. Converting tx_ring->flags from u8 to DECLARE_BITMAP() and using
   atomic bitops (set_bit(), clear_bit(), test_bit()) for all flag
   operations throughout the driver:
   - ICE_TX_RING_FLAGS_XDP
   - ICE_TX_RING_FLAGS_VLAN_L2TAG1
   - ICE_TX_RING_FLAGS_VLAN_L2TAG2
   - ICE_TX_RING_FLAGS_TXTIME

Fixes: ccde82e909467 ("ice: add E830 Earliest TxTime First Offload support")
Signed-off-by: Keita Morisaki <kmta1236@gmail.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
Changes in v2:
- Convert tx_ring->flags from u8 to DECLARE_BITMAP() and use atomic
  bitops (set_bit(), clear_bit(), test_bit()) for all flag operations
  instead of WRITE_ONCE() for flag updates
- Rename flags from ICE_TX_FLAGS_RING_* to ICE_TX_RING_FLAGS_* to
  distinguish from per-packet flags (ICE_TX_FLAGS_*)

 drivers/net/ethernet/intel/ice/ice.h         |  4 ++--
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 23 ++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 16 +++++++++-----
 5 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 00f75d87c73f9..5baeca824cd99 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -753,7 +753,7 @@ static inline bool ice_is_xdp_ena_vsi(struct ice_vsi *vsi)
 
 static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
 {
-	ring->flags |= ICE_TX_FLAGS_RING_XDP;
+	set_bit(ICE_TX_RING_FLAGS_XDP, ring->flags);
 }
 
 /**
@@ -778,7 +778,7 @@ static inline bool ice_is_txtime_ena(const struct ice_tx_ring *ring)
  */
 static inline bool ice_is_txtime_cfg(const struct ice_tx_ring *ring)
 {
-	return !!(ring->flags & ICE_TX_FLAGS_TXTIME);
+	return test_bit(ICE_TX_RING_FLAGS_TXTIME, ring->flags);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 9fc8681cc58ea..bd74344271f3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -943,7 +943,7 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 		/* if this is not already set it means a VLAN 0 + priority needs
 		 * to be offloaded
 		 */
-		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
+		if (test_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, tx_ring->flags))
 			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
 		else
 			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d47af94f31a99..55ff0708d136e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1412,9 +1412,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->count = vsi->num_tx_desc;
 		ring->txq_teid = ICE_INVAL_TEID;
 		if (dvm_ena)
-			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
+			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, ring->flags);
 		else
-			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
+			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG1, ring->flags);
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index ad76768a42323..564e4e33ecbc3 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -190,9 +190,10 @@ void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring)
 void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring)
 {
 	ice_free_tstamp_ring(tx_ring);
+	clear_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);
+	smp_wmb();	/* order flag clear before pointer NULL */
 	kfree_rcu(tx_ring->tstamp_ring, rcu);
-	tx_ring->tstamp_ring = NULL;
-	tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
+	WRITE_ONCE(tx_ring->tstamp_ring, NULL);
 }
 
 /**
@@ -405,7 +406,7 @@ static int ice_alloc_tstamp_ring(struct ice_tx_ring *tx_ring)
 	tx_ring->tstamp_ring = tstamp_ring;
 	tstamp_ring->desc = NULL;
 	tstamp_ring->count = ice_calc_ts_ring_count(tx_ring);
-	tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
+	set_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);
 	return 0;
 }
 
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
@@ -1812,7 +1821,7 @@ ice_tx_prepare_vlan_flags(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first)
 	 */
 	if (skb_vlan_tag_present(skb)) {
 		first->vid = skb_vlan_tag_get(skb);
-		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
+		if (test_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, tx_ring->flags))
 			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
 		else
 			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index e440c55d9e9f0..d35ffdc3dc84d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -181,6 +181,14 @@ enum ice_rx_dtype {
 	ICE_RX_DTYPE_SPLIT_ALWAYS	= 2,
 };
 
+enum ice_tx_ring_flags {
+	ICE_TX_RING_FLAGS_XDP,
+	ICE_TX_RING_FLAGS_VLAN_L2TAG1,
+	ICE_TX_RING_FLAGS_VLAN_L2TAG2,
+	ICE_TX_RING_FLAGS_TXTIME,
+	ICE_TX_RING_FLAGS_NBITS,
+};
+
 struct ice_pkt_ctx {
 	u64 cached_phctime;
 	__be16 vlan_proto;
@@ -333,11 +341,7 @@ struct ice_tx_ring {
 	u32 txq_teid;			/* Added Tx queue TEID */
 	/* CL4 - 4th cacheline starts here */
 	struct ice_tstamp_ring *tstamp_ring;
-#define ICE_TX_FLAGS_RING_XDP		BIT(0)
-#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
-#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
-#define ICE_TX_FLAGS_TXTIME		BIT(3)
-	u8 flags;
+	DECLARE_BITMAP(flags, ICE_TX_RING_FLAGS_NBITS);
 	u8 dcb_tc;			/* Traffic class of ring */
 	u16 quanta_prof_id;
 } ____cacheline_internodealigned_in_smp;
@@ -349,7 +353,7 @@ static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
 
 static inline bool ice_ring_is_xdp(struct ice_tx_ring *ring)
 {
-	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
+	return test_bit(ICE_TX_RING_FLAGS_XDP, ring->flags);
 }
 
 enum ice_container_type {

base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
-- 
2.34.1

