Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D544F569F57
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 12:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CACE980C0F;
	Thu,  7 Jul 2022 10:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CACE980C0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657189028;
	bh=YiKlqK7T/6agnNZ9bpL4hQKFEMJsfZlixKfbp0ranb8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QXDiSwu2r9uh1WNm/JMZnr3Pd/EGoQqED+H9L+beXh8ElfUIBERSTjE4eC0M+a4oA
	 14SnCoP30LlkBYKI2OtXKcKnBAB80WB2Qm8Z6DKaZKIMB72zvRmCupAzVrGO0EIeZ2
	 HeDXYdpM3J4lbDJfYZQH8zhH9sLHImxof9Xq7MChT6Y7b384xmtIkX81y3zTgcxOH+
	 FAkaQLl8OHLUnA/U74GV/EA3QTf7ADcPXaT3EQIsRWVcw78r6/IDzg8Jol9RigzrtN
	 ISnsAChg1wtBNN6c/hZv5zRCoZ11++iHAqyT1Nmg8pQcL4Tlm/zVoDhEpk4vj2Fyh/
	 e6O7cOfAf8pOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AZiwJjWQeWp; Thu,  7 Jul 2022 10:17:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB85782B1B;
	Thu,  7 Jul 2022 10:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB85782B1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CBF91BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 469E440B20
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:17:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 469E440B20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WoSCXjdbCOWi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 10:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78656400DD
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78656400DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:16:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="284729225"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="284729225"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 03:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="651077058"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 03:16:56 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 12:16:50 +0200
Message-Id: <20220707101651.48738-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220707101651.48738-1-maciej.fijalkowski@intel.com>
References: <20220707101651.48738-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657189019; x=1688725019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jcABmi83YzpaB1Y+RSeFKcQFdRTL4Wmdml0bwCFEddY=;
 b=LBcBnuW27lGl4GkUVRsSYjYonl5sJIYKKhAoMkyQ5gViPRjz9vxaOXtG
 OnTnZod6pXioYnCcYlCNaSdYbYTynnkW9HQhlF3wrO5oA65uCUB0aBL4J
 ozbZLJWbif7jHoNcI/vixkPOEfRK3jxkoJXZfwwjt5kw2NqgJqEIieoZI
 sAbImO/B4IFNcw4LSRbNhfuEpjt1/VlAAn+l8t7Uef7I9elppSY5brDaz
 DPxc6fsgPUx3iS8YB8oQ3rwH5ZWS3nPFbAVXQ2SuJ1xSa8YfxNMCRKFTn
 5i1oe9CQPp81IK/wQy+yJCmCFugXbRf8GxM7nemGTHF4q66xtkIQZ0+3Q
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LBcBnuW2
Subject: [Intel-wired-lan] [PATCH intel-next 1/2] ice: compress branches in
 ice_set_features()
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
Cc: netdev@vger.kernel.org, john.fastabend@gmail.com,
 anatolii.gerasymenko@intel.com, kuba@kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of rather verbose comparison of current netdev->features bits vs
the incoming ones from user, let us compress them by a helper features
set that will be the result of netdev->features XOR features. This way,
current, extensive branches:

	if (features & NETIF_F_BIT && !(netdev->features & NETIF_F_BIT))
		set_feature(true);
	else if (!(features & NETIF_F_BIT) && netdev->features & NETIF_F_BIT)
		set_feature(false);

can become:

	netdev_features_t changed = netdev->features ^ features;

	if (changed & NETIF_F_BIT)
		set_feature(!!(features & NETIF_F_BIT));

This is nothing new as currently several other drivers use this
approach, which I find much more convenient.

Acked-by: John Fastabend <john.fastabend@gmail.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 40 +++++++++++------------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c1ac2f746714..084f0e17187c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5923,44 +5923,41 @@ ice_set_vlan_features(struct net_device *netdev, netdev_features_t features)
 static int
 ice_set_features(struct net_device *netdev, netdev_features_t features)
 {
+	netdev_features_t changed = netdev->features ^ features;
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	int ret = 0;
 
 	/* Don't set any netdev advanced features with device in Safe Mode */
-	if (ice_is_safe_mode(vsi->back)) {
-		dev_err(ice_pf_to_dev(vsi->back), "Device is in Safe Mode - not enabling advanced netdev features\n");
+	if (ice_is_safe_mode(pf)) {
+		dev_err(ice_pf_to_dev(pf),
+			"Device is in Safe Mode - not enabling advanced netdev features\n");
 		return ret;
 	}
 
 	/* Do not change setting during reset */
 	if (ice_is_reset_in_progress(pf->state)) {
-		dev_err(ice_pf_to_dev(vsi->back), "Device is resetting, changing advanced netdev features temporarily unavailable.\n");
+		dev_err(ice_pf_to_dev(pf),
+			"Device is resetting, changing advanced netdev features temporarily unavailable.\n");
 		return -EBUSY;
 	}
 
 	/* Multiple features can be changed in one call so keep features in
 	 * separate if/else statements to guarantee each feature is checked
 	 */
-	if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH))
-		ice_vsi_manage_rss_lut(vsi, true);
-	else if (!(features & NETIF_F_RXHASH) &&
-		 netdev->features & NETIF_F_RXHASH)
-		ice_vsi_manage_rss_lut(vsi, false);
+	if (changed & NETIF_F_RXHASH)
+		ice_vsi_manage_rss_lut(vsi, !!(features & NETIF_F_RXHASH));
 
 	ret = ice_set_vlan_features(netdev, features);
 	if (ret)
 		return ret;
 
-	if ((features & NETIF_F_NTUPLE) &&
-	    !(netdev->features & NETIF_F_NTUPLE)) {
-		ice_vsi_manage_fdir(vsi, true);
-		ice_init_arfs(vsi);
-	} else if (!(features & NETIF_F_NTUPLE) &&
-		 (netdev->features & NETIF_F_NTUPLE)) {
-		ice_vsi_manage_fdir(vsi, false);
-		ice_clear_arfs(vsi);
+	if (changed & NETIF_F_NTUPLE) {
+		bool ena = !!(features & NETIF_F_NTUPLE);
+
+		ice_vsi_manage_fdir(vsi, ena);
+		ena ? ice_init_arfs(vsi) : ice_clear_arfs(vsi);
 	}
 
 	/* don't turn off hw_tc_offload when ADQ is already enabled */
@@ -5969,11 +5966,12 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		return -EACCES;
 	}
 
-	if ((features & NETIF_F_HW_TC) &&
-	    !(netdev->features & NETIF_F_HW_TC))
-		set_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
-	else
-		clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
+	if (changed & NETIF_F_HW_TC) {
+		bool ena = !!(features & NETIF_F_HW_TC);
+
+		ena ? set_bit(ICE_FLAG_CLS_FLOWER, pf->flags) :
+		      clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
+	}
 
 	return 0;
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
