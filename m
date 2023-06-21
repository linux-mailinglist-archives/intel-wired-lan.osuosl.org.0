Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62451737E19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F38884182A;
	Wed, 21 Jun 2023 09:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F38884182A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338743;
	bh=c9ZVa22pkeIs42AMgvJHix4NIBwAK1yifcp//x8B48w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5s94enClZizG8d+9DzudlM/0TmFGSJpg0I0D3rNU4E5P18P5yD53kjOq37ZV87IB9
	 eAzZL5z0NifvkcK3vXlhGU5PW1rZEkVdw9tcA6LjBvmxT93JKlqe8AWmdJVuV1PqlX
	 mvkhMwMy3UJzF5kNFOwQiuYRKJ1gpYdygLxMOpJJ/Mwh2UP8OwEyHdSHknJVR5YB4Y
	 6CJQmlIrO+A8286G6ckX60LJ090xhgw0c2pEFaPK09fj8caxQpCImip8t80ZixjmAL
	 W94AWOFF4DHuRcMaGDk66a3MbZPn/SYuENgXX3VdZFe4vZSIx8lOziUt67bnZvpAW2
	 l/F5DPqLUBJ+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJeNwCS1ZFX9; Wed, 21 Jun 2023 09:12:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9588417F8;
	Wed, 21 Jun 2023 09:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9588417F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06B2B1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E156683280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E156683280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0jDYKo-g1Ex for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:12:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4540B83276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4540B83276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613772"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613772"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:12:09 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570957"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570957"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:12:06 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:09 +0000
Message-Id: <20230621091112.44945-13-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338730; x=1718874730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wtF89nPQ2L/xteXwjjhIro9lSViOZUPxgZ+TGa74lIk=;
 b=YH8bG5s3qGm/NkNpcADjWulM81ZpWzMvexXPS7wOzlV3CZLco/t4jzxD
 aWu8lifa5YHAxNALc9sk1A1EFxBMXQzS3vz4rOaTyfSB+dIDoEP/XRX+W
 4pNgjsR590JqDonF5q/j+6njgrzv28Ph3BRsy8EqzuHekTNeyeZI5h32I
 8GsVngVh+/VKVw7i5u2eaeDJKgz7h4hHOdxu8a1NL6r8FyJ3HSLRz0YvP
 djIkwUXLaHrtlY2273DLIXb/X19BIxCNJdpAj123lPipbCmqKJmhxhJbg
 pMEUrY72d+YtZCIn3tJDcDakDJEJ0kB6Xk9oD9Efp7JwJ5B9BMgnGhagT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YH8bG5s3
Subject: [Intel-wired-lan] [PATCH iwl-next V2 12/15] ice: mask VF advanced
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
index e6018bf0b6a8..87d049d6ec03 100644
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
