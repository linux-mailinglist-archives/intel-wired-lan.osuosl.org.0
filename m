Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBF464F3A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 23:01:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6FD640BFA;
	Fri, 16 Dec 2022 22:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6FD640BFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671228116;
	bh=PVhS3Gi3trlwQWSbLytQgj/QqZ6vW5ISd0jXm353RHw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZdDJeM/GoLxLmBSGxl+wDRUnTYFLb9y5hlL7gzTiDDSgAPva86U78TUqRoB+nvQhM
	 zl3B3hILaq3i5Bg0kLmrcOi2fQS1UEqu+/p/0pPoSiUtGc4LZzAcz34gM6N4DESasC
	 4hJ525xQDPXJJm9jpW/xGDmjicm1udhjaH9F/XHQy9S4A4ORboEvgZ+LYJ6AtOCi3W
	 /fnTDv+m6OJxoYFkssL5f8mpqdNc4zyuymmO69uuocOk4ItevgroHfYVXeexn0s9mA
	 HWOFhrB08TJX9QmbawoA2p5PiVUSPRo9s53LSA/lT1ApseVQrSwOmHMUYg/6fbhDwh
	 bncdlq0+xfsDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tB2g_Q-bd4ng; Fri, 16 Dec 2022 22:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A32414015F;
	Fri, 16 Dec 2022 22:01:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A32414015F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D70511BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 22:01:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A83FA419A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 22:01:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A83FA419A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4wIYEOnriAzJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 22:01:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9D194199D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9D194199D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 22:01:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="298736186"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="298736186"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 14:01:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="652076064"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="652076064"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 14:01:30 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 14:02:03 -0800
Message-Id: <20221216220203.1025661-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671228108; x=1702764108;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NSLfDmMnoC2xwG/eU/SYpGblXj5Sy3KNERxYSIjTes4=;
 b=Afb6/hoRavHson36aN4lbD0NsQrV4+HqnABRN2gqouo7DPuT5nIc7T7W
 ddkDjZFA6S/lm+ObvQu3OK5uTqHI8M1ImHqw05GhDg2ADUcTcByAso4fz
 sXd+HimPJkWSfAA3jJpnSzK3tOdVQs/KeOClcaf12QHps43je0gp331pv
 Gh4Q1tyJuG+ulxue4b4favXSfXY0MnbPQP71rg/vO/7k0tTIyPTROSHDZ
 Jvxy5ms7Z0S8yhriXBqHi5OtXOq1otoagUixEWYN0rWle9XajKyaM0gX+
 0LUXEFPdMIu2QFHjUrnUIZ7C9SKRRjrVxXKHJW41FStZKkYwumhpA8E/V
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Afb6/hoR
Subject: [Intel-wired-lan] [PATCH net v2] ice: Prevent set_channel from
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
index b7be84bbe72d..5839fd3775ca 100644
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
+	if (pf->adev->dev.driver) {
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
+	mutex_unlock(&pf->adev_mutex);
+	return ret;
 }
 
 /**
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
