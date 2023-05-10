Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C686FDD4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 13:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B492442742;
	Wed, 10 May 2023 11:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B492442742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683719923;
	bh=6G0tfit3kA5r6jbXxGC2pQvNmeaaWoD0fcibDR/N9rA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SwdwFupqwE6CjoQ/XWUgaObSxrSRQBThCk5UIaFCJ6CLdK+IExOC6Bc/kozok7Vs+
	 PK0nbpbrlPcnm4WMsk/R/wZRg9jwQRgzFa8HJ/PqN/JW0+s+gANj0g0KZ4r/UKfuO0
	 kejAdNa50C9CgXOgQ/oj6j3o/Fo4OgrMlb7xtTP8shTGzt6F+DiIR5+mDw16LGyWct
	 Wy/NRsOVe0409lSrHhmL8zWEGiUoHgc8aD+ZOo90UfzVVcyq6bmNX537LGYrER2MB+
	 o4L0eKtBFv+9Ecp3ElNd1N+XaYzv3tJToiKVej3BDeBgtkAiU41mh9bS/Z6HVIn5lY
	 MB/8EzFpBiscw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v635xs6GTpo3; Wed, 10 May 2023 11:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FE4D41D8C;
	Wed, 10 May 2023 11:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FE4D41D8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E40901BF30C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 11:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB8C960706
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 11:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB8C960706
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q55HEX3JQjJY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 11:58:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53BDB606FF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53BDB606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 11:58:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="349026054"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="349026054"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 04:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="873556486"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="873556486"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 10 May 2023 04:58:23 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 May 2023 14:01:57 +0200
Message-Id: <20230510120157.1142961-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683719913; x=1715255913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9nr/gEAivl3taxVfXVfogYWZFWEWJ6+4YSLRyTu5R40=;
 b=AeR36h1f+rEoqF/6Ova2DSj+/R5pw4hR9uubGMGQXjAGj6apXhXcgGul
 VM0/iMGH+9OsFn8RHaD0G4AS2ByrKCZDfLVBiwiBWrHwMCP8p5z8SmkUO
 EzfuhfDmoc0Baacs0sbfA2eY+vRgW/STluOyjeFX8Fr1WI2MhhC9iWyUE
 8zWXNQYepp/rJM+ps+gWAdd8hkG9mYRuOT4JwxsnF3h8KibS6E671pYYS
 asnkuxCZbDHTelaNuou6lO4bh/9RPGQcF04+kdfUDvEu3nhZNQEByOayt
 M4ye6GGrD4mwlUPbgR7Ag2abPiDDoGxBFeIh1YqreIK3SpBRfYsAvaBA1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AeR36h1f
Subject: [Intel-wired-lan] [PATCH net-next v7] i40e: Add ability to change
 VFs default MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

Currently there is no way for a VF driver to specify if it wants to
change it's hardware address. Although new bits were added to virtchnl.h
in struct virtchnl_ether_addr to allow the VF to correctly
communicate this information, legacy VF drivers that don't
support the new virtchnl.h bits still need to be supported.
This patch makes a best effort attempt at saving the VF's
primary/device address in the legacy case and depends on the
VIRTCHNL_ETHER_ADDR_PRIMARY type for the new case.

Legacy case - If a unicast MAC is being added and the
default_lan_addr.addr is empty, then populate it, otherwise save and
timestamp itin case it is followed by a delete request.
This assumes that the address is the VF's hardware address.
If unicast MAC is being deleted, then mark the time it happened,
if the legacy umac was not expired, and copy as last MAC addr
on the filter list, and if it matches default_lan_addr.addr,
mark that as deleted unimac addr.

This is done because we cannot guarantee the order of
VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR.

New case - If a unicast MAC is being added and it's specified as
VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
default_lan_addr.addr. If a unicast MAC is being deleted and it's type
is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
hw_lan_addr.addr.

Untrusted VFs - Only allow above legacy/new changes to their
hardware address if the PF has not set it administratively via
iproute2.

Trusted VFs - Always allow above legacy/new changes to their
hardware address even if the PF has administratively set it via
iproute2.

In case of VF reset/reload, only MACs assigned from host
must be preserved.

Add a vm MAC list to filter MAC addresses to be restored after reset.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
v2: previous version had been reported to not build under
some kernel configuration.
v3: fixed minor kerneldoc misspelling
v4: Rebased to newest head. Fixed compilation errors due
to some methods being defined in a wrong patch.
v5: Squashed two patches into one, as they were too intertwined
in functionality. Reworded commit msg to better match the patch
v6: rebase to current head
v7: rebase to current head
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 254 ++++++++++++++----
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  18 ++
 2 files changed, 221 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index be59ba3774e1..9f45628719aa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -987,6 +987,65 @@ static void i40e_disable_vf_mappings(struct i40e_vf *vf)
 	i40e_flush(hw);
 }
 
+/**
+ * i40e_add_vmmac_to_list
+ * @vf: pointer to the VF info
+ * @macaddr: pointer to the MAC address
+ *
+ * add MAC address into the MAC list for VM
+ **/
+static int i40e_add_vmmac_to_list(struct i40e_vf *vf, const u8 *macaddr)
+{
+	struct i40e_vm_mac *mac_elem;
+
+	mac_elem = kzalloc(sizeof(*mac_elem), GFP_ATOMIC);
+	if (!mac_elem)
+		return -ENOMEM;
+	ether_addr_copy(mac_elem->macaddr, macaddr);
+	INIT_LIST_HEAD(&mac_elem->list);
+	list_add(&mac_elem->list, &vf->vm_mac_list);
+	return 0;
+}
+
+/**
+ * i40e_del_vmmac_from_list
+ * @vf: pointer to the VF info
+ * @macaddr: pointer to the MAC address
+ *
+ * delete MAC address from the MAC list for VM
+ **/
+static void i40e_del_vmmac_from_list(struct i40e_vf *vf, const u8 *macaddr)
+{
+	struct i40e_vm_mac *entry, *tmp;
+
+	list_for_each_entry_safe(entry, tmp, &vf->vm_mac_list, list) {
+		if (ether_addr_equal(macaddr, entry->macaddr)) {
+			list_del(&entry->list);
+			kfree(entry);
+			break;
+		}
+	}
+}
+
+/**
+ * i40e_free_vmmac_list
+ * @vf: pointer to the VF info
+ *
+ * remove whole list of MAC addresses for VM
+ **/
+static void i40e_free_vmmac_list(struct i40e_vf *vf)
+{
+	struct i40e_vm_mac *entry, *tmp;
+
+	if (list_empty(&vf->vm_mac_list))
+		return;
+
+	list_for_each_entry_safe(entry, tmp, &vf->vm_mac_list, list) {
+		list_del(&entry->list);
+		kfree(entry);
+	}
+}
+
 /**
  * i40e_free_vf_res
  * @vf: pointer to the VF info
@@ -1062,6 +1121,9 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
 		wr32(hw, reg_idx, reg);
 		i40e_flush(hw);
 	}
+
+	i40e_free_vmmac_list(vf);
+
 	/* reset some of the state variables keeping track of the resources */
 	vf->num_queue_pairs = 0;
 	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
@@ -2952,6 +3014,21 @@ i40e_is_vc_addr_primary(struct virtchnl_ether_addr *vc_ether_addr)
 		VIRTCHNL_ETHER_ADDR_PRIMARY;
 }
 
+#define I40E_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME  msecs_to_jiffies(3000)
+
+/**
+ * i40e_is_legacy_umac_expired
+ * @time_last_added_umac: time since the last delete of VFs default MAC
+ *
+ * check if last added legacy unicast MAC expired
+ **/
+static bool
+i40e_is_legacy_umac_expired(unsigned long time_last_added_umac)
+{
+	return time_is_before_jiffies(time_last_added_umac +
+		I40E_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME);
+}
+
 /**
  * i40e_update_vf_mac_addr
  * @vf: VF to update
@@ -2968,40 +3045,43 @@ i40e_update_vf_mac_addr(struct i40e_vf *vf,
 	if (!is_valid_ether_addr(mac_addr))
 		return;
 
-	/* If request to add MAC filter is a primary request update its default
-	 * MAC address with the requested one. If it is a legacy request then
-	 * check if current default is empty if so update the default MAC
+	/* If request to add MAC filter is a primary request
+	 * update its default MAC address with the requested one.
+	 * if it is a legacy request then check if current default is empty
+	 * if so update the default MAC
+	 * otherwise save it in case it is followed by a delete request
+	 * meaning VF wants to change its default MAC which will be updated
+	 * in the delete path
 	 */
 	if (i40e_is_vc_addr_primary(vc_ether_addr)) {
 		ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
 	} else if (i40e_is_vc_addr_legacy(vc_ether_addr)) {
-		if (is_zero_ether_addr(vf->default_lan_addr.addr))
+		if (is_zero_ether_addr(vf->default_lan_addr.addr)) {
 			ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
+		} else {
+			ether_addr_copy(vf->legacy_last_added_umac.addr,
+					mac_addr);
+			vf->legacy_last_added_umac.time_modified = jiffies;
+		}
 	}
 }
 
 /**
- * i40e_vc_add_mac_addr_msg
+ * i40e_add_vf_mac_filters
  * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
+ * @is_quiet: set true for printing msg without opcode info, false otherwise
+ * @al: pointer to the address list of MACs to add
  *
  * add guest mac address filter
  **/
-static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
+static int i40e_add_vf_mac_filters(struct i40e_vf *vf, bool *is_quiet,
+				   struct virtchnl_ether_addr_list *al)
 {
-	struct virtchnl_ether_addr_list *al =
-	    (struct virtchnl_ether_addr_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
 	int ret = 0;
 	int i;
 
-	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
-	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
-		ret = I40E_ERR_PARAM;
-		goto error_param;
-	}
-
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	/* Lock once, because all function inside for loop accesses VSI's
@@ -3022,7 +3102,6 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		f = i40e_find_mac(vsi, al->list[i].addr);
 		if (!f) {
 			f = i40e_add_mac_filter(vsi, al->list[i].addr);
-
 			if (!f) {
 				dev_err(&pf->pdev->dev,
 					"Unable to add MAC filter %pM for VF %d\n",
@@ -3031,7 +3110,14 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 				spin_unlock_bh(&vsi->mac_filter_hash_lock);
 				goto error_param;
 			}
+
+			ret = i40e_add_vmmac_to_list(vf, al->list[i].addr);
+			if (ret) {
+				spin_unlock_bh(&vsi->mac_filter_hash_lock);
+				goto error_param;
+			}
 		}
+
 		i40e_update_vf_mac_addr(vf, &al->list[i]);
 	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
@@ -3041,29 +3127,23 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	if (ret)
 		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
 			vf->vf_id, ret);
-
 error_param:
-	/* send the response to the VF */
-	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
-				      ret, NULL, 0);
+	return ret;
 }
 
 /**
- * i40e_vc_del_mac_addr_msg
+ * i40e_vc_add_mac_addr_msg
  * @vf: pointer to the VF info
  * @msg: pointer to the msg buffer
  *
- * remove guest mac address filter
+ * add guest mac address filter
  **/
-static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
+static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_ether_addr_list *al =
 	    (struct virtchnl_ether_addr_list *)msg;
-	bool was_unimac_deleted = false;
-	struct i40e_pf *pf = vf->pf;
-	struct i40e_vsi *vsi = NULL;
+	bool is_quiet = false;
 	int ret = 0;
-	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
@@ -3071,55 +3151,127 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	ret = i40e_add_vf_mac_filters(vf, &is_quiet, al);
+
+error_param:
+	/* send the response to the VF */
+	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
+					 ret, NULL, 0);
+}
+
+/**
+ * i40e_vf_clear_default_mac_addr
+ * @vf: pointer to the VF info
+ * @is_legacy_unimac: is request to delete a legacy request
+ *
+ * clear VFs default MAC address
+ **/
+static void i40e_vf_clear_default_mac_addr(struct i40e_vf *vf,
+					   bool is_legacy_unimac)
+{
+	eth_zero_addr(vf->default_lan_addr.addr);
+
+	if (is_legacy_unimac) {
+		unsigned long time_added =
+			vf->legacy_last_added_umac.time_modified;
+
+		if (!i40e_is_legacy_umac_expired(time_added))
+			ether_addr_copy(vf->default_lan_addr.addr,
+					vf->legacy_last_added_umac.addr);
+	}
+}
+
+/**
+ * i40e_del_vf_mac_filters
+ * @vf: pointer to the VF info
+ * @al: pointer to the address list of MACs to delete
+ *
+ * remove guest mac address filters
+ **/
+static int i40e_del_vf_mac_filters(struct i40e_vf *vf,
+				   struct virtchnl_ether_addr_list *al)
+{
+	bool was_unimac_deleted = false;
+	bool is_legacy_unimac = false;
+	struct i40e_pf *pf = vf->pf;
+	struct i40e_vsi *vsi = NULL;
+	int ret = 0;
+	int i;
+
+	vsi = pf->vsi[vf->lan_vsi_idx];
+
+	spin_lock_bh(&vsi->mac_filter_hash_lock);
+	/* delete addresses from the list */
 	for (i = 0; i < al->num_elements; i++) {
+		if (ether_addr_equal(al->list[i].addr,
+				     vf->default_lan_addr.addr)) {
+			if (!(vf->trusted || !vf->pf_set_mac)) {
+				dev_err(&pf->pdev->dev,
+					"VF attempting to override administratively set MAC address\n");
+				ret = -EPERM;
+				spin_unlock_bh(&vsi->mac_filter_hash_lock);
+				goto error_param;
+			} else {
+				was_unimac_deleted = true;
+				is_legacy_unimac =
+					i40e_is_vc_addr_legacy(&al->list[i]);
+			}
+		}
+
 		if (is_broadcast_ether_addr(al->list[i].addr) ||
 		    is_zero_ether_addr(al->list[i].addr)) {
 			dev_err(&pf->pdev->dev, "Invalid MAC addr %pM for VF %d\n",
 				al->list[i].addr, vf->vf_id);
-			ret = I40E_ERR_INVALID_MAC_ADDR;
+			ret = -EINVAL;
+			spin_unlock_bh(&vsi->mac_filter_hash_lock);
 			goto error_param;
 		}
-		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
-			was_unimac_deleted = true;
-	}
-	vsi = pf->vsi[vf->lan_vsi_idx];
 
-	spin_lock_bh(&vsi->mac_filter_hash_lock);
-	/* delete addresses from the list */
-	for (i = 0; i < al->num_elements; i++)
 		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
-			ret = I40E_ERR_INVALID_MAC_ADDR;
+			dev_err(&pf->pdev->dev, "Could not delete MAC addr %pM for VF %d\n",
+				al->list[i].addr, vf->vf_id);
+			ret = -EINVAL;
 			spin_unlock_bh(&vsi->mac_filter_hash_lock);
 			goto error_param;
 		}
 
+		i40e_del_vmmac_from_list(vf, al->list[i].addr);
+	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
 
 	if (was_unimac_deleted)
-		eth_zero_addr(vf->default_lan_addr.addr);
+		i40e_vf_clear_default_mac_addr(vf, is_legacy_unimac);
 
 	/* program the updated filter list */
 	ret = i40e_sync_vsi_filters(vsi);
 	if (ret)
 		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
 			vf->vf_id, ret);
+error_param:
+	return ret;
+}
 
-	if (vf->trusted && was_unimac_deleted) {
-		struct i40e_mac_filter *f;
-		struct hlist_node *h;
-		u8 *macaddr = NULL;
-		int bkt;
+/**
+ * i40e_vc_del_mac_addr_msg
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ *
+ * remove guest mac address filter
+ **/
+static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
+{
+	struct virtchnl_ether_addr_list *al =
+	    (struct virtchnl_ether_addr_list *)msg;
+	int ret = 0;
 
-		/* set last unicast mac address as default */
-		spin_lock_bh(&vsi->mac_filter_hash_lock);
-		hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
-			if (is_valid_ether_addr(f->macaddr))
-				macaddr = f->macaddr;
-		}
-		if (macaddr)
-			ether_addr_copy(vf->default_lan_addr.addr, macaddr);
-		spin_unlock_bh(&vsi->mac_filter_hash_lock);
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
+	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
+		ret = -EINVAL;
+		goto error_param;
 	}
+
+	ret = i40e_del_vf_mac_filters(vf, al);
+
 error_param:
 	/* send the response to the VF */
 	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR, ret);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 895b8feb2567..9ae2bc9d8495 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -62,6 +62,17 @@ struct i40evf_channel {
 	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
 };
 
+struct i40e_time_mac {
+	unsigned long time_modified;
+	u8 addr[ETH_ALEN];
+};
+
+/* used for MAC list 'vm_mac_list' to recognize MACs added by VM */
+struct i40e_vm_mac {
+	struct list_head list;
+	u8 macaddr[ETH_ALEN];
+};
+
 /* VF information structure */
 struct i40e_vf {
 	struct i40e_pf *pf;
@@ -77,6 +88,10 @@ struct i40e_vf {
 	u16 stag;
 
 	struct virtchnl_ether_addr default_lan_addr;
+
+	/* keeps last added MAC address */
+	struct i40e_time_mac legacy_last_added_umac;
+
 	u16 port_vlan_id;
 	bool pf_set_mac;	/* The VMM admin set the VF MAC address */
 	bool trusted;
@@ -100,6 +115,9 @@ struct i40e_vf {
 	bool spoofchk;
 	u16 num_vlan;
 
+	/* MAC list created by VM */
+	struct list_head vm_mac_list;
+
 	/* ADq related variables */
 	bool adq_enabled; /* flag to enable adq */
 	u8 num_tc;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
