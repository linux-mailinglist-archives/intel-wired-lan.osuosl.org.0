Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B0277F893
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B48683BD2;
	Thu, 17 Aug 2023 14:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B48683BD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692281929;
	bh=G9vR4+0vjV4lmBEFnTAaFv02tJp7IhldaWy5Q+IoTUY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HQT2dpSic3vTzw0AGkATYjouf53sEgB50AXBafe82cjPfEyZanT16G92Fv6b8xEtA
	 j/2iWdQ2S8c4mS/+jCPBL6UZ989X9K6dgkUq+PuT7YlTBf4PwOyzYKPlrTwyzyX86x
	 YCmKesZR/aFgyfN5zpClfgS9ldfPqprOA5aE6MUkCumejNYlkvIYcZwtRYQMWnw+cN
	 v9j2cu3kZthuTlgqdz1OjFT5eCzNp++2tZ4hWPu7jBs2oVclGJnQOl9UlDa06nbVor
	 YxSwZTHFchQVLS3cNw5LVgYnRa2GXZG6FwZwXzCOp4Ai6oyLlc1ZqydKMlBl5kP0Qb
	 YVImkNJZOSUmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X8jTPeTy-HY0; Thu, 17 Aug 2023 14:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF84983CAC;
	Thu, 17 Aug 2023 14:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF84983CAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42B801BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 282C683F3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 282C683F3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVeCmsJjg2Xh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:18:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3EED983F3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EED983F3F
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403804228"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403804228"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981189731"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="981189731"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2023 07:18:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 16:17:43 +0200
Message-Id: <20230817141746.18726-7-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817141746.18726-1-karol.kolacinski@intel.com>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692281905; x=1723817905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+bs47GeAKddGJRzphd9x05m1/XpIMqrc14OwXesr290=;
 b=fGw/Tvvto8Gbf1+9PKf6ok3HeREVnPCBKr+XUe1RMoz1eAiNvRFQTVFa
 IVdiuRFE8htDKcp+L5VE8UuYZW+jH8OtLZPTWy0cVnEepIbG2FFHxBqNm
 P4aoFJX65OIeBjcsOlsxfi5eLzhO4pGpVmPIqXpV3z7shfF71c8HxryBp
 j6ejbLDW55IqpWtP2H6web2H3qDIHKGPZcZyKX8IVp14fgJum/eu1Xkoh
 1fmnqDYg4R3FsRJ4rWLUsnPxatA+tkQv3ttdxbZu1wAI2aBRPGy5c323q
 9ngtxCBRQ8DSPlp7a/fOEczLaaPrJ/YvLQb7NqG2LFNtRPNpCpXNynYbS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fGw/Tvvt
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 6/9] ice: remove ptp_tx ring
 parameter flag
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
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

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 14 --------------
 drivers/net/ethernet/intel/ice/ice_txrx.c |  3 ---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 3 files changed, 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f8f55488f620..2635ca7e6036 100644
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
