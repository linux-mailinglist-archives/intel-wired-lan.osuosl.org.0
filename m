Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C96669827
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 14:14:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6C6441594;
	Fri, 13 Jan 2023 13:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6C6441594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673615669;
	bh=3wCFmCHIr3lzFWrG9BDJJblhvCBYoIScRSnhMFa9avs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xnj2SYevQ1iD5oh1FLwLypPSPIAZRId7197+FSxOy8vo00Ajh829qW6mk9hncc9Qf
	 A+3AA9BPvggOwwtnWVgbyYheIw3elQ/qHCPWPV0kODihq2jLONM4TUTMJbLaNdm+cQ
	 vzXYYIrc82THU6OxdDSde8cRkzhH1Khtwd9BWn46bp4278Kj5MeZsLMgZ58nR6WrBx
	 jxgc5t2aJMVGL9hAoRcUyKdS9trJVi1CHrNTymw9hpx6twrqfUof4Wc9bZkxgIfF9s
	 XY7Kv+CoPkF/7Y5zxHHiNZOUfcqvey3z60eT+DjTOX43k9JONdkWvaj9D4e6wAzd3C
	 Y5KSBNFUgNVxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S2DyM1nR-OTm; Fri, 13 Jan 2023 13:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EE50414F7;
	Fri, 13 Jan 2023 13:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EE50414F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2C051BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 13:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE0DC4158B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 13:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE0DC4158B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEfbUEV9eFFE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 13:14:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17C704158D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17C704158D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 13:14:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="410224438"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="410224438"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 05:14:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="766011526"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="766011526"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2023 05:14:20 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 13 Jan 2023 14:17:17 +0100
Message-Id: <20230113131717.186154-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230113131717.186154-1-jan.sokolowski@intel.com>
References: <20230113131717.186154-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673615662; x=1705151662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sGdapHECn0TvSNqzmZH095pQLhdRpM/T0zm1lADHxoA=;
 b=Y1wicEQMH+rwxEtFkXhmFLr9YGuS1foXPunlGoo5SqKFZQG4yC8a0CSp
 CPX637PTFb8aYjCbTEmx2RjNxeqsfB4FGW61OATY4nLChm6J02MRytyhr
 ntNM1CLjagrxNRFB13W8WHHNh8i48EHPLIob5YajEYqHQuoKaGwehTiCr
 Zw9goM/4owk6pkYgWKzb5uaA8V43uty7i03fZA4MXjcBFYAhtAVYAoUCU
 YyX6DgrMTVScP00SSLcZ5N6Cusd80egpPl4RpDJxY+Z0fzUa9HpFcVZ11
 Nznr8llAKZXpzkXivlo0pKYTG2/ZIJj4YW1sNZIROMY+OjhM6XiwpAiTW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y1wicEQM
Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] i40e: Only MACs from host
 must be preserved
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

Only MACs assigned from host must be preserved after VF reset/reload.
Added vm MAC list to filter vm MAC request from others then
vm MACs do not preserved by host during VF reset/reload.
This list is used to filter the MAC addresses list restored after reset.
Without this patch host automatically restore all the MAC addresses
after VF reset/reload.

Co-Developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 64 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  9 +++
 2 files changed, 72 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 6654a230b035..6af627db71a7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1045,6 +1045,66 @@ static void i40e_disable_vf_mappings(struct i40e_vf *vf)
 	i40e_flush(hw);
 }
 
+/**
+ * i40e_add_vmmac_to_list
+ * @vf: pointer to the VF info
+ * @macaddr: pointer to the MAC address
+ *
+ * add MAC address into the MAC list for VM
+ **/
+static int i40e_add_vmmac_to_list(struct i40e_vf *vf,
+				  const u8 *macaddr)
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
@@ -1120,6 +1180,9 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
 		wr32(hw, reg_idx, reg);
 		i40e_flush(hw);
 	}
+
+	i40e_free_vmmac_list(vf);
+
 	/* reset some of the state variables keeping track of the resources */
 	vf->num_queue_pairs = 0;
 	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
@@ -2975,7 +3038,6 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 }
 
 /**
- * i40e_vc_add_mac_addr_msg
  * i40e_vc_ether_addr_type - get type of virtchnl_ether_addr
  * @vc_ether_addr: used to extract the type
  **/
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index a0bd12dd0939..f0e67a0d4ecf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -67,6 +67,12 @@ struct i40e_time_mac {
 	u8 addr[ETH_ALEN];
 };
 
+/* used for MAC list 'vm_mac_list' to recognize MACs added by VM */
+struct i40e_vm_mac {
+	struct list_head list;
+	u8 macaddr[ETH_ALEN];
+};
+
 /* VF information structure */
 struct i40e_vf {
 	struct i40e_pf *pf;
@@ -111,6 +117,9 @@ struct i40e_vf {
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
