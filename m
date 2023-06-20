Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDEB7368A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7380417E4;
	Tue, 20 Jun 2023 10:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7380417E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255311;
	bh=O7IMbo2Z7io2wGwNIhDJ/zkH0h2XFBv6ybspZ6KVXnA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d/63TvuATFtdP8Wf82TIxlhtXX6YfAjM1wS8Rb242kK+gZ3JsPKROpNo2WmrUV2hj
	 m3F9egnguZWd7zVIxnEjDH9RzVwqvN1RYh96m/4nkL9rilYCxEjMqwoX28LajNTgDQ
	 TjfYGoETYbYbauxP+U3gGtRg1bt3xBlR+uqfxQFmRdILDm+PVhtQCDdwGIlP8lAXRf
	 J9mPWu2g+YCZUQabZtZ3/UF+1TmJXX1V6shXSRf8+onQWgxRf3A1lHC4qOWufTZQZ/
	 UWsSZvUfiq7tmyvxeELl9OCLYdYcSXX+R6Ye9JnO65kv9T06Y2oL36F+ku06vxYn0Z
	 abXn21iKJ45WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6ASLtY1kCbA; Tue, 20 Jun 2023 10:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25F41418C1;
	Tue, 20 Jun 2023 10:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25F41418C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0871F1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5FC460E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5FC460E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nyCKp3t1oxjg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:01:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 666EE60D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 666EE60D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688511"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688511"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227481"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227481"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:01:14 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:58 +0000
Message-Id: <20230620100001.5331-13-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255277; x=1718791277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6hq03XgwKBBLTJOEj+S+jKGtfVLR4/LVgHcDKbcVWtM=;
 b=ChMbkGs6Oa7QQD2oXwqME+WR59jnTiD/ZWuTNlDRJpmSkRrMGq4gAz9x
 EMTvcXTqtvqlrE+9tqhQaFLXY6Xyak5DDRuOAV9gq0jc/O7vJiKqnIbVc
 DH/6cI5QSa6ArBscleCWY5ecmQ5xp4gn3NPFHyEoyamt0tYHPqehQAjf9
 kjiUBy8wKjDSscnozA5biWNO5G7o7gYBYNeUvbfVondp+9aht0dBLiXUt
 O+0rCzeFaX/apz7Z35CsNhpv785XiJLikyeCS52JWNy0T8wu4wsf97hLU
 FMoAdziNpJT8kWsbUKdKWsGhtD1OQsnmhuO1VS7SIVNPuHaRqITvoTX9M
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ChMbkGs6
Subject: [Intel-wired-lan] [PATCH iwl-next V1 12/15] ice: mask VF advanced
 capabilities if live migration is activated
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mask the advanced VF capability flags that are
not supported when VF migration is activated.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 27 +++++++++++++++++++
 .../intel/ice/ice_migration_private.h         |  6 +++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  2 ++
 3 files changed, 35 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index c588738828ab..0bc897ab0dc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -748,3 +748,30 @@ void ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg)
 		break;
 	}
 }
+
+#define VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE \
+				(VIRTCHNL_VF_OFFLOAD_L2 | \
+				 VIRTCHNL_VF_OFFLOAD_RSS_PF | \
+				 VIRTCHNL_VF_OFFLOAD_RSS_AQ | \
+				 VIRTCHNL_VF_OFFLOAD_RSS_REG | \
+				 VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 | \
+				 VIRTCHNL_VF_OFFLOAD_ENCAP | \
+				 VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM | \
+				 VIRTCHNL_VF_OFFLOAD_RX_POLLING | \
+				 VIRTCHNL_VF_OFFLOAD_WB_ON_ITR | \
+				 VIRTCHNL_VF_CAP_ADV_LINK_SPEED | \
+				 VIRTCHNL_VF_OFFLOAD_VLAN | \
+				 VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC | \
+				 VIRTCHNL_VF_OFFLOAD_USO)
+
+/**
+ * ice_migration_supported_caps - get migration supported VF capablities
+ *
+ * When migration is activated, some VF capabilities are not supported.
+ * So unmask those capability flags for VF resources.
+ */
+u32 ice_migration_supported_caps(void)
+{
+
+	return VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_migration_private.h b/drivers/net/ethernet/intel/ice/ice_migration_private.h
index 728acfaefbdf..47ad45c2b737 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_migration_private.h
@@ -14,12 +14,18 @@
 void ice_migration_save_vf_msg(struct ice_vf *vf,
 			       struct ice_rq_event_info *event);
 void ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg);
+u32 ice_migration_supported_caps(void);
 #else
 static inline void
 ice_migration_save_vf_msg(struct ice_vf *vf,
 			  struct ice_rq_event_info *event) { }
 static inline void
 ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg) { }
+static inline u32
+ice_migration_supported_caps(void)
+{
+	return 0xFFFFFFFF;
+}
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 5fc252e14fdf..655d68fc688b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -468,6 +468,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 				  VIRTCHNL_VF_OFFLOAD_RSS_REG |
 				  VIRTCHNL_VF_OFFLOAD_VLAN;
 
+	if (vf->migration_active)
+		vf->driver_caps &= ice_migration_supported_caps();
 	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
 	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
