Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799F3728E8E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 05:29:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AFC4240640;
	Fri,  9 Jun 2023 03:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFC4240640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686281355;
	bh=Zgd2otYmK6BeW46J5HSbv3sDgg/uxKXqeloZOKkj+oc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Cj1GrHpdykwtQ43j8CGNp5jJdcVhXpa29kylBeKLGxKJmatcK1jxMHgdg6uD+LUBe
	 lUfYKqDFDbBWa9qxAzQtU9IiaddaM4Yhbgwrq+nVC1nFEtEarKgG0uGqeTxJUuyZmv
	 TsvNswwF6HZnssEsjwCbtZBeT18Xy/j4aaw0e2/6zbUqWuyNwbW98F6XOpxKuWhkBn
	 XkQpNOnMZBSK/qkPo1el9OkgNIwM+gTpz3bdVsisOsZdicJhV6d+GpCU3NTrIg94ha
	 TFvOBID/mPwj1p3X+Kb6HAS5aKaM4ojtQiq3FvKQUvWAYruckl5QTr3gKRk6StH1st
	 RgIM8ncRLwEUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSTZwJhHutrE; Fri,  9 Jun 2023 03:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 831B64064F;
	Fri,  9 Jun 2023 03:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 831B64064F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5AFB1BF966
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 03:29:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB909405EB
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 03:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB909405EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fsx-JhxdNOr8 for <intel-wired-lan@osuosl.org>;
 Fri,  9 Jun 2023 03:29:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED42F404DA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED42F404DA
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 03:29:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="342176036"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="342176036"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 20:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="822891779"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="822891779"
Received: from ssid-ilbpg3-teeminta.png.intel.com ([10.88.227.74])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2023 20:29:05 -0700
From: tee.min.tan@intel.com
To: intel-wired-lan@osuosl.org
Date: Fri,  9 Jun 2023 11:28:42 +0800
Message-Id: <1686281322-26581-1-git-send-email-tee.min.tan@intel.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686281348; x=1717817348;
 h=from:to:cc:subject:date:message-id;
 bh=MoCsdiEBPuMcGUh/b6jRXvrU1Hmg4aDStkU6QBjNMxw=;
 b=SaKI8hmXVqYtJVi58cQIRHwj7bZlwgDqjqWqkB0ip0OkXwBGOXIyUsd2
 yK+4hTDBp9WEDSHriWP7l+HHvldrRNY7ATIK/YZhcDW+jKp5x656XvaF0
 j2witk+V2Dm/zURQVgTOzvOYAzjsrceC1p+2wgdYExkkddSh5qoWRii5E
 jYExdGs0BkbpVrWcjc+tPAlWDYZPGkWpZtF6eaDiE84W6IGsCf2Gw9r6D
 iS1GWf7vr0f/IatsvblRouZE3ApLrGVNyHThev6vl45J4R/+Zcvb1vql3
 SHadu0OqVpEwHSCkaWNxsQ82xxV/1jSmCLXJMFsXdOY99RxSc7b9iQ7Jt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SaKI8hmX
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Include the length/type
 field and VLAN tag in queueMaxSDU
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
Cc: anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tan Tee Min <tee.min.tan@linux.intel.com>

IEEE 802.1Q does not have clear definitions of what constitutes an
SDU (Service Data Unit), but IEEE Std 802.3 clause 3.1.2 does define
the MAC service primitives and clause 3.2.7 does define the MAC Client
Data for Q-tagged frames.

It shows that the mac_service_data_unit (MSDU) does NOT contain the
preamble, destination and source address, or FCS. The MSDU does contain
the length/type field, MAC client data, VLAN tag and any padding
data (prior to the FCS).

Thus, the maximum 802.3 frame size that is allowed to be transmitted
should be QueueMaxSDU (MSDU) + 16 (6 byte SA + 6 byte DA + 4 byte FCS).

Fixes: 92a0dcb8427d ("igc: offload queue max SDU from tc-taprio")
Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bbb431d..4349718 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1575,16 +1575,9 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	if (adapter->qbv_transition || tx_ring->oper_gate_closed)
 		goto out_drop;
 
-	if (tx_ring->max_sdu > 0) {
-		u32 max_sdu = 0;
-
-		max_sdu = tx_ring->max_sdu +
-			  (skb_vlan_tagged(first->skb) ? VLAN_HLEN : 0);
-
-		if (first->bytecount > max_sdu) {
-			adapter->stats.txdrop++;
-			goto out_drop;
-		}
+	if (tx_ring->max_sdu > 0 && first->bytecount > tx_ring->max_sdu) {
+		adapter->stats.txdrop++;
+		goto out_drop;
 	}
 
 	if (unlikely(test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags) &&
@@ -6178,7 +6171,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 		struct net_device *dev = adapter->netdev;
 
 		if (qopt->max_sdu[i])
-			ring->max_sdu = qopt->max_sdu[i] + dev->hard_header_len;
+			ring->max_sdu = qopt->max_sdu[i] + dev->hard_header_len
+					- ETH_TLEN;
 		else
 			ring->max_sdu = 0;
 	}
-- 
1.9.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
