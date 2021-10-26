Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B052543A91F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 02:08:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51EB2400BB;
	Tue, 26 Oct 2021 00:08:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6G5BP7DpgxV; Tue, 26 Oct 2021 00:08:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25694400DE;
	Tue, 26 Oct 2021 00:08:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 238341BF9AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12B846075E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5RzftH9FzhNf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 00:08:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45BF160618
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253323612"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="253323612"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="485915396"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Oct 2021 17:08:25 -0700
Message-Id: <20211026000826.156803-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026000826.156803-1-jesse.brandeburg@intel.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 3/4] ice: tighter control over
 VSI_DOWN state
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

The driver had comments to the effect of: This flag should be set before
calling this function. While reviewing code it was found that there were
several violations of this policy, which could introduce hard to find
bugs or races.

Fix the violations of the "VSI DOWN state must be set before calling
ice_down" and make checking the state into code with a WARN_ON.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Testing Hints (Required if no HSD): legacy-rx private flag
disable/enable forgot to set this previously and is a way to trigger the
down/up path.
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 ++++--
 drivers/net/ethernet/intel/ice/ice_main.c    | 7 ++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 870d02adcfe8..473f025c1cb5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1279,8 +1279,10 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 	}
 	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
 		/* down and up VSI so that changes of Rx cfg are reflected. */
-		ice_down(vsi);
-		ice_up(vsi);
+		if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
+			ice_down(vsi);
+			ice_up(vsi);
+		}
 	}
 	/* don't allow modification of this flag when a single VF is in
 	 * promiscuous mode because it's not supported
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 28815e5a7770..b82dc2642d99 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6212,14 +6212,15 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
 /**
  * ice_down - Shutdown the connection
  * @vsi: The VSI being stopped
+ *
+ * Caller of this function is expected to set the vsi->state ICE_DOWN bit
  */
 int ice_down(struct ice_vsi *vsi)
 {
 	int i, tx_err, rx_err, link_err = 0;
 
-	/* Caller of this function is expected to set the
-	 * vsi->state ICE_DOWN bit
-	 */
+	WARN_ON(!test_bit(ICE_VSI_DOWN, vsi->state));
+
 	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
 		if (!ice_is_e810(&vsi->back->hw))
 			ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
