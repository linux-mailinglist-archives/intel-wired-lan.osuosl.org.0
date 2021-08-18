Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ABE3F12F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 07:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F07C5402E6;
	Thu, 19 Aug 2021 05:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R4QEqbaijmtA; Thu, 19 Aug 2021 05:56:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAEF2400BB;
	Thu, 19 Aug 2021 05:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E33411BF94B
 for <intel-wired-lan@osuosl.org>; Thu, 19 Aug 2021 05:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDA0B402E9
 for <intel-wired-lan@osuosl.org>; Thu, 19 Aug 2021 05:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IToj7FrLUYBv for <intel-wired-lan@osuosl.org>;
 Thu, 19 Aug 2021 05:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C423402DF
 for <intel-wired-lan@osuosl.org>; Thu, 19 Aug 2021 05:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="302074651"
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; d="scan'208";a="302074651"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 22:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; d="scan'208";a="451270547"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga007.fm.intel.com with ESMTP; 18 Aug 2021 22:56:03 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 18 Aug 2021 18:20:28 -0400
Message-Id: <20210818222028.14820-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: handle MAC delete command
 on PR
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

Order of VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR cannot be
guarantee. Because of that mac delete command on PR should be handled
in the case of communication with legacy VF driver. If there is cached
MAC address driver should update dev_lan and hw_lan with value from
legacy_last_added_umac.

Not handling this case leads to situation when VF MAC is changed but VF
MAC showing on PF not.

This happen only in switchdev mode, because in switchdev mode VF default
ops are changed.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
This commit should be squashed with "ice: allow process vf opcodes in
different ways"
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 37 ++++++++++++++-----
 1 file changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0ed7f1ec6172..ed99f3a348bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3831,6 +3831,26 @@ static bool ice_is_legacy_umac_expired(struct ice_time_mac *last_added_umac)
 				      ICE_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME);
 }
 
+/**
+ * ice_update_legacy_cached_mac - update cached hardware MAC for legacy VF
+ * @vf: VF to update
+ * @vc_ether_addr: structure from VIRTCHNL with MAC to check
+ *
+ * only update cached hardware MAC for legacy VF drivers on delete
+ * because we cannot guarantee order/type of MAC from the VF driver
+ */
+static void
+ice_update_legacy_cached_mac(struct ice_vf *vf,
+			     struct virtchnl_ether_addr *vc_ether_addr)
+{
+	if (!ice_is_vc_addr_legacy(vc_ether_addr) ||
+	    ice_is_legacy_umac_expired(&vf->legacy_last_added_umac))
+		return;
+
+	ether_addr_copy(vf->dev_lan_addr.addr, vf->legacy_last_added_umac.addr);
+	ether_addr_copy(vf->hw_lan_addr.addr, vf->legacy_last_added_umac.addr);
+}
+
 /**
  * ice_vfhw_mac_del - update the VF's cached hardware MAC if allowed
  * @vf: VF to update
@@ -3852,16 +3872,7 @@ ice_vfhw_mac_del(struct ice_vf *vf, struct virtchnl_ether_addr *vc_ether_addr)
 	 */
 	eth_zero_addr(vf->dev_lan_addr.addr);
 
-	/* only update cached hardware MAC for legacy VF drivers on delete
-	 * because we cannot guarantee order/type of MAC from the VF driver
-	 */
-	if (ice_is_vc_addr_legacy(vc_ether_addr) &&
-	    !ice_is_legacy_umac_expired(&vf->legacy_last_added_umac)) {
-		ether_addr_copy(vf->dev_lan_addr.addr,
-				vf->legacy_last_added_umac.addr);
-		ether_addr_copy(vf->hw_lan_addr.addr,
-				vf->legacy_last_added_umac.addr);
-	}
+	ice_update_legacy_cached_mac(vf, vc_ether_addr);
 }
 
 /**
@@ -4527,10 +4538,16 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
  * @msg: virtchannel message
  *
  * Respond with success to not break normal VF flow.
+ * For legacy VF driver try to update cached MAC address.
  */
 static int
 ice_vc_repr_del_mac(struct ice_vf __always_unused *vf, u8 __always_unused *msg)
 {
+	struct virtchnl_ether_addr_list *al =
+		(struct virtchnl_ether_addr_list *)msg;
+
+	ice_update_legacy_cached_mac(vf, &al->list[0]);
+
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
 				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
