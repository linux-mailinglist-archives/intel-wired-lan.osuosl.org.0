Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAA847CCF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 07:25:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB63582F6F;
	Wed, 22 Dec 2021 06:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vLZNRPmDsmZT; Wed, 22 Dec 2021 06:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B8C582F51;
	Wed, 22 Dec 2021 06:25:03 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF9E11BF5B4
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44D6960EE0
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m6wg6f19kdEY for <intel-wired-lan@osuosl.org>;
 Wed, 22 Dec 2021 06:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6448560AF1
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640154289; x=1671690289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UpfsRRzIAL2e6gkMyCDB342sKnPl4SSpbQchBb+Nr3o=;
 b=Wz1fh5hUMqDtY9pfqc+FP6sYjqTv8ggk+LTbbk+IywKGC4KIt+cTCYw9
 SVe1He0VJ5sRi/NnxUojDl3wdivBF/5faP3vOn56uzFsr3RWLyD98c/2+
 TFIP5twXa6leUQlBnuKV1Pg76DmNrMtZwXcf5CQgA9OWDOwEB2Ugz+Ja5
 lEkyhq7eZTP9dTcUd46Q7lIqcGZGD1NNcNxFhKxxZVZVILlVBEnPz60L5
 idpLRpOM57gkdoIQ6LlhTa/U+8E8dpxETU1t7YTLGwHt3xsuR7JbSUUKk
 OKTCPMuM3rO4KvduNCWR1DlN/9EU4UXHFVEyGmYjrh3rm3G+1Hzu5Ikk+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326857341"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="326857341"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 22:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="521552624"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 22:24:47 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 22 Dec 2021 07:21:59 +0100
Message-Id: <20211222062201.36302-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
References: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/3] ice: add check for eswitch
 support
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

Driver support eswitch mode if there is SRIOV capabilities on hardware
and CONFIG_ICE_SWITCHDEV is on.

Create function to check if it is supported. Use it in MSI-X
reservation to not reserve additional vector when eswitch isn't
supported.

Introduce new capability flags to allow driver to disable eswitch
support when MSI-X reservation fails.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 29 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h | 12 ++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 15 ++++++----
 4 files changed, 52 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 0b9b5b9c24b6..1ca309feabbf 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -488,6 +488,7 @@ enum ice_pf_flags {
 	ICE_FLAG_MDD_AUTO_RESET_VF,
 	ICE_FLAG_VF_VLAN_PRUNING,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
+	ICE_FLAG_ESWITCH_CAPABLE,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 30a00fe59c52..fbe640d501c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -678,3 +678,32 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 
 	return 0;
 }
+
+/**
+ * ice_is_eswitch_supported - check if eswitch can be supported
+ * @pf: pointer to PF structure
+ */
+bool ice_is_eswitch_supported(struct ice_pf *pf)
+{
+	return test_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags);
+}
+
+/**
+ * ice_eswitch_set_cap - set eswitch cap based on SRIOV cap
+ * @pf: pointer to PF structure
+ */
+void ice_eswitch_set_cap(struct ice_pf *pf)
+{
+	clear_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags);
+	if (test_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags))
+		set_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags);
+}
+
+/**
+ * ice_eswitch_clear_cap - clear switchdev cap when driver can't support it
+ * @pf: pointer to PF structure
+ */
+void ice_eswitch_clear_cap(struct ice_pf *pf)
+{
+	clear_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 0d0fadaf2ba5..b405e1c9c2bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -29,6 +29,9 @@ void ice_eswitch_set_target_vsi(struct sk_buff *skb,
 				struct ice_tx_offload_params *off);
 netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
+bool ice_is_eswitch_supported(struct ice_pf *pf);
+void ice_eswitch_set_cap(struct ice_pf *pf);
+void ice_eswitch_clear_cap(struct ice_pf *pf);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_release(struct ice_pf *pf) { }
 
@@ -36,6 +39,9 @@ static inline void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf) { }
 static inline void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf) { }
 static inline void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf) { }
 
+static inline void ice_eswitch_set_cap(struct ice_pf *pf) { }
+static inline void ice_eswitch_clear_cap(struct ice_pf *pf) { }
+
 static inline int
 ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
 			    const u8 *mac)
@@ -81,5 +87,11 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 {
 	return NETDEV_TX_BUSY;
 }
+
+static inline bool
+ice_is_eswitch_supported(struct ice_pf *pf)
+{
+	return false;
+}
 #endif /* CONFIG_ICE_SWITCHDEV */
 #endif /* _ICE_ESWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 296c4dd90e26..e31c01673d3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3735,6 +3735,8 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	if (func_caps->common_cap.ieee_1588)
 		set_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
 
+	ice_eswitch_set_cap(pf);
+
 	pf->max_pf_txqs = func_caps->common_cap.num_txq;
 	pf->max_pf_rxqs = func_caps->common_cap.num_rxq;
 }
@@ -3810,11 +3812,13 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	}
 
 	/* reserve for switchdev */
-	needed = ICE_ESWITCH_MSIX;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	v_budget += needed;
-	v_left -= needed;
+	if (ice_is_eswitch_supported(pf)) {
+		needed = ICE_ESWITCH_MSIX;
+		if (v_left < needed)
+			goto no_hw_vecs_left_err;
+		v_budget += needed;
+		v_left -= needed;
+	}
 
 	/* total used for non-traffic vectors */
 	v_other = v_budget;
@@ -3920,6 +3924,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 		needed, v_left);
 	err = -ERANGE;
 exit_err:
+	ice_eswitch_clear_cap(pf);
 	pf->num_rdma_msix = 0;
 	pf->num_lan_msix = 0;
 	return err;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
