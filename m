Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6BF7E0C6A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 00:47:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72E741EB7;
	Fri,  3 Nov 2023 23:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B72E741EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699055241;
	bh=Ldsw33vyH/0rUO9Afg2749pVKT873Gy+cIw5hAJtpAY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cv3+1eNMEKtjqbF44SnDhHYN87gsVIit4MDaOOf9xx4SpgbhvPF2ikWAgd7Kgf0IN
	 vWcYg/EdsbwnM7dZs/VzGQn7bSytNQTsEe6+msKo3RVXtO5KZhsSiZL5E3gp/yhKIu
	 OzZ34V25Lu5l+d5jBGLdLJbC7SNFNOaVIiEB2WZMW1v7T2gqbDwTuZffcZ9MllUa+Y
	 EgKQpEZOQJeNJ/GoO1KkTqSAAEOCCJ5sPsI4xYT7Qu7AcfYEApCTZbx/yelUGH0SvN
	 OP+E+T07LYHsVmZyevdqbn9LzxG5Cax2Kx60sQf3EzDeKfl1O3CdJbBYYBDS/qWJ39
	 qwBr19kwszueg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8DYahcUSne7; Fri,  3 Nov 2023 23:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C25D41E90;
	Fri,  3 Nov 2023 23:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C25D41E90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 477BB1BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE04F405B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE04F405B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQGXAmxpUpHF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 23:47:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93876405AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93876405AC
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="374076057"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="374076057"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="905504338"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="905504338"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  3 Nov 2023 16:46:56 -0700
Message-ID: <20231103234658.511859-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231103234658.511859-1-jacob.e.keller@intel.com>
References: <20231103234658.511859-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699055225; x=1730591225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ucc//bSB/PXaFAAtZ0m1Lsc2TxxSxrDvtgLGw+sOvyk=;
 b=hCp8tKdW5OrOPREpHYwWtypaZTSw2vwpObs2XI5oYRKfEzfQMJLFaujS
 J/1GAFrrEe5BBr6HXYGROeSVQgR/vIucY7U6N/b4k808kYcYdH8e0a9PL
 pFinQNgduyKyImwo8ukPziHylqae/N958TPARrCcvNO4DtVw020ic2+Bz
 kcViCet7dak2vtgKtfTjWs71q9xOrF86Wz3xy4/2kohtNEqRfwRjMm6/U
 Y3I7GoeIllcAjYDVlfzOci9QljGe+VauYtvI5flJDSehuK5JnldYyhoq+
 ROwIrZ2t8/f5Szc1Wl4WDDcHnitckoYvhxtgJvZ57YmOHMjeHC2QXR0SK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hCp8tKdW
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: remove ptp_tx ring
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Before performing a Tx timestamp in ice_stamp(), the driver checks a ptp_tx
ring variable to see if timestamping is enabled on that ring. This value is
set for all rings whenever userspace configures Tx timestamping.

Ostensibly this was done to avoid wasting cycles checking other fields when
timestamping has not been enabled. However, for Tx timestamps we already
get an individual per-SKB flag indicating whether userspace wants to
request a timestamp on that packet. We do not gain much by also having
a separate flag to check for whether timestamping was enabled.

In fact, the driver currently fails to restore the field after a PF reset.
Because of this, if a PF reset occurs, timestamps will be disabled.

Since this flag doesn't add value in the hotpath, remove it and always
provide a timestamp if the SKB flag has been set.

A following change will fix the reset path to properly restore user
timestamping configuration completely.

This went unnoticed for some time because one of the most common
applications using Tx timestamps, ptp4l, will reconfigure the socket as
part of its fault recovery logic.

Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 14 --------------
 drivers/net/ethernet/intel/ice/ice_txrx.c |  3 ---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 3 files changed, 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1eddcbe89b0c..affd90622a68 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -280,20 +280,6 @@ static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
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
 		ice_ptp_configure_tx_tstamp(pf, on);
 
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
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
