Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B43705A2310
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 10:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 952B883ED2;
	Fri, 26 Aug 2022 08:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 952B883ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661502751;
	bh=DIEzPK3TDdVdCgg1xahDQl/5y0gRhWemaQVkxXQ0HbA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bxQl2zH15A5pL74VJcyvZt1j0nM80Ck5tsnZrPCZOYpTYrind/gMzGudpGsXajqNa
	 da48PggsyWK2drKte2nB97Uti5Rvq1MQ5hy28ukNo2L+WPa6uebz2IEaZ58W5egs6U
	 armX6HZ+8Z7C9vSCDOgYiBvuLjwmUH+Kty5SAfvhihUlV9WrwGiJsySzGXX5ujOqSg
	 cYMuJb7vnG0HlwMGubIRQBztO3dDQCn0oR9iuVhI2YLpOdXCyXEA/5J4H7pKbSw/pa
	 CoTtpN+pFCaHRS3Xr6Z+eEYocSpRH6EyyfRZQHzo1yJNZqPemBlKcX8Pd6X/WNOkjf
	 E4DulI2GkjE3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGBqC29TmeNf; Fri, 26 Aug 2022 08:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A2E383ECF;
	Fri, 26 Aug 2022 08:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A2E383ECF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D11591BF86D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 08:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA99F610BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 08:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA99F610BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ys01PY18oPEk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 08:32:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10950610BE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10950610BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 08:32:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="277470634"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="277470634"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:32:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="736558267"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 26 Aug 2022 01:32:20 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Aug 2022 10:31:23 +0200
Message-Id: <20220826083123.3334637-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661502744; x=1693038744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EU4q8tLNhl9DT/xnvXdyfh18/KoQYSBytSfXmMx0J/8=;
 b=fANAa42eB7imXl1gVKLvqr3qMOVwR/BSN1Wf54W5TDgUoPHIEXwa0uNZ
 WpFZplpaFvhaz970I2hbXTuALA4ZcIgfSkrisHbzL9sTKX4L4JhfEghHt
 nMss9ACQGzczxcx0pkfaORSFHcVcsv4buwN8vxpUVQc69FZSympi9wDDL
 Wgu4k7vLnJXkvjX856DgPVw6BnX673Yptr5kvPUIqANO2pvKdVk+JwpJP
 48x/nD4gQ4XQaVjnWfuix9YaBVobKrFaVEaA7Va5kLZZRuNW3TqOudIuY
 JYrRDAYq09/SXdJvVvADTqvL7Bvz9IComuRFVWnUvj6coKnGtXtJx+EP2
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fANAa42e
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix interface being down
 after reset with link-down-on-close flag on
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

When performing a reset on ice driver with link-down-on-close flag on
interface would always stay down. Fix this by moving a check of this
flag to ice_stop() that is called only when user wants to bring
interface down.

Fixes: ab4ab73fc1ec ("ice: Add ethtool private flag to make forcing link down optional")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 29a35435ad4e..24a3ed3768e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6649,7 +6649,7 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
  */
 int ice_down(struct ice_vsi *vsi)
 {
-	int i, tx_err, rx_err, link_err = 0, vlan_err = 0;
+	int i, tx_err, rx_err, vlan_err = 0;
 
 	WARN_ON(!test_bit(ICE_VSI_DOWN, vsi->state));
 
@@ -6683,20 +6683,13 @@ int ice_down(struct ice_vsi *vsi)
 
 	ice_napi_disable_all(vsi);
 
-	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, vsi->back->flags)) {
-		link_err = ice_force_phys_link_state(vsi, false);
-		if (link_err)
-			netdev_err(vsi->netdev, "Failed to set physical link down, VSI %d error %d\n",
-				   vsi->vsi_num, link_err);
-	}
-
 	ice_for_each_txq(vsi, i)
 		ice_clean_tx_ring(vsi->tx_rings[i]);
 
 	ice_for_each_rxq(vsi, i)
 		ice_clean_rx_ring(vsi->rx_rings[i]);
 
-	if (tx_err || rx_err || link_err || vlan_err) {
+	if (tx_err || rx_err || vlan_err) {
 		netdev_err(vsi->netdev, "Failed to close VSI 0x%04X on switch 0x%04X\n",
 			   vsi->vsi_num, vsi->vsw->sw_id);
 		return -EIO;
@@ -8886,12 +8879,22 @@ int ice_stop(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
+	int link_err = 0;
 
 	if (ice_is_reset_in_progress(pf->state)) {
 		netdev_err(netdev, "can't stop net device while reset is in progress");
 		return -EBUSY;
 	}
 
+	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, vsi->back->flags)) {
+		link_err = ice_force_phys_link_state(vsi, false);
+		if (link_err) {
+			netdev_err(vsi->netdev, "Failed to set physical link down, VSI %d error %d\n",
+				   vsi->vsi_num, link_err);
+			return -EIO;
+		}
+	}
+
 	ice_vsi_close(vsi);
 
 	return 0;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
