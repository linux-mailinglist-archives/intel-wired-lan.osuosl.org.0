Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E669411D760
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 944F424F78;
	Thu, 12 Dec 2019 19:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoRbO1AjmYGT; Thu, 12 Dec 2019 19:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07F6B250D0;
	Thu, 12 Dec 2019 19:44:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E6941BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83C8A888C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CA4WsMLZ1Oh4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04A73888C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698850"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:12:55 -0800
Message-Id: <20191212111307.33566-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 03/15] ice: Add code to keep track of
 current dflt_vsi
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

From: Brett Creeley <brett.creeley@intel.com>

We can't have more than one default VSI so prevent another VSI from
overwriting the current dflt_vsi. This was achieved by adding the
following functions:

ice_is_dflt_vsi_in_use()
- Used to check if the default VSI is already being used.

ice_is_vsi_dflt_vsi()
- Used to check if VSI passed in is in fact the default VSI.

ice_set_dflt_vsi()
- Used to set the default VSI via a switch rule

ice_clear_dflt_vsi()
- Used to clear the default VSI via a switch rule.

Also, there was no need to introduce any locking because all mailbox
events and synchronization of switch filters for the PF happen in the
service task.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_lib.c  | 118 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h  |   4 +
 drivers/net/ethernet/intel/ice/ice_main.c |  43 +++++---
 4 files changed, 151 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5746c07814b7..b2b1f7b1d932 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -177,6 +177,8 @@ struct ice_sw {
 	struct ice_pf *pf;
 	u16 sw_id;		/* switch ID for this switch */
 	u16 bridge_mode;	/* VEB/VEPA/Port Virtualizer */
+	struct ice_vsi *dflt_vsi;	/* default VSI for this switch */
+	u8 dflt_vsi_ena:1;	/* true if above dflt_vsi is enabled */
 };
 
 enum ice_state {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a05d30f86619..0581df95f3a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2792,3 +2792,121 @@ ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set)
 	ice_free_fltr_list(&vsi->back->pdev->dev, &tmp_add_list);
 	return status;
 }
+
+/**
+ * ice_is_dflt_vsi_in_use - check if the default forwarding VSI is being used
+ * @sw: switch to check if its default forwarding VSI is free
+ *
+ * Return true if the default forwarding VSI is already being used, else returns
+ * false signalling that it's available to use.
+ */
+bool ice_is_dflt_vsi_in_use(struct ice_sw *sw)
+{
+	return (sw->dflt_vsi && sw->dflt_vsi_ena);
+}
+
+/**
+ * ice_is_vsi_dflt_vsi - check if the VSI passed in is the default VSI
+ * @sw: switch for the default forwarding VSI to compare against
+ * @vsi: VSI to compare against default forwarding VSI
+ *
+ * If this VSI passed in is the default forwarding VSI then return true, else
+ * return false
+ */
+bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
+{
+	return (sw->dflt_vsi == vsi && sw->dflt_vsi_ena);
+}
+
+/**
+ * ice_set_dflt_vsi - set the default forwarding VSI
+ * @sw: switch used to assign the default forwarding VSI
+ * @vsi: VSI getting set as the default forwarding VSI on the switch
+ *
+ * If the VSI passed in is already the default VSI and it's enabled just return
+ * success.
+ *
+ * If there is already a default VSI on the switch and it's enabled then return
+ * -EEXIST since there can only be one default VSI per switch.
+ *
+ *  Otherwise try to set the VSI passed in as the switch's default VSI and
+ *  return the result.
+ */
+int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
+{
+	enum ice_status status;
+	struct device *dev;
+
+	if (!sw || !vsi)
+		return -EINVAL;
+
+	dev = ice_pf_to_dev(vsi->back);
+
+	/* the VSI passed in is already the default VSI */
+	if (ice_is_vsi_dflt_vsi(sw, vsi)) {
+		dev_dbg(dev, "VSI %d passed in is already the default forwarding VSI, nothing to do\n",
+			vsi->vsi_num);
+		return 0;
+	}
+
+	/* another VSI is already the default VSI for this switch */
+	if (ice_is_dflt_vsi_in_use(sw)) {
+		dev_err(dev,
+			"Default forwarding VSI %d already in use, disable it and try again\n",
+			sw->dflt_vsi->vsi_num);
+		return -EEXIST;
+	}
+
+	status = ice_cfg_dflt_vsi(&vsi->back->hw, vsi->idx, true, ICE_FLTR_RX);
+	if (status) {
+		dev_err(dev,
+			"Failed to set VSI %d as the default forwarding VSI, error %d\n",
+			vsi->vsi_num, status);
+		return -EIO;
+	}
+
+	sw->dflt_vsi = vsi;
+	sw->dflt_vsi_ena = true;
+
+	return 0;
+}
+
+/**
+ * ice_clear_dflt_vsi - clear the default forwarding VSI
+ * @sw: switch used to clear the default VSI
+ *
+ * If the switch has no default VSI or it's not enabled then return error.
+ *
+ * Otherwise try to clear the default VSI and return the result.
+ */
+int ice_clear_dflt_vsi(struct ice_sw *sw)
+{
+	struct ice_vsi *dflt_vsi;
+	enum ice_status status;
+	struct device *dev;
+
+	if (!sw)
+		return -EINVAL;
+
+	dev = ice_pf_to_dev(sw->pf);
+
+	dflt_vsi = sw->dflt_vsi;
+
+	/* there is no default VSI configured */
+	if (!ice_is_dflt_vsi_in_use(sw))
+		return -ENODEV;
+
+	status = ice_cfg_dflt_vsi(&dflt_vsi->back->hw, dflt_vsi->idx, false,
+				  ICE_FLTR_RX);
+	if (status) {
+		dev_err(dev,
+			"Failed to clear the default forwarding VSI %d, error %d\n",
+			dflt_vsi->vsi_num, status);
+		return -EIO;
+	}
+
+	sw->dflt_vsi = NULL;
+	sw->dflt_vsi_ena = false;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 1cb8513fcf1f..d7092bbaf3a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -106,4 +106,8 @@ ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
 bool ice_is_safe_mode(struct ice_pf *pf);
 bool ice_is_peer_ena(struct ice_pf *pf);
+bool ice_is_dflt_vsi_in_use(struct ice_sw *sw);
+bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
+int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
+int ice_clear_dflt_vsi(struct ice_sw *sw);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 31cd816e7cfb..ca6a0880e7aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -379,25 +379,29 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 		clear_bit(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags);
 		if (vsi->current_netdev_flags & IFF_PROMISC) {
 			/* Apply Rx filter rule to get traffic from wire */
-			status = ice_cfg_dflt_vsi(hw, vsi->idx, true,
-						  ICE_FLTR_RX);
-			if (status) {
-				netdev_err(netdev, "Error setting default VSI %i Rx rule\n",
-					   vsi->vsi_num);
-				vsi->current_netdev_flags &= ~IFF_PROMISC;
-				err = -EIO;
-				goto out_promisc;
+			if (!ice_is_dflt_vsi_in_use(pf->first_sw)) {
+				err = ice_set_dflt_vsi(pf->first_sw, vsi);
+				if (err && err != -EEXIST) {
+					netdev_err(netdev,
+						   "Error %d setting default VSI %i Rx rule\n",
+						   err, vsi->vsi_num);
+					vsi->current_netdev_flags &=
+						~IFF_PROMISC;
+					goto out_promisc;
+				}
 			}
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
-			status = ice_cfg_dflt_vsi(hw, vsi->idx, false,
-						  ICE_FLTR_RX);
-			if (status) {
-				netdev_err(netdev, "Error clearing default VSI %i Rx rule\n",
-					   vsi->vsi_num);
-				vsi->current_netdev_flags |= IFF_PROMISC;
-				err = -EIO;
-				goto out_promisc;
+			if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi)) {
+				err = ice_clear_dflt_vsi(pf->first_sw);
+				if (err) {
+					netdev_err(netdev,
+						   "Error %d clearing default VSI %i Rx rule\n",
+						   err, vsi->vsi_num);
+					vsi->current_netdev_flags |=
+						IFF_PROMISC;
+					goto out_promisc;
+				}
 			}
 		}
 	}
@@ -4736,6 +4740,13 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_init_ctrlq;
 	}
 
+	if (pf->first_sw->dflt_vsi_ena)
+		dev_info(dev,
+			 "Clearing default VSI, re-enable after reset completes\n");
+	/* clear the default VSI configuration if it exists */
+	pf->first_sw->dflt_vsi = NULL;
+	pf->first_sw->dflt_vsi_ena = false;
+
 	ice_clear_pxe_mode(hw);
 
 	ret = ice_get_caps(hw);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
