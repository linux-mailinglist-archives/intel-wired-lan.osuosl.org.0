Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E78D0A56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 20:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0A71812AE;
	Mon, 27 May 2024 18:59:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1VejSgMoGN70; Mon, 27 May 2024 18:59:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA56280C2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716836376;
	bh=tbUv2IUjZgeOVRrGQ8iQAzxuaopj4jg0s5RLug+BErk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uHHKEMC5nSqL7IeSxtGTm3QPdtah5Zt1h6ESbt5R70fz2aXpPUJHgEtrTgq7TCzSO
	 6q2ZcSZjEJp7cGR2sRm3C0NHGCo+yuLeePMRsrCBiUGJhu+wD1wxRuEdU0aITHW14t
	 IvEC13IUFgbkqbTQBAiAn9HNWFSqq7xY8bG7faFMl8Ql3YXX0kSSHwLZB5548IWNb5
	 J9P5CTsJkjclgBd2aPokga6mcZFvaDTWu5H+S/NkZC2GWdZ/une4YDcOUjWo7Saz4s
	 oGIh6AnrbwFbesijh4LsWFvycKJcGyR81GPITTwZjLzml4GSm/VluY7vgIuHuForV/
	 JpVUyfz9T3ynQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA56280C2C;
	Mon, 27 May 2024 18:59:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADA2F1D1FFD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 988A2819D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jLu4TjdI42-t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 18:59:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DCD4D81310
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCD4D81310
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DCD4D81310
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:14 +0000 (UTC)
X-CSE-ConnectionGUID: zqEuDZCnTAiSoCWCo6UmfQ==
X-CSE-MsgGUID: XISBbOwNR12nN1H/GqjBmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353951"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13353951"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:59:14 -0700
X-CSE-ConnectionGUID: tHtIGE/XSNWh0YjPlIUosQ==
X-CSE-MsgGUID: K7USf/zjRoaIuThJuHZYuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34910059"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.208])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:59:11 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 12:58:10 -0600
Message-ID: <20240527185810.3077299-14-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716836355; x=1748372355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HPHKZLihqpB36NBeQ9GXktimsjnH3inZYNs+A1whn4c=;
 b=IR9xCULE6G4omPdMfkKBPfCz3LkbsWQdbH+BVLK4ZvvQ/iYA8+OLnRDi
 DMtx7VAFij+5SrzVoguzlYtY2/swRydHHINBR+kEVkOnJSH/g6BtQo7Cs
 Q79YBolc4HkOJi7kkHSc7qfEOl9+10AMCxzLt4bLhZVnnFqqq12PA7L4A
 iQc3XGVAB+NImEu3A/U6LYFOGrI2HboWhWv/MmEPx0Jz27QkSw3dQ5aVt
 pd/5O7XKvt4BaBynSRX3rkiP2qxMJ6CgBalYuRbXdhwifZPIj518eKOX9
 uYrmSPjVqDdqbWHP6xcvlmyss9/MzBZFU9ri11qU5syViNbLFP0Mhbe1q
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IR9xCULE
Subject: [Intel-wired-lan] [PATCH iwl-next v2 13/13] iavf: add support for
 offloading tc U32 cls filters
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for offloading cls U32 filters. Only "skbedit queue_mapping"
and "drop" actions are supported. Also, only "ip" and "802_3" tc
protocols are allowed. The PF must advertise the VIRTCHNL_VF_OFFLOAD_TC_U32
capability flag.

Since the filters will be enabled via the FD stage at the PF, a new type
of FDIR filters is added and the existing list and state machine are used.

The new filters can be used to configure flow directors based on raw
(binary) pattern in the rx packet.

Examples:

0. # tc qdisc add dev enp175s0v0  ingress

1. Redirect UDP from src IP 192.168.2.1 to queue 12:

    # tc filter add dev <dev> protocol ip ingress u32 \
	match u32 0x45000000 0xff000000 at 0  \
	match u32 0x00110000 0x00ff0000 at 8  \
	match u32 0xC0A80201 0xffffffff at 12 \
	match u32 0x00000000 0x00000000 at 24 \
	action skbedit queue_mapping 12 skip_sw

2. Drop all ICMP:

    # tc filter add dev <dev> protocol ip ingress u32 \
	match u32 0x45000000 0xff000000 at 0  \
	match u32 0x00010000 0x00ff0000 at 8  \
	match u32 0x00000000 0x00000000 at 24 \
	action drop skip_sw

3. Redirect ICMP traffic from MAC 3c:fd:fe:a5:47:e0 to queue 7
   (note proto: 802_3):

   # tc filter add dev <dev> protocol 802_3 ingress u32 \
	match u32 0x00003CFD 0x0000ffff at 4   \
	match u32 0xFEA547E0 0xffffffff at 8   \
	match u32 0x08004500 0xffffff00 at 12  \
	match u32 0x00000001 0x000000ff at 20  \
	match u32 0x0000 0x0000 at 40          \
	action skbedit queue_mapping 7 skip_sw

Notes on matches:
1 - All intermediate fields that are needed to parse the correct PTYPE
    must be provided (in e.g. 3: Ethernet Type 0x0800 in MAC, IP version
    and IP length: 0x45 and protocol: 0x01 (ICMP)).
2 - The last match must provide an offset that guarantees all required
    headers are accounted for, even if the last header is not matched.
    For example, in #2, the last match is 4 bytes at offset 24 starting
    from IP header, so the total is 14 (MAC) + 24 + 4 = 42, which is the
    sum of MAC+IP+ICMP headers.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  27 +++-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   9 +-
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |  29 ++--
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  10 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 148 +++++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  25 ++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   4 +
 include/linux/avf/virtchnl.h                  |   1 +
 8 files changed, 226 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 85bd6a85cf2d..fb6f1b644d3b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -33,6 +33,7 @@
 #include <net/udp.h>
 #include <net/tc_act/tc_gact.h>
 #include <net/tc_act/tc_mirred.h>
+#include <net/tc_act/tc_skbedit.h>
 
 #include "iavf_type.h"
 #include <linux/avf/virtchnl.h>
@@ -393,6 +394,8 @@ struct iavf_adapter {
 			     VIRTCHNL_VF_OFFLOAD_VLAN_V2)
 #define CRC_OFFLOAD_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
 				 VIRTCHNL_VF_OFFLOAD_CRC)
+#define TC_U32_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
+			    VIRTCHNL_VF_OFFLOAD_TC_U32)
 #define VLAN_V2_FILTERING_ALLOWED(_a) \
 	(VLAN_V2_ALLOWED((_a)) && \
 	 ((_a)->vlan_v2_caps.filtering.filtering_support.outer || \
@@ -437,6 +440,7 @@ struct iavf_adapter {
 
 #define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director filters */
 	u16 fdir_active_fltr;
+	u16 raw_fdir_active_fltr;
 	struct list_head fdir_list_head;
 	spinlock_t fdir_fltr_lock;	/* protect the Flow Director filter list */
 
@@ -447,7 +451,28 @@ struct iavf_adapter {
 /* Must be called with fdir_fltr_lock lock held */
 static inline bool iavf_fdir_max_reached(struct iavf_adapter *adapter)
 {
-	return (adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS);
+	return (adapter->fdir_active_fltr + adapter->raw_fdir_active_fltr >=
+			IAVF_MAX_FDIR_FILTERS);
+}
+
+static inline void
+iavf_inc_fdir_active_fltr(struct iavf_adapter *adapter,
+			  struct iavf_fdir_fltr *fltr)
+{
+	if (iavf_is_raw_fdir(fltr))
+		adapter->raw_fdir_active_fltr++;
+	else
+		adapter->fdir_active_fltr++;
+}
+
+static inline void
+iavf_dec_fdir_active_fltr(struct iavf_adapter *adapter,
+			  struct iavf_fdir_fltr *fltr)
+{
+	if (iavf_is_raw_fdir(fltr))
+		adapter->raw_fdir_active_fltr--;
+	else
+		adapter->fdir_active_fltr--;
 }
 
 /* Ethtool Private Flags */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 7ab445eeee18..74a1e9fe1821 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -927,7 +927,7 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
 
-	rule = iavf_find_fdir_fltr(adapter, fsp->location);
+	rule = iavf_find_fdir_fltr(adapter, false, fsp->location);
 	if (!rule) {
 		ret = -EINVAL;
 		goto release_lock;
@@ -1072,6 +1072,9 @@ iavf_get_fdir_fltr_ids(struct iavf_adapter *adapter, struct ethtool_rxnfc *cmd,
 	spin_lock_bh(&adapter->fdir_fltr_lock);
 
 	list_for_each_entry(fltr, &adapter->fdir_list_head, list) {
+		if (iavf_is_raw_fdir(fltr))
+			continue;
+
 		if (cnt == cmd->rule_cnt) {
 			val = -EMSGSIZE;
 			goto release_lock;
@@ -1263,7 +1266,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 		return -EINVAL;
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
-	if (iavf_find_fdir_fltr(adapter, fsp->location)) {
+	if (iavf_find_fdir_fltr(adapter, false, fsp->location)) {
 		dev_err(&adapter->pdev->dev, "Failed to add Flow Director filter, it already exists\n");
 		spin_unlock_bh(&adapter->fdir_fltr_lock);
 		return -EEXIST;
@@ -1307,7 +1310,7 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
-	return iavf_fdir_del_fltr(adapter, fsp->location);
+	return iavf_fdir_del_fltr(adapter, false, fsp->location);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index cdea70471bde..7a126a07193c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -796,6 +796,9 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
 	list_for_each_entry(tmp, &adapter->fdir_list_head, list) {
+		if (iavf_is_raw_fdir(fltr))
+			continue;
+
 		if (tmp->flow_type != fltr->flow_type)
 			continue;
 
@@ -817,18 +820,21 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 /**
  * iavf_find_fdir_fltr - find FDIR filter
  * @adapter: pointer to the VF adapter structure
- * @loc: location to find.
+ * @is_raw: filter type, is raw (tc u32) or not (ethtool)
+ * @data: data to ID the filter, type dependent
  *
  * Returns pointer to Flow Director filter if found or null. Lock must be held.
  */
 struct iavf_fdir_fltr *iavf_find_fdir_fltr(struct iavf_adapter *adapter,
-					   u32 loc)
+					   bool is_raw, u32 data)
 {
 	struct iavf_fdir_fltr *rule;
 
-	list_for_each_entry(rule, &adapter->fdir_list_head, list)
-		if (rule->loc == loc)
+	list_for_each_entry(rule, &adapter->fdir_list_head, list) {
+		if ((is_raw && rule->cls_u32_handle == data) ||
+		    (!is_raw && rule->loc == data))
 			return rule;
+	}
 
 	return NULL;
 }
@@ -853,6 +859,9 @@ int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
 	}
 
 	list_for_each_entry(rule, &adapter->fdir_list_head, list) {
+		if (iavf_is_raw_fdir(fltr))
+			break;
+
 		if (rule->loc >= fltr->loc)
 			break;
 		parent = rule;
@@ -862,7 +871,8 @@ int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
 		list_add(&fltr->list, &parent->list);
 	else
 		list_add(&fltr->list, &adapter->fdir_list_head);
-	adapter->fdir_active_fltr++;
+
+	iavf_inc_fdir_active_fltr(adapter, fltr);
 
 	if (adapter->link_up)
 		fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
@@ -879,23 +889,24 @@ int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
 /**
  * iavf_fdir_del_fltr - delete a flow director filter from the list
  * @adapter: pointer to the VF adapter structure
- * @loc: location to delete.
+ * @is_raw: filter type, is raw (tc u32) or not (ethtool)
+ * @data: data to ID the filter, type dependent
  */
-int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
+int iavf_fdir_del_fltr(struct iavf_adapter *adapter, bool is_raw, u32 data)
 {
 	struct iavf_fdir_fltr *fltr = NULL;
 	int err = 0;
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
-	fltr = iavf_find_fdir_fltr(adapter, loc);
+	fltr = iavf_find_fdir_fltr(adapter, is_raw, data);
 
 	if (fltr) {
 		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
 			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
 		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
 			list_del(&fltr->list);
+			iavf_dec_fdir_active_fltr(adapter, fltr);
 			kfree(fltr);
-			adapter->fdir_active_fltr--;
 			fltr = NULL;
 		} else {
 			err = -EBUSY;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 5c85eb25fa2a..e84a5351162f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -117,12 +117,18 @@ struct iavf_fdir_fltr {
 
 	u32 flow_id;
 
+	u32 cls_u32_handle; /* for FDIR added via tc u32 */
 	u32 loc;	/* Rule location inside the flow table */
 	u32 q_index;
 
 	struct virtchnl_fdir_add vc_add_msg;
 };
 
+static inline bool iavf_is_raw_fdir(struct iavf_fdir_fltr *fltr)
+{
+	return !fltr->vc_add_msg.rule_cfg.proto_hdrs.count;
+}
+
 int iavf_validate_fdir_fltr_masks(struct iavf_adapter *adapter,
 				  struct iavf_fdir_fltr *fltr);
 int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
@@ -130,7 +136,7 @@ void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *f
 bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
 int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
 		       struct iavf_fdir_fltr *fltr);
-int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc);
+int iavf_fdir_del_fltr(struct iavf_adapter *adapter, bool is_raw, u32 data);
 struct iavf_fdir_fltr *iavf_find_fdir_fltr(struct iavf_adapter *adapter,
-					   u32 loc);
+					   bool is_raw, u32 data);
 #endif /* _IAVF_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c6dff0963053..f46865f2ab56 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4014,7 +4014,7 @@ static int iavf_delete_clsflower(struct iavf_adapter *adapter,
 
 /**
  * iavf_setup_tc_cls_flower - flower classifier offloads
- * @adapter: board private structure
+ * @adapter: pointer to iavf adapter structure
  * @cls_flower: pointer to flow_cls_offload struct with flow info
  */
 static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
@@ -4032,6 +4032,142 @@ static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
 	}
 }
 
+/**
+ * iavf_add_cls_u32 - Add U32 classifier offloads
+ * @adapter: pointer to iavf adapter structure
+ * @cls_u32: pointer to tc_cls_u32_offload struct with flow info
+ */
+static int iavf_add_cls_u32(struct iavf_adapter *adapter,
+			    struct tc_cls_u32_offload *cls_u32)
+{
+	struct netlink_ext_ack *extack = cls_u32->common.extack;
+	struct virtchnl_fdir_rule *rule_cfg;
+	struct virtchnl_filter_action *vact;
+	struct virtchnl_proto_hdrs *hdrs;
+	struct ethhdr *spec_h, *mask_h;
+	const struct tc_action *act;
+	struct iavf_fdir_fltr *fltr;
+	struct tcf_exts *exts;
+	int i, status = 0;
+	int off_base = 0;
+
+	if (cls_u32->knode.link_handle) {
+		NL_SET_ERR_MSG_MOD(extack, "Linking not supported");
+		return -EOPNOTSUPP;
+	}
+
+	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
+	if (!fltr)
+		return -ENOMEM;
+
+	rule_cfg = &fltr->vc_add_msg.rule_cfg;
+	hdrs = &rule_cfg->proto_hdrs;
+	hdrs->count = 0;
+
+	/* The parser lib at the PF expects the packet starting with MAC hdr */
+	switch (ntohs(cls_u32->common.protocol)) {
+	case ETH_P_802_3:
+		break;
+	case ETH_P_IP:
+		spec_h = (struct ethhdr *)hdrs->raw.spec;
+		mask_h = (struct ethhdr *)hdrs->raw.mask;
+		spec_h->h_proto = htons(ETH_P_IP);
+		mask_h->h_proto = 0xFFFF;
+		off_base += ETH_HLEN;
+		break;
+	default:
+		NL_SET_ERR_MSG_MOD(extack, "Only 802_3 and ip filter protocols are supported");
+		status = -EOPNOTSUPP;
+		goto free_alloc;
+	}
+
+	for (i = 0; i < cls_u32->knode.sel->nkeys; i++) {
+		__be32 val, mask;
+		int off;
+
+		off = off_base + cls_u32->knode.sel->keys[i].off;
+		val = cls_u32->knode.sel->keys[i].val;
+		mask = cls_u32->knode.sel->keys[i].mask;
+
+		if (off >= sizeof(hdrs->raw.spec)) {
+			NL_SET_ERR_MSG_MOD(extack, "Input exceeds maximum allowed.");
+			status = -EINVAL;
+			goto free_alloc;
+		}
+
+		memcpy(&hdrs->raw.spec[off], &val, sizeof(val));
+		memcpy(&hdrs->raw.mask[off], &mask, sizeof(mask));
+		hdrs->raw.pkt_len = off + sizeof(val);
+	}
+
+	/* Only one action is allowed */
+	rule_cfg->action_set.count = 1;
+	vact = &rule_cfg->action_set.actions[0];
+	exts = cls_u32->knode.exts;
+
+	tcf_exts_for_each_action(i, act, exts) {
+		/* FDIR queue */
+		if (is_tcf_skbedit_rx_queue_mapping(act)) {
+			vact->type = VIRTCHNL_ACTION_QUEUE;
+			vact->act_conf.queue.index =
+				tcf_skbedit_rx_queue_mapping(act);
+			break;
+		}
+
+		/* Drop */
+		if (is_tcf_gact_shot(act)) {
+			vact->type = VIRTCHNL_ACTION_DROP;
+			break;
+		}
+
+		/* Unsupported action */
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported action.");
+		status = -EOPNOTSUPP;
+		goto free_alloc;
+	}
+
+	fltr->vc_add_msg.vsi_id = adapter->vsi.id;
+	fltr->cls_u32_handle = cls_u32->knode.handle;
+	return iavf_fdir_add_fltr(adapter, fltr);
+
+free_alloc:
+	kfree(fltr);
+	return status;
+}
+
+/**
+ * iavf_del_cls_u32 - Delete U32 classifier offloads
+ * @adapter: pointer to iavf adapter structure
+ * @cls_u32: pointer to tc_cls_u32_offload struct with flow info
+ */
+static int iavf_del_cls_u32(struct iavf_adapter *adapter,
+			    struct tc_cls_u32_offload *cls_u32)
+{
+	return iavf_fdir_del_fltr(adapter, true, cls_u32->knode.handle);
+}
+
+/**
+ * iavf_setup_tc_cls_u32 - U32 filter offloads
+ * @adapter: pointer to iavf adapter structure
+ * @cls_u32: pointer to tc_cls_u32_offload struct with flow info
+ */
+static int iavf_setup_tc_cls_u32(struct iavf_adapter *adapter,
+				 struct tc_cls_u32_offload *cls_u32)
+{
+	if (!TC_U32_SUPPORT(adapter) || !FDIR_FLTR_SUPPORT(adapter))
+		return -EOPNOTSUPP;
+
+	switch (cls_u32->command) {
+	case TC_CLSU32_NEW_KNODE:
+	case TC_CLSU32_REPLACE_KNODE:
+		return iavf_add_cls_u32(adapter, cls_u32);
+	case TC_CLSU32_DELETE_KNODE:
+		return iavf_del_cls_u32(adapter, cls_u32);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 /**
  * iavf_setup_tc_block_cb - block callback for tc
  * @type: type of offload
@@ -4051,6 +4187,8 @@ static int iavf_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
 	switch (type) {
 	case TC_SETUP_CLSFLOWER:
 		return iavf_setup_tc_cls_flower(cb_priv, type_data);
+	case TC_SETUP_CLSU32:
+		return iavf_setup_tc_cls_u32(cb_priv, type_data);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -4333,8 +4471,8 @@ static void iavf_disable_fdir(struct iavf_adapter *adapter)
 		    fdir->state == IAVF_FDIR_FLTR_INACTIVE) {
 			/* Delete filters not registered in PF */
 			list_del(&fdir->list);
+			iavf_dec_fdir_active_fltr(adapter, fdir);
 			kfree(fdir);
-			adapter->fdir_active_fltr--;
 		} else if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING ||
 			   fdir->state == IAVF_FDIR_FLTR_DIS_REQUEST ||
 			   fdir->state == IAVF_FDIR_FLTR_ACTIVE) {
@@ -4844,9 +4982,11 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	/* get HW VLAN features that can be toggled */
 	hw_vlan_features = iavf_get_netdev_vlan_hw_features(adapter);
 
-	/* Enable cloud filter if ADQ is supported */
-	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ)
+	/* Enable HW TC offload if ADQ or tc U32 is supported */
+	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ ||
+	    TC_U32_SUPPORT(adapter))
 		hw_features |= NETIF_F_HW_TC;
+
 	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_USO)
 		hw_features |= NETIF_F_GSO_UDP_L4;
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 1e543f6a7c30..7e810b65380c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -142,6 +142,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_WB_ON_ITR |
 	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP |
+	       VIRTCHNL_VF_OFFLOAD_TC_U32 |
 	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
 	       VIRTCHNL_VF_OFFLOAD_CRC |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
@@ -1961,8 +1962,8 @@ static void iavf_activate_fdir_filters(struct iavf_adapter *adapter)
 			 * list on PF is already cleared after a reset
 			 */
 			list_del(&f->list);
+			iavf_dec_fdir_active_fltr(adapter, f);
 			kfree(f);
-			adapter->fdir_active_fltr--;
 		}
 	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
@@ -2135,8 +2136,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 						dev_err(&adapter->pdev->dev,
 							"%s\n", msg);
 					list_del(&fdir->list);
+					iavf_dec_fdir_active_fltr(adapter, fdir);
 					kfree(fdir);
-					adapter->fdir_active_fltr--;
 				}
 			}
 			spin_unlock_bh(&adapter->fdir_fltr_lock);
@@ -2451,8 +2452,12 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 					 list) {
 			if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING) {
 				if (add_fltr->status == VIRTCHNL_FDIR_SUCCESS) {
-					dev_info(&adapter->pdev->dev, "Flow Director filter with location %u is added\n",
-						 fdir->loc);
+					if (!iavf_is_raw_fdir(fdir))
+						dev_info(&adapter->pdev->dev, "Flow Director filter with location %u is added\n",
+							 fdir->loc);
+					else
+						dev_info(&adapter->pdev->dev, "Flow Director filter (raw) for TC handle %x is added\n",
+							 TC_U32_USERHTID(fdir->cls_u32_handle));
 					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
 					fdir->flow_id = add_fltr->flow_id;
 				} else {
@@ -2460,8 +2465,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 						 add_fltr->status);
 					iavf_print_fdir_fltr(adapter, fdir);
 					list_del(&fdir->list);
+					iavf_dec_fdir_active_fltr(adapter, fdir);
 					kfree(fdir);
-					adapter->fdir_active_fltr--;
 				}
 			}
 		}
@@ -2479,11 +2484,15 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 				if (del_fltr->status == VIRTCHNL_FDIR_SUCCESS ||
 				    del_fltr->status ==
 				    VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST) {
-					dev_info(&adapter->pdev->dev, "Flow Director filter with location %u is deleted\n",
-						 fdir->loc);
+					if (!iavf_is_raw_fdir(fdir))
+						dev_info(&adapter->pdev->dev, "Flow Director filter with location %u is deleted\n",
+							 fdir->loc);
+					else
+						dev_info(&adapter->pdev->dev, "Flow Director filter (raw) for TC handle %x is deleted\n",
+							 TC_U32_USERHTID(fdir->cls_u32_handle));
 					list_del(&fdir->list);
+					iavf_dec_fdir_active_fltr(adapter, fdir);
 					kfree(fdir);
-					adapter->fdir_active_fltr--;
 				} else {
 					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
 					dev_info(&adapter->pdev->dev, "Failed to delete Flow Director filter with status: %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 886869648c91..82ad4c6ff4d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -461,6 +461,10 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_FDIR_PF;
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_TC_U32 &&
+	    vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_TC_U32;
+
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2;
 
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 4f78a65e33dc..f41395264dca 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -247,6 +247,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 /* used to negotiate communicating link speeds in Mbps */
 #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
 #define  VIRTCHNL_VF_OFFLOAD_CRC		BIT(10)
+#define VIRTCHNL_VF_OFFLOAD_TC_U32		BIT(11)
 #define VIRTCHNL_VF_OFFLOAD_VLAN_V2		BIT(15)
 #define VIRTCHNL_VF_OFFLOAD_VLAN		BIT(16)
 #define VIRTCHNL_VF_OFFLOAD_RX_POLLING		BIT(17)
-- 
2.43.0

