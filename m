Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3370264F171
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 20:11:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 685DF41999;
	Fri, 16 Dec 2022 19:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 685DF41999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671217874;
	bh=PuLBtTe58BVTiWyf6fqtqNFCVCRdcRmjYo9T/xxVR2Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qLFMbJJv38Gq1hL/RbkaRh4uPRzuUVoXbtymjmW0XmS9eU23l8R+BpkvlCDkSN+4A
	 Ph7qR9fMGfnuAZc+MwOmNIAKBBVWHemCqYDwSBuITGGnrIDIs8as37xKynLV24JAUX
	 XJkiy6riEsQ5G3QuUhvbfmRl/Zib9Bhn8UQJ5vjlkWswqkw+RDXSKlNufzTVdXQXFq
	 YZDMn0NuocKgi5dw2a9Uk0TgwqCNLRpcbt89OFzm0ag7LquOsu4K57lFysbLbo2BB1
	 JoR6lqWXuHgb6bJevW8sWLzTyxpQ1dq3+ubfFQ1avwU/vJ5UzVplDzG2CeXxkV8SgR
	 MlTdVO0U8rbSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v75B3Rrg13vf; Fri, 16 Dec 2022 19:11:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 372B441994;
	Fri, 16 Dec 2022 19:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 372B441994
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE84B1BF429
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 19:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B750641994
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 19:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B750641994
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xD25bcE05Z4Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 19:11:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EEC241916
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EEC241916
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 19:11:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="306713078"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="306713078"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 11:11:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="738631801"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="738631801"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 11:11:02 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 11:11:34 -0800
Message-Id: <20221216191134.1015946-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671217864; x=1702753864;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t/sVRnKNdtJD28TeyeXrQ7MyIjFFCSyKXImZeZoU4vU=;
 b=DooKdEMt/nWZWPdauK5DOVBhEKXIdYWfLMxF4H2+UtcbG/1lcYc+tYwq
 2gyjyrSv1Emz0YwEJuYQHqroiKc8cmMvUVS5qNwls1AhLnXmUr6HgNUfl
 MTHybtv8GPZrhrdgXHwBg0UZlzYcYCBTr7FdMuMtFBvrkuvjIf2tCsRkZ
 iuA/i+xtAAkKh4iz0QYR3GI/MUr9+Bb9GXn9gSB+lgJeqAUR4al12fhkU
 Fy0o6fyM+xkW3xZxIuxC1deS1bfzE1KLyvvpJfMwz76YLeidg0KEaLLQh
 Fi2TvljNC8OqybVTDXFhiVjHo/6OqgXQz6+g+IvbG0XPtJTqKuZ3YW1Iw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DooKdEMt
Subject: [Intel-wired-lan] [PATCH net] ice: Prevent set_channel from
 changing queues while RDMA active
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PF controls the set of queues that the RDMA auxiliary_driver requests
resources from.  The set_channel command will alter that pool and trigger a
reconfiguration of the VSI, which breaks RDMA functionality.

Prevent set_channel from executing when RDMA driver bound to auxiliary
device.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b7be84bbe72d..79704fcc0cb5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3473,6 +3473,7 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_pf *pf = vsi->back;
 	int new_rx = 0, new_tx = 0;
 	u32 curr_combined;
+	int ret = 0;
 
 	/* do not support changing channels in Safe Mode */
 	if (ice_is_safe_mode(pf)) {
@@ -3536,15 +3537,26 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 		return -EINVAL;
 	}
 
+	mutex_lock(&pf->adev_mutex);
+	if (pf->adev->dev->driver) {
+		netdev_err(dev, "Cannot change channels when RDMA is active\n");
+		ret = -EINVAL;
+		goto adev_unlock;
+	}
+
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
-	if (!netif_is_rxfh_configured(dev))
-		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+	if (!netif_is_rxfh_configured(dev)) {
+		ret = ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+		goto adev_unlock;
+	}
 
 	/* Update rss_size due to change in Rx queues */
 	vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
 
-	return 0;
+adev_unlock:
+	mutex_unlock(&pf->adev);
+	return ret;
 }
 
 /**
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
