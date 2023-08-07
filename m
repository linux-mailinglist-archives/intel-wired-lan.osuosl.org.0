Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FD6771E49
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 12:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE78C60B43;
	Mon,  7 Aug 2023 10:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE78C60B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691404678;
	bh=rjb6M6x7Fi7/t6LDa/03FCo4UpYPsHtS5azCW7aAxrs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xo2aWLv66ARR4pUptvpPSqMxfatBlY2kGXw8T9ND7lTMa8RRqY5Bn1V/yRh6j9OX7
	 Z4GBTumoRVxeg3PruKOyr7Kj8AmNRZJg1DjA4c/jqkiXWasLzqVqYoSL1bJC8mH8mR
	 qC0RhPc32XujbO5LV4wmJ+VGj9EpuNSn5a0EVuYlxEIvtzU02hraOGj+RIzNfX6xcK
	 qlu/dxRFfuy4rpkcGrsHyNgVyIIYmOfLWe4CpCRAHURW5m4B6icxbDNgP/YuuuqUqa
	 EZCb05CdWjsu0a2b4YsaaAeslfjx8D5QYGtQ7q7SCLugvLpeU5hH76xixoxl7H+0TN
	 uARYoVWgqsZ/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ISndQi3AwNkY; Mon,  7 Aug 2023 10:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A29E060EF9;
	Mon,  7 Aug 2023 10:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A29E060EF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9461BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4269A80E38
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4269A80E38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhqjsKZiOmpe for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 10:36:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DC4380BFC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DC4380BFC
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="401482311"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="401482311"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 03:36:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874262842"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2023 03:36:38 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 12:36:21 +0200
Message-Id: <20230807103624.468230-7-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230807103624.468230-1-karol.kolacinski@intel.com>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691404596; x=1722940596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gJGfERlJEuwC0t7UM7obH2m41TaJM1lgXjAdw90Xxgs=;
 b=Y0T+fDO9xWraRnMHIJOppYZMjgSyttDlv+5yd5Kfiiez2cCOY3/2+2E3
 B60UqOz5eqfO3hO12/0qywn92aWCOycljDBKUTUmK1TfFdT5s75EBW9SJ
 t+rAkMmwZdEWih9KgF6Irz6VxEZeHxn+CHfxOWtDeZuqQoLJX3anK3+E+
 BGZyNiiagLZCZD9aPibEuK7hul1i77hVy+oUpaoU9+/PuHpqDk1C0ha90
 QQq75MPj0hEMTT0boJxCJgjtsUWOiGdw9uReT0WxABB26TD9aoLmtjhiu
 YHOPJi/LW5Q5oIuUhoiR5ODFTKxn8FXISUK8Kgvj2ADbI/VZ747ocxZyy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y0T+fDO9
Subject: [Intel-wired-lan] [PATCH 6/9] ice: remove ptp_tx ring parameter flag
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Before performing a Tx timestamp in ice_stamp(), the driver checks
a ptp_tx ring variable to see if timestamping is enabled on that ring.
This value is set for all rings whenever userspace configures Tx
timestamping.

Ostensibly this was done to avoid wasting cycles checking other fields
when timestamping has not been enabled. However, for Tx timestamps we
already get an individual per-SKB flag indicating whether userspace
wants to request a timestamp on that packet. We do not gain much by also
having a separate flag to check for whether timestamping was enabled.

In fact, the driver currently fails to restore the field after a PF
reset. Because of this, if a PF reset occurs, timestamps will be
disabled.

Since this flag doesn't add value in the hotpath, remove it and always
provide a timestamp if the SKB flag has been set.

Testing hints:

  We never noticed this before because our usual method of validating Tx
  timestamps, ptp4l, will restore timestamp settings on the socket as
  part of its fault recovery logic. Thus, the ptp4l program might notice
  a missing timestamp, but will quickly recover. Other timestamping
  applications may not be doing such fault checks, and will expect that
  a PF reset restores the timestamp configuration properly.

  To test this, use a standalone application such as the timestamping
  utility from applications.commandline.ptp.utilities, etc.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 14 --------------
 drivers/net/ethernet/intel/ice/ice_txrx.c |  3 ---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 3 files changed, 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c2ced7df87ad..726ea2c5010b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -305,20 +305,6 @@ static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
  */
 static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 {
-	struct ice_vsi *vsi;
-	u16 i;
-
-	vsi = ice_get_main_vsi(pf);
-	if (!vsi)
-		return;
-
-	/* Set the timestamp enable flag for all the Tx rings */
-	ice_for_each_txq(vsi, i) {
-		if (!vsi->tx_rings[i])
-			continue;
-		vsi->tx_rings[i]->ptp_tx = on;
-	}
-
 	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
 		ice_ptp_cfg_tx_interrupt(pf, on);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 52d0a126eb61..9e97ea863068 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2306,9 +2306,6 @@ ice_tstamp(struct ice_tx_ring *tx_ring, struct sk_buff *skb,
 	if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
 		return;
 
-	if (!tx_ring->ptp_tx)
-		return;
-
 	/* Tx timestamps cannot be sampled when doing TSO */
 	if (first->tx_flags & ICE_TX_FLAGS_TSO)
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 166413fc33f4..daf7b9dbb143 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -380,7 +380,6 @@ struct ice_tx_ring {
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
-	u8 ptp_tx;
 } ____cacheline_internodealigned_in_smp;
 
 static inline bool ice_ring_uses_build_skb(struct ice_rx_ring *ring)
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
