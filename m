Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6A4542F72
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 13:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E4A42502;
	Wed,  8 Jun 2022 11:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9rVAwvVM8VZd; Wed,  8 Jun 2022 11:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF317424FD;
	Wed,  8 Jun 2022 11:50:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DAE8A1BF574
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 11:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C446B60BDE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 11:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKZowBdEY1Tr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 11:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B497060BCF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 11:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654689024; x=1686225024;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NIcDD0TXQCmJubLlPac9bMge6V23TeCStE2w1xMFVF0=;
 b=buqPTEH7FV5x9Y+sQvsDecfRNpbFRSnAYCpV/xYI8pOqqRaTMx22+Dkm
 U/ImENTyt3PAvUEAV0wik3YGyQeGrTpRMpp9C/sXINragjMbw44A2IMYh
 eKhXYOCOSD5UJOfGXiHxWIDtcQQikVn56G2WIabNOK86Cz3/DhuOt5LG8
 Ydttbca/kOVdVceP6J2F5Z+CPNnYDFfovFicHnI5PcmpX6/tTYdOS9why
 p1mQfb2QwqpCJGW4is+1m1ex2pp5fULPdOdhQhTujXAytM3fzTvoSljUw
 lvVQzKJmnegGihjSJXQy6UnQZuJJE2JT+m0ZARsefAYVMR0Pw7cqTIOZb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="265672553"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="265672553"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 04:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="723822649"
Received: from s240.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.202])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2022 04:50:22 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 13:52:48 +0200
Message-Id: <20220608115248.403159-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor tc mqprio
 checks
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Refactor bitwise checks for whether TC MQPRIO is enabled
into one single method for improved readability.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        | 14 +++++++++++++
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 20 +++++++++----------
 3 files changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 97c574a33ba0..d86b6d349ea9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1292,4 +1292,18 @@ int i40e_add_del_cloud_filter(struct i40e_vsi *vsi,
 int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 				      struct i40e_cloud_filter *filter,
 				      bool add);
+
+/**
+ * i40e_is_tc_mqprio_enabled - check if TC MQPRIO is enabled on PF
+ * @pf: pointer to a pf.
+ *
+ * Check and return value of flag I40E_FLAG_TC_MQPRIO.
+ *
+ * Return: I40E_FLAG_TC_MQPRIO set state.
+ **/
+static inline u32 i40e_is_tc_mqprio_enabled(struct i40e_pf *pf)
+{
+	return pf->flags & I40E_FLAG_TC_MQPRIO;
+}
+
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 55841816272b..1e801152b1a9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5023,7 +5023,7 @@ static int i40e_set_channels(struct net_device *dev,
 	/* We do not support setting channels via ethtool when TCs are
 	 * configured through mqprio
 	 */
-	if (pf->flags & I40E_FLAG_TC_MQPRIO)
+	if (i40e_is_tc_mqprio_enabled(pf))
 		return -EINVAL;
 
 	/* verify they are not requesting separate vectors */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 495bbc9f29ec..4d06ceea25e7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5460,7 +5460,7 @@ static u8 i40e_pf_get_num_tc(struct i40e_pf *pf)
 	u8 num_tc = 0;
 	struct i40e_dcbx_config *dcbcfg = &hw->local_dcbx_config;
 
-	if (pf->flags & I40E_FLAG_TC_MQPRIO)
+	if (i40e_is_tc_mqprio_enabled(pf))
 		return pf->vsi[pf->lan_vsi]->mqprio_qopt.qopt.num_tc;
 
 	/* If neither MQPRIO nor DCB is enabled, then always use single TC */
@@ -5492,7 +5492,7 @@ static u8 i40e_pf_get_num_tc(struct i40e_pf *pf)
  **/
 static u8 i40e_pf_get_tc_map(struct i40e_pf *pf)
 {
-	if (pf->flags & I40E_FLAG_TC_MQPRIO)
+	if (i40e_is_tc_mqprio_enabled(pf))
 		return i40e_mqprio_get_enabled_tc(pf);
 
 	/* If neither MQPRIO nor DCB is enabled for this PF then just return
@@ -5589,7 +5589,7 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 	int i;
 
 	/* There is no need to reset BW when mqprio mode is on.  */
-	if (pf->flags & I40E_FLAG_TC_MQPRIO)
+	if (i40e_is_tc_mqprio_enabled(pf))
 		return 0;
 	if (!vsi->mqprio_qopt.qopt.hw && !(pf->flags & I40E_FLAG_DCB_ENABLED)) {
 		ret = i40e_set_bw_limit(vsi, vsi->seid, 0);
@@ -5661,7 +5661,7 @@ static void i40e_vsi_config_netdev_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 					vsi->tc_config.tc_info[i].qoffset);
 	}
 
-	if (pf->flags & I40E_FLAG_TC_MQPRIO)
+	if (i40e_is_tc_mqprio_enabled(pf))
 		return;
 
 	/* Assign UP2TC map for the VSI */
@@ -5822,7 +5822,7 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 	ctxt.vf_num = 0;
 	ctxt.uplink_seid = vsi->uplink_seid;
 	ctxt.info = vsi->info;
-	if (vsi->back->flags & I40E_FLAG_TC_MQPRIO) {
+	if (i40e_is_tc_mqprio_enabled(pf)) {
 		ret = i40e_vsi_setup_queue_map_mqprio(vsi, &ctxt, enabled_tc);
 		if (ret)
 			goto out;
@@ -6546,7 +6546,7 @@ int i40e_create_queue_channel(struct i40e_vsi *vsi,
 		pf->flags |= I40E_FLAG_VEB_MODE_ENABLED;
 
 		if (vsi->type == I40E_VSI_MAIN) {
-			if (pf->flags & I40E_FLAG_TC_MQPRIO)
+			if (i40e_is_tc_mqprio_enabled(pf))
 				i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
 			else
 				i40e_do_reset_safe(pf, I40E_PF_RESET_FLAG);
@@ -7940,7 +7940,7 @@ static void *i40e_fwd_add(struct net_device *netdev, struct net_device *vdev)
 		netdev_info(netdev, "Macvlans are not supported when DCB is enabled\n");
 		return ERR_PTR(-EINVAL);
 	}
-	if ((pf->flags & I40E_FLAG_TC_MQPRIO)) {
+	if (i40e_is_tc_mqprio_enabled(pf)) {
 		netdev_info(netdev, "Macvlans are not supported when HW TC offload is on\n");
 		return ERR_PTR(-EINVAL);
 	}
@@ -8193,7 +8193,7 @@ static int i40e_setup_tc(struct net_device *netdev, void *type_data)
 	/* Quiesce VSI queues */
 	i40e_quiesce_vsi(vsi);
 
-	if (!hw && !(pf->flags & I40E_FLAG_TC_MQPRIO))
+	if (!hw && !i40e_is_tc_mqprio_enabled(pf))
 		i40e_remove_queue_channels(vsi);
 
 	/* Configure VSI for enabled TCs */
@@ -8217,7 +8217,7 @@ static int i40e_setup_tc(struct net_device *netdev, void *type_data)
 		 "Setup channel (id:%u) utilizing num_queues %d\n",
 		 vsi->seid, vsi->tc_config.tc_info[0].qcount);
 
-	if (pf->flags & I40E_FLAG_TC_MQPRIO) {
+	if (i40e_is_tc_mqprio_enabled(pf)) {
 		if (vsi->mqprio_qopt.max_rate[0]) {
 			u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
 
@@ -10874,7 +10874,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	 * unless I40E_FLAG_TC_MQPRIO was enabled or DCB
 	 * is not supported with new link speed
 	 */
-	if (pf->flags & I40E_FLAG_TC_MQPRIO) {
+	if (i40e_is_tc_mqprio_enabled(pf)) {
 		i40e_aq_set_dcb_parameters(hw, false, NULL);
 	} else {
 		if (I40E_IS_X710TL_DEVICE(hw->device_id) &&
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
