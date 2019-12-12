Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 193D611D761
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BE0B2251E1;
	Thu, 12 Dec 2019 19:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FN+sX4Nk2uqx; Thu, 12 Dec 2019 19:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85BA8252CF;
	Thu, 12 Dec 2019 19:44:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2EF11BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B13A4883ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4czD97MX1rD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85DFB8843E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698857"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:13:02 -0800
Message-Id: <20191212111307.33566-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 10/15] ice: Enable ip link show on the
 PF to display VF unicast MAC(s)
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

Currently when there are SR-IOV VF(s) and the user does "ip link show <pf
interface>" the VF unicast MAC addresses all show 00:00:00:00:00:00
if the unicast MAC was set via VIRTCHNL (i.e. not administratively set
by the host PF).

This is misleading to the host administrator. Fix this by setting the
VF's dflt_lan_addr.addr when the VF's unicast MAC address is
configured via VIRTCHNL. There are a couple cases where we don't allow
the dflt_lan_addr.addr field to be written. First, If the VF's
pf_set_mac field is true and the VF is not trusted, then we don't allow
the dflt_lan_addr.addr to be modified. Second, if the
dflt_lan_addr.addr has already been set (i.e. via VIRTCHNL).

Also a small refactor was done to separate the flow for add and delete
MAC addresses in order to simplify the logic for error conditions
and set/clear the VF's dflt_lan_addr.addr field.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 199 +++++++++---------
 1 file changed, 99 insertions(+), 100 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c1708eb7ee75..c4f825650f30 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -34,37 +34,6 @@ static int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf)
 	return 0;
 }
 
-/**
- * ice_err_to_virt err - translate errors for VF return code
- * @ice_err: error return code
- */
-static enum virtchnl_status_code ice_err_to_virt_err(enum ice_status ice_err)
-{
-	switch (ice_err) {
-	case ICE_SUCCESS:
-		return VIRTCHNL_STATUS_SUCCESS;
-	case ICE_ERR_BAD_PTR:
-	case ICE_ERR_INVAL_SIZE:
-	case ICE_ERR_DEVICE_NOT_SUPPORTED:
-	case ICE_ERR_PARAM:
-	case ICE_ERR_CFG:
-		return VIRTCHNL_STATUS_ERR_PARAM;
-	case ICE_ERR_NO_MEMORY:
-		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
-	case ICE_ERR_NOT_READY:
-	case ICE_ERR_RESET_FAILED:
-	case ICE_ERR_FW_API_VER:
-	case ICE_ERR_AQ_ERROR:
-	case ICE_ERR_AQ_TIMEOUT:
-	case ICE_ERR_AQ_FULL:
-	case ICE_ERR_AQ_NO_WORK:
-	case ICE_ERR_AQ_EMPTY:
-		return VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
-	default:
-		return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
-	}
-}
-
 /**
  * ice_vc_vf_broadcast - Broadcast a message to all VFs on PF
  * @pf: pointer to the PF structure
@@ -2458,6 +2427,83 @@ static bool ice_can_vf_change_mac(struct ice_vf *vf)
 	return true;
 }
 
+/**
+ * ice_vc_add_mac_addr - attempt to add the MAC address passed in
+ * @vf: pointer to the VF info
+ * @vsi: pointer to the VF's VSI
+ * @mac_addr: MAC address to add
+ */
+static int
+ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	enum ice_status status;
+
+	/* default unicast MAC already added */
+	if (ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
+		return 0;
+
+	if (is_unicast_ether_addr(mac_addr) && !ice_can_vf_change_mac(vf)) {
+		dev_err(dev, "VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
+		return -EPERM;
+	}
+
+	status = ice_vsi_cfg_mac_fltr(vsi, mac_addr, true);
+	if (status == ICE_ERR_ALREADY_EXISTS) {
+		dev_err(dev, "MAC %pM already exists for VF %d\n", mac_addr,
+			vf->vf_id);
+		return -EEXIST;
+	} else if (status) {
+		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %d\n",
+			mac_addr, vf->vf_id, status);
+		return -EIO;
+	}
+
+	/* only set dflt_lan_addr once */
+	if (is_zero_ether_addr(vf->dflt_lan_addr.addr) &&
+	    is_unicast_ether_addr(mac_addr))
+		ether_addr_copy(vf->dflt_lan_addr.addr, mac_addr);
+
+	vf->num_mac++;
+
+	return 0;
+}
+
+/**
+ * ice_vc_del_mac_addr - attempt to delete the MAC address passed in
+ * @vf: pointer to the VF info
+ * @vsi: pointer to the VF's VSI
+ * @mac_addr: MAC address to delete
+ */
+static int
+ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	enum ice_status status;
+
+	if (!ice_can_vf_change_mac(vf) &&
+	    ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
+		return 0;
+
+	status = ice_vsi_cfg_mac_fltr(vsi, mac_addr, false);
+	if (status == ICE_ERR_DOES_NOT_EXIST) {
+		dev_err(dev, "MAC %pM does not exist for VF %d\n", mac_addr,
+			vf->vf_id);
+		return -ENOENT;
+	} else if (status) {
+		dev_err(dev, "Failed to delete MAC %pM for VF %d, error %d\n",
+			mac_addr, vf->vf_id, status);
+		return -EIO;
+	}
+
+	if (ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
+		eth_zero_addr(vf->dflt_lan_addr.addr);
+
+	vf->num_mac--;
+
+	return 0;
+}
+
 /**
  * ice_vc_handle_mac_addr_msg
  * @vf: pointer to the VF info
@@ -2469,23 +2515,23 @@ static bool ice_can_vf_change_mac(struct ice_vf *vf)
 static int
 ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 {
+	int (*ice_vc_cfg_mac)
+		(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr);
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_ether_addr_list *al =
 	    (struct virtchnl_ether_addr_list *)msg;
 	struct ice_pf *pf = vf->pf;
 	enum virtchnl_ops vc_op;
-	enum ice_status status;
 	struct ice_vsi *vsi;
-	struct device *dev;
-	int mac_count = 0;
 	int i;
 
-	dev = ice_pf_to_dev(pf);
-
-	if (set)
+	if (set) {
 		vc_op = VIRTCHNL_OP_ADD_ETH_ADDR;
-	else
+		ice_vc_cfg_mac = ice_vc_add_mac_addr;
+	} else {
 		vc_op = VIRTCHNL_OP_DEL_ETH_ADDR;
+		ice_vc_cfg_mac = ice_vc_del_mac_addr;
+	}
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
 	    !ice_vc_isvalid_vsi_id(vf, al->vsi_id)) {
@@ -2493,14 +2539,15 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 		goto handle_mac_exit;
 	}
 
+	/* If this VF is not privileged, then we can't add more than a
+	 * limited number of addresses. Check to make sure that the
+	 * additions do not push us over the limit.
+	 */
 	if (set && !ice_is_vf_trusted(vf) &&
 	    (vf->num_mac + al->num_elements) > ICE_MAX_MACADDR_PER_VF) {
-		dev_err(dev,
+		dev_err(ice_pf_to_dev(pf),
 			"Can't add more MAC addresses, because VF-%d is not trusted, switch the VF to trusted mode in order to add more functionalities\n",
 			vf->vf_id);
-		/* There is no need to let VF know about not being trusted
-		 * to add more MAC addr, so we can just return success message.
-		 */
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto handle_mac_exit;
 	}
@@ -2512,70 +2559,22 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 	}
 
 	for (i = 0; i < al->num_elements; i++) {
-		u8 *maddr = al->list[i].addr;
+		u8 *mac_addr = al->list[i].addr;
+		int result;
 
-		if (ether_addr_equal(maddr, vf->dflt_lan_addr.addr) ||
-		    is_broadcast_ether_addr(maddr)) {
-			if (set) {
-				/* VF is trying to add filters that the PF
-				 * already added. Just continue.
-				 */
-				dev_info(dev,
-					 "MAC %pM already set for VF %d\n",
-					 maddr, vf->vf_id);
-				continue;
-			} else {
-				/* VF can't remove dflt_lan_addr/bcast MAC */
-				dev_err(dev,
-					"VF can't remove default MAC address or MAC %pM programmed by PF for VF %d\n",
-					maddr, vf->vf_id);
-				continue;
-			}
-		}
-
-		/* check for the invalid cases and bail if necessary */
-		if (is_zero_ether_addr(maddr)) {
-			dev_err(dev,
-				"invalid MAC %pM provided for VF %d\n",
-				maddr, vf->vf_id);
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			goto handle_mac_exit;
-		}
-
-		if (is_unicast_ether_addr(maddr) &&
-		    !ice_can_vf_change_mac(vf)) {
-			dev_err(dev,
-				"can't change unicast MAC for untrusted VF %d\n",
-				vf->vf_id);
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			goto handle_mac_exit;
-		}
+		if (is_broadcast_ether_addr(mac_addr) ||
+		    is_zero_ether_addr(mac_addr))
+			continue;
 
-		/* program the updated filter list */
-		status = ice_vsi_cfg_mac_fltr(vsi, maddr, set);
-		if (status == ICE_ERR_DOES_NOT_EXIST ||
-		    status == ICE_ERR_ALREADY_EXISTS) {
-			dev_info(dev,
-				 "can't %s MAC filters %pM for VF %d, error %d\n",
-				 set ? "add" : "remove", maddr, vf->vf_id,
-				 status);
-		} else if (status) {
-			dev_err(dev,
-				"can't %s MAC filters for VF %d, error %d\n",
-				set ? "add" : "remove", vf->vf_id, status);
-			v_ret = ice_err_to_virt_err(status);
+		result = ice_vc_cfg_mac(vf, vsi, mac_addr);
+		if (result == -EEXIST || result == -ENOENT) {
+			continue;
+		} else if (result) {
+			v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 			goto handle_mac_exit;
 		}
-
-		mac_count++;
 	}
 
-	/* Track number of MAC filters programmed for the VF VSI */
-	if (set)
-		vf->num_mac += mac_count;
-	else
-		vf->num_mac -= mac_count;
-
 handle_mac_exit:
 	/* send the response to the VF */
 	return ice_vc_send_msg_to_vf(vf, vc_op, v_ret, NULL, 0);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
