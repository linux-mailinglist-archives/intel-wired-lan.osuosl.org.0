Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1C353F69F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 08:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C692613D6;
	Tue,  7 Jun 2022 06:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0vNK67B0bHm4; Tue,  7 Jun 2022 06:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FC99613D5;
	Tue,  7 Jun 2022 06:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCBA21BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2704404DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lUjjFKcM9Ukd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F5CF404B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654584976; x=1686120976;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h0TsB6s563b1/zeeGHEuRMhMNpsTrezbu449+AENZBc=;
 b=ZQjFmYroXktTo4lJ2b852CXHEBcvFPfjQWwZTvja+nUnVj93hyR+kf5J
 IXaWwpRxSc6QrPo1161CN/wrxFl/56WiZMKk0ZS5tOVPKo3gPlqstLgNt
 tndOJa7Wqd56PYgcsQR+88ih51AnR/pMXgK1rC9RmleZe55x20cHOxkcW
 I6jsD7FfP3EsEmMIFwp8+o0y/DzwvVFOyQgq9frtcqvYdacQp0WO9o0xU
 uXyKq6DPsydC+OBqGxzv03y52wDPIXTT3Q9MZ+hJNaVNgeG3rGrdkxuTd
 3SpOizEd7rKAjhmg1aj8Ycq6UaSqMGdaWZqgKqDwQX/BDvXelHAxXjJ9e A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="276750921"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="276750921"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 23:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="635981030"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2022 23:56:14 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Jun 2022 08:54:57 +0200
Message-Id: <20220607065457.3192083-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: Sync VLAN filtering features
 for DVM
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

Fixes: 1babaf77f49d ("ice: Advertise 802.1ad VLAN filtering and offloads for PF netdev")
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
