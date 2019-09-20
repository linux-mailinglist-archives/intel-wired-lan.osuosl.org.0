Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE3B96AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 133F287D5E;
	Fri, 20 Sep 2019 17:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcXw5N0o7kmt; Fri, 20 Sep 2019 17:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F228187C0C;
	Fri, 20 Sep 2019 17:39:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6CC41BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3E4320401
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxIyFC6kW3Rs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 7657820419
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635347"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:52 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:24 -0700
Message-Id: <20190920091724.51767-10-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 10/10] i40e: Refactoring VF MAC
 filters counting to make more reliable
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This patch prepares ground for the next VF MAC address change fix.
It lets untrusted VF to delete any VF mac filter, but it still
doesn't let untrusted VF to add mac filter not setup by PF.
It removes information duplication in num_mac mac filters counter.
And improves exact h/w mac filters usage checking in the
i40e_check_vf_permission() function by counting mac2add_cnt.
It also improves logging because now all mac addresses will be validated
first and corresponding messages will be logged.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 19 ++++++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 45 ++++++++-----------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 -
 4 files changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 2af9f6308f84..cb6367334ca7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1118,6 +1118,7 @@ struct i40e_mac_filter *i40e_add_mac_filter(struct i40e_vsi *vsi,
 					    const u8 *macaddr);
 int i40e_del_mac_filter(struct i40e_vsi *vsi, const u8 *macaddr);
 bool i40e_is_vsi_in_vlan(struct i40e_vsi *vsi);
+int i40e_count_filters(struct i40e_vsi *vsi);
 struct i40e_mac_filter *i40e_find_mac(struct i40e_vsi *vsi, const u8 *macaddr);
 void i40e_vlan_stripping_enable(struct i40e_vsi *vsi);
 #ifdef CONFIG_I40E_DCB
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 22394da6cb94..495389a28ed4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1109,6 +1109,25 @@ void i40e_update_stats(struct i40e_vsi *vsi)
 	i40e_update_vsi_stats(vsi);
 }
 
+/**
+ * i40e_count_filters - counts VSI mac filters
+ * @vsi: the VSI to be searched
+ *
+ * Returns count of mac filters
+ **/
+int i40e_count_filters(struct i40e_vsi *vsi)
+{
+	struct i40e_mac_filter *f;
+	struct hlist_node *h;
+	int bkt;
+	int cnt = 0;
+
+	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist)
+		++cnt;
+
+	return cnt;
+}
+
 /**
  * i40e_find_filter - Search VSI filter list for specific mac/vlan filter
  * @vsi: the VSI to be searched
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 134bf4e37156..7787766d0eb8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -955,7 +955,6 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
 		i40e_vsi_release(pf->vsi[vf->lan_vsi_idx]);
 		vf->lan_vsi_idx = 0;
 		vf->lan_vsi_id = 0;
-		vf->num_mac = 0;
 	}
 
 	/* do the accounting and remove additional ADq VSI's */
@@ -2548,20 +2547,12 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 					   struct virtchnl_ether_addr_list *al)
 {
 	struct i40e_pf *pf = vf->pf;
+	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
+	int mac2add_cnt = 0;
 	int i;
 
-	/* If this VF is not privileged, then we can't add more than a limited
-	 * number of addresses. Check to make sure that the additions do not
-	 * push us over the limit.
-	 */
-	if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps) &&
-	    (vf->num_mac + al->num_elements) > I40E_VC_MAX_MAC_ADDR_PER_VF) {
-		dev_err(&pf->pdev->dev,
-			"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
-		return -EPERM;
-	}
-
 	for (i = 0; i < al->num_elements; i++) {
+		struct i40e_mac_filter *f;
 		u8 *addr = al->list[i].addr;
 
 		if (is_broadcast_ether_addr(addr) ||
@@ -2585,8 +2576,24 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 				"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
 			return -EPERM;
 		}
+
+		/*count filters that really will be added*/
+		f = i40e_find_mac(vsi, addr);
+		if (!f)
+			++mac2add_cnt;
 	}
 
+	/* If this VF is not privileged, then we can't add more than a limited
+	 * number of addresses. Check to make sure that the additions do not
+	 * push us over the limit.
+	 */
+	if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps) &&
+	    (i40e_count_filters(vsi) + mac2add_cnt) >
+		    I40E_VC_MAX_MAC_ADDR_PER_VF) {
+		dev_err(&pf->pdev->dev,
+			"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
+		return -EPERM;
+	}
 	return 0;
 }
 
@@ -2640,8 +2647,6 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 				ret = I40E_ERR_PARAM;
 				spin_unlock_bh(&vsi->mac_filter_hash_lock);
 				goto error_param;
-			} else {
-				vf->num_mac++;
 			}
 			if (is_valid_ether_addr(al->list[i].addr))
 				ether_addr_copy(vf->default_lan_addr.addr,
@@ -2692,16 +2697,6 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 			ret = I40E_ERR_INVALID_MAC_ADDR;
 			goto error_param;
 		}
-
-		if (vf->pf_set_mac &&
-		    ether_addr_equal(al->list[i].addr,
-				     vf->default_lan_addr.addr)) {
-			dev_err(&pf->pdev->dev,
-				"MAC addr %pM has been set by PF, cannot delete it for VF %d, reset VF to change MAC addr\n",
-				vf->default_lan_addr.addr, vf->vf_id);
-			ret = I40E_ERR_PARAM;
-			goto error_param;
-		}
 	}
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
@@ -2712,8 +2707,6 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 			ret = I40E_ERR_INVALID_MAC_ADDR;
 			spin_unlock_bh(&vsi->mac_filter_hash_lock);
 			goto error_param;
-		} else {
-			vf->num_mac--;
 		}
 
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 7164b9bb294f..1ce06240a702 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -101,7 +101,6 @@ struct i40e_vf {
 	bool link_up;		/* only valid if VF link is forced */
 	bool queues_enabled;	/* true if the VF queues are enabled */
 	bool spoofchk;
-	u16 num_mac;
 	u16 num_vlan;
 
 	/* ADq related variables */
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
