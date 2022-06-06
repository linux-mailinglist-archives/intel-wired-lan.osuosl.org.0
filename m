Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC31753E13E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 09:07:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1370F417DA;
	Mon,  6 Jun 2022 07:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1eGqaC6e6-T; Mon,  6 Jun 2022 07:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5063417CC;
	Mon,  6 Jun 2022 07:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88E0F1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 813D740529
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pkv_JKLu_6Z1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 07:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEF704010C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654499249; x=1686035249;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y+x8mBlS7iJYC5zmKsP2UVXlagGIPfsFf0TcGWee96k=;
 b=mWNF9bbke2LPn84e59mvh0bRDddRr9JfIRTL6xONC8HdpyWMi1S1+4xO
 VkysHx+qUM6jLRw5IY+C8E37aqcFD1G6Vgxj68dPieXcLfdX9rsfjWyoG
 R5PH9weDFDmrnbVJdiEuJ8NLY/UnemMRD5GkWzzzACPQwOnl3atkH6ZNx
 lHL5Kls30WQX/2cpIvuNTlHCNA3j6ru5JBCE6hgKaocDQwlx73wKg/Xxs
 XPQLFKstHe0vQNHgKIu4U7wQXj1iPOQN9kk+vgLZVLBTMelSKg0Gx4VQ3
 omaz5/9wEKWYqIH+G98ZeR9PIVuhzY1PNgQCfSDSaWiaNZXSCsw1el+BT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="257074716"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="257074716"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 00:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="669347735"
Received: from propan.igk.intel.com ([10.211.8.82])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jun 2022 00:07:28 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Jun 2022 09:06:13 +0200
Message-Id: <20220606070613.3087827-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Sync VLAN filtering
 features for DVM
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Roman Storozhenko <roman.storozhenko@intel.com>

VLAN filtering features, that is C-Tag and S-Tag, in DVM mode must be
both enabled or disabled.
In case of turning off/on only one of the features, another feature must
be turned off/on automatically with issuing an appropriate message to
the kernel log.

Signed-off-by: Roman Storozhenko <roman.storozhenko@intel.com>
Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 49 ++++++++++++++---------
 1 file changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e1cae253412c..aa4e55a29630 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5763,25 +5763,38 @@ static netdev_features_t
 ice_fix_features(struct net_device *netdev, netdev_features_t features)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	netdev_features_t supported_vlan_filtering;
-	netdev_features_t requested_vlan_filtering;
-	struct ice_vsi *vsi = np->vsi;
-
-	requested_vlan_filtering = features & NETIF_VLAN_FILTERING_FEATURES;
-
-	/* make sure supported_vlan_filtering works for both SVM and DVM */
-	supported_vlan_filtering = NETIF_F_HW_VLAN_CTAG_FILTER;
-	if (ice_is_dvm_ena(&vsi->back->hw))
-		supported_vlan_filtering |= NETIF_F_HW_VLAN_STAG_FILTER;
-
-	if (requested_vlan_filtering &&
-	    requested_vlan_filtering != supported_vlan_filtering) {
-		if (requested_vlan_filtering & NETIF_F_HW_VLAN_CTAG_FILTER) {
-			netdev_warn(netdev, "cannot support requested VLAN filtering settings, enabling all supported VLAN filtering settings\n");
-			features |= supported_vlan_filtering;
+	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
+	bool cur_ctag, cur_stag, req_ctag, req_stag;
+
+	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
+	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
+	cur_stag = cur_vlan_fltr & NETIF_F_HW_VLAN_STAG_FILTER;
+
+	req_vlan_fltr = features & NETIF_VLAN_FILTERING_FEATURES;
+	req_ctag = req_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
+	req_stag = req_vlan_fltr & NETIF_F_HW_VLAN_STAG_FILTER;
+
+	if (req_vlan_fltr != cur_vlan_fltr) {
+		if (ice_is_dvm_ena(&np->vsi->back->hw)) {
+			if (req_ctag && req_stag) {
+				features |= NETIF_VLAN_FILTERING_FEATURES;
+			} else if (!req_ctag && !req_stag) {
+				features &= ~NETIF_VLAN_FILTERING_FEATURES;
+			} else if ((!cur_ctag && req_ctag && !cur_stag) ||
+					(!cur_stag && req_stag && !cur_ctag)) {
+				features |= NETIF_VLAN_FILTERING_FEATURES;
+				netdev_warn(netdev,  "802.1Q and 802.1ad VLAN filtering must be either both on or both off. VLAN filtering has been enabled for both types.\n");
+			} else if ((cur_ctag && !req_ctag && cur_stag) ||
+					(cur_stag && !req_stag && cur_ctag)) {
+				features &= ~NETIF_VLAN_FILTERING_FEATURES;
+				netdev_warn(netdev,  "802.1Q and 802.1ad VLAN filtering must be either both on or both off. VLAN filtering has been disabled for both types.\n");
+			}
 		} else {
-			netdev_warn(netdev, "cannot support requested VLAN filtering settings, clearing all supported VLAN filtering settings\n");
-			features &= ~supported_vlan_filtering;
+			if (req_vlan_fltr & NETIF_F_HW_VLAN_STAG_FILTER)
+				netdev_warn(netdev, "cannot support requested 802.1ad filtering setting in SVM mode\n");
+
+			if (req_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER)
+				features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 		}
 	}
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
