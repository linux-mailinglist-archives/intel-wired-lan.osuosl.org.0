Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5E61D5D44
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB5F688225;
	Sat, 16 May 2020 00:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id deYULhrUFz8d; Sat, 16 May 2020 00:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1C8988209;
	Sat, 16 May 2020 00:39:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0D681BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB76F87740
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lS3DZ0QUVk8f for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 70EAC877E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: FM6TVyiPZDL/4fgCpT7BvdZf8zul6NnqYDKsnQP8oEcxo0+7u0lvwx9O53shWv1ZNWLY8rWScA
 FMZH1o/hNVBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:18 -0700
IronPort-SDR: mcyTN9FzvHjxWnoU0IVyQ+B68eLFFUlfrTs7WiLg1Wq/xP8SBynqd9cXuG8cVhcZTFYUaAIxIs
 lzq9Ac/BplWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560859"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:33 -0700
Message-Id: <20200516003644.4658-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 04/15] ice: Check if unicast MAC
 exists before setting VF MAC
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

Currently if a unicast MAC is set via ndo_set_vf_mac, the PF driver will
set the VF's dflt_lan_addr.addr once some basic checks have passed. The
VF is then reset. During reset the PF driver will attempt to program the
VF's MAC from the dflt_lan_addr.addr field. This fails when the MAC
already exists on the PF's switch.

This is causing the VF to be completely disabled until removing/enabling
any VFs via sysfs.

Fix this by checking if the unicast MAC exists before triggering a VF
reset directly in ndo_set_vf_mac. Also, add a check if the unicast MAC
is set to the same value as before and return 0 if that is the case.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 2e6c81555668..6ea3d15e1a6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3648,6 +3648,39 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	return 0;
 }
 
+/**
+ * ice_unicast_mac_exists - check if the unicast MAC exists on the PF's switch
+ * @pf: PF used to reference the switch's rules
+ * @umac: unicast MAC to compare against existing switch rules
+ *
+ * Return true on the first/any match, else return false
+ */
+static bool ice_unicast_mac_exists(struct ice_pf *pf, u8 *umac)
+{
+	struct ice_sw_recipe *mac_recipe_list =
+		&pf->hw.switch_info->recp_list[ICE_SW_LKUP_MAC];
+	struct ice_fltr_mgmt_list_entry *list_itr;
+	struct list_head *rule_head;
+	struct mutex *rule_lock; /* protect MAC filter list access */
+
+	rule_head = &mac_recipe_list->filt_rules;
+	rule_lock = &mac_recipe_list->filt_rule_lock;
+
+	mutex_lock(rule_lock);
+	list_for_each_entry(list_itr, rule_head, list_entry) {
+		u8 *existing_mac = &list_itr->fltr_info.l_data.mac.mac_addr[0];
+
+		if (ether_addr_equal(existing_mac, umac)) {
+			mutex_unlock(rule_lock);
+			return true;
+		}
+	}
+
+	mutex_unlock(rule_lock);
+
+	return false;
+}
+
 /**
  * ice_set_vf_mac
  * @netdev: network interface device structure
@@ -3671,10 +3704,20 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	}
 
 	vf = &pf->vf[vf_id];
+	/* nothing left to do, unicast MAC already set */
+	if (ether_addr_equal(vf->dflt_lan_addr.addr, mac))
+		return 0;
+
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
 
+	if (ice_unicast_mac_exists(pf, mac)) {
+		netdev_err(netdev, "Unicast MAC %pM already exists on this PF. Preventing setting VF %u unicast MAC address to %pM\n",
+			   mac, vf_id, mac);
+		return -EINVAL;
+	}
+
 	/* copy MAC into dflt_lan_addr and trigger a VF reset. The reset
 	 * flow will use the updated dflt_lan_addr and add a MAC filter
 	 * using ice_add_mac. Also set pf_set_mac to indicate that the PF has
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
