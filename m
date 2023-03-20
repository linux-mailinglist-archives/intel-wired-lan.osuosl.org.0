Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CF26C135F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Mar 2023 14:29:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B696C4023B;
	Mon, 20 Mar 2023 13:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B696C4023B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679318942;
	bh=O1CQhKqG5/IQ0t8Y2+w4I89hbqVp1JkYdZnNrvr4//0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vtCCiJ0/wmiz0/HRhisYUlEiCx8lT+8bEXQvnvsr5Mxfb+jygey8vO7yAaDzS/scf
	 fxFfmsmAqUHxSzmecPxTpRMA2wMrZKSfV2u8psPo2EzRc7Z5Iq+MYIdbgbjUqHeFhZ
	 jC1XgSZ6NwtqRNCbE44K1l0rXi2nPiLHveV3JrbZMvrBCy5SaG6qfQoUYWijwVCplL
	 aE5oOVi9xLBC02pi6T3ztPG9aFS4QcR/smtqNC1SWjfJh2hUj9R2/KODVv/qrsgCGC
	 IMkd+WdweyTUCZGMB20s6ukU2huqiXsoPofZE7G7fCyvfoALofkG+IsN9exDBRnBhI
	 qoPE68fht1EQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PgHNzene1Odu; Mon, 20 Mar 2023 13:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F8F6401C7;
	Mon, 20 Mar 2023 13:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F8F6401C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFCB91BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 13:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4F1A40573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 13:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4F1A40573
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 09ISV181Xiyr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Mar 2023 13:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B449C404CA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B449C404CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 13:28:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="424935083"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="424935083"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 06:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770198312"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="770198312"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Mar 2023 06:28:50 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Mar 2023 09:24:27 -0400
Message-Id: <20230320132427.11600-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679318934; x=1710854934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tZmIxEuzIouA371HoQ4u0fMk3m6xceJmoUrby1/HMvw=;
 b=Tzyn4S5g8k1ehbr12ABXa97t3xKbLn64Ta5rqW1S87rlAMc7b+w0kRFG
 tbhZ0oQ+c2f+1XAgj2m6/FL0xYhR/SG6o2DPdSfeuT6G+U0sVD2+M6A5k
 jkiRsBfaB3aJIJIS2ll/sWzhHO7jPq2M4IreOW0Uh2ZCBZAIcZf2MV1XI
 T/vuGNvRynCIiCe8MDyjgDfTxjDYUsQwX51+VB9VRHLiqMGzbbnAcSIKU
 gsd9vRdoiiJXkyT2OpQESSrFWTypQ6D+oxKOqgjq2VlQuq4J1FrJgPDSh
 7AGx3BLMKdOyry3khTvQSEFSPRg6LqOeTvvdeZL4J8/umkFkPdIX6wu5v
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tzyn4S5g
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for VF to
 specify its primary MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

Currently in the i40e driver there is no implementation of different
MAC address handling depending on whether it is a legacy or primary.
Introduce new checks for VF to be able to specify its primary MAC
address based on the VIRTCHNL_ETHER_ADDR_PRIMARY type.

Primary MAC address are treated differently compared to legacy
ones in a scenario where:
1. If a unicast MAC is being added and it's specified as
VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
default_lan_addr.addr.
2. If a unicast MAC is being deleted and it's type
is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
hw_lan_addr.addr.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 74 ++++++++++++++++++-
 1 file changed, 70 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8a4587585acd..be59ba3774e1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2914,6 +2914,72 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 	return 0;
 }
 
+/**
+ * i40e_vc_ether_addr_type - get type of virtchnl_ether_addr
+ * @vc_ether_addr: used to extract the type
+ **/
+static u8
+i40e_vc_ether_addr_type(struct virtchnl_ether_addr *vc_ether_addr)
+{
+	return vc_ether_addr->type & VIRTCHNL_ETHER_ADDR_TYPE_MASK;
+}
+
+/**
+ * i40e_is_vc_addr_legacy
+ * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
+ *
+ * check if the MAC address is from an older VF
+ **/
+static bool
+i40e_is_vc_addr_legacy(struct virtchnl_ether_addr *vc_ether_addr)
+{
+	return i40e_vc_ether_addr_type(vc_ether_addr) ==
+		VIRTCHNL_ETHER_ADDR_LEGACY;
+}
+
+/**
+ * i40e_is_vc_addr_primary
+ * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
+ *
+ * check if the MAC address is the VF's primary MAC
+ * This function should only be called when the MAC address in
+ * virtchnl_ether_addr is a valid unicast MAC
+ **/
+static bool
+i40e_is_vc_addr_primary(struct virtchnl_ether_addr *vc_ether_addr)
+{
+	return i40e_vc_ether_addr_type(vc_ether_addr) ==
+		VIRTCHNL_ETHER_ADDR_PRIMARY;
+}
+
+/**
+ * i40e_update_vf_mac_addr
+ * @vf: VF to update
+ * @vc_ether_addr: structure from VIRTCHNL with MAC to add
+ *
+ * update the VF's cached hardware MAC if allowed
+ **/
+static void
+i40e_update_vf_mac_addr(struct i40e_vf *vf,
+			struct virtchnl_ether_addr *vc_ether_addr)
+{
+	u8 *mac_addr = vc_ether_addr->addr;
+
+	if (!is_valid_ether_addr(mac_addr))
+		return;
+
+	/* If request to add MAC filter is a primary request update its default
+	 * MAC address with the requested one. If it is a legacy request then
+	 * check if current default is empty if so update the default MAC
+	 */
+	if (i40e_is_vc_addr_primary(vc_ether_addr)) {
+		ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
+	} else if (i40e_is_vc_addr_legacy(vc_ether_addr)) {
+		if (is_zero_ether_addr(vf->default_lan_addr.addr))
+			ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
+	}
+}
+
 /**
  * i40e_vc_add_mac_addr_msg
  * @vf: pointer to the VF info
@@ -2965,11 +3031,8 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 				spin_unlock_bh(&vsi->mac_filter_hash_lock);
 				goto error_param;
 			}
-			if (is_valid_ether_addr(al->list[i].addr) &&
-			    is_zero_ether_addr(vf->default_lan_addr.addr))
-				ether_addr_copy(vf->default_lan_addr.addr,
-						al->list[i].addr);
 		}
+		i40e_update_vf_mac_addr(vf, &al->list[i]);
 	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
 
@@ -3032,6 +3095,9 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
 
+	if (was_unimac_deleted)
+		eth_zero_addr(vf->default_lan_addr.addr);
+
 	/* program the updated filter list */
 	ret = i40e_sync_vsi_filters(vsi);
 	if (ret)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
