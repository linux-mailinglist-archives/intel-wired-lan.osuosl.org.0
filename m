Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF128672DF2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7E5182200;
	Thu, 19 Jan 2023 01:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7E5182200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091048;
	bh=BxJ9HERa4bMgFHkt6I8AhY4d+4U3GsHMQk1/3JumXPI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rMACpVnzg+an0ShguF6zwNAVbg/wSxju9tlaSNI5LdwY+A8yB164Hu4L4eU1Rm3VQ
	 5643hE/NeyV0recarVOsNb48yazt2Sg19oi5ZoX8QUKi67If6Nr+qfb+aUcsubVzGA
	 urmVYPzGT5gnHo6T0mtIGSEbWpNcdg2s+j31UQtnwZeVD4l4rMFqvXwXroTtGyi9i6
	 aJH8u0dJ2cvQHOACLuRVL86Wu1zOwvlUWTdbcMLCfr4X+iGEgBxX9NfJxKuKYHKfP9
	 q1sps1lvAeUl6b4La6C+s8cAtgshUIPNIoK5Lge6kqQhlNb5LsJ9+O/tULZJxjjXHF
	 ZGKTX0gGMM3gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-RwF4WsXwI0; Thu, 19 Jan 2023 01:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACB5F821BA;
	Thu, 19 Jan 2023 01:17:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACB5F821BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46FCA1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 658D8418A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 658D8418A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uR4Aec4c30ZW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F406A41922
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F406A41922
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840726"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840726"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881873"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881873"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:46 -0800
Message-Id: <20230119011653.311675-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091024; x=1705627024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SZ6akesSzEQTFuN9G5sjPH9FETHD3gYgWuQMhs5rsJM=;
 b=HwYaWtvCLD7RGHnN0W+z6ctwaB3PmoOFG9Z9dndMxUVBBZZZFl4LciCc
 eqVIdPbcFTp6SWkRE3N2V5px14rH+YAyFNhYlo2p1GRIT/X8QFeaXuTzM
 W4BMGKMeExCIn//8OOAsNcGrgAxGvWDFHA4Njkt6TRFIC6PqWhzzTJY24
 grTG25i5z0W4M33HKTCaX8QcG8yW/SR5+3zT4QizeQ4XUqcu8ckSApjw/
 Ae/0sHNLsqwipTFOIzK0BlLDJtuABitMzFFvUrg8dZpDBOUk7tcYW3PfE
 1nq0d2O2cO0FA8CBI0a7cPHvzVL5vCnlr2i3/RafJ0OEMV9aW0YDvw+cs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HwYaWtvC
Subject: [Intel-wired-lan] [PATCH net-next v2 06/13] ice: move
 ice_vf_vsi_release into ice_vf_lib.c
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vf_vsi_release function will be used in a future change to
refactor the .vsi_rebuild function. Move this over to ice_vf_lib.c so
that it can be used there.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1.

 drivers/net/ethernet/intel/ice/ice_sriov.c     | 15 ---------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c    | 18 ++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h    |  1 +
 3 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a101768b1cc5..de20e50623d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -40,21 +40,6 @@ static void ice_free_vf_entries(struct ice_pf *pf)
 	}
 }
 
-/**
- * ice_vf_vsi_release - invalidate the VF's VSI after freeing it
- * @vf: invalidate this VF's VSI after freeing it
- */
-static void ice_vf_vsi_release(struct ice_vf *vf)
-{
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	if (WARN_ON(!vsi))
-		return;
-
-	ice_vsi_release(vsi);
-	ice_vf_invalidate_vsi(vf);
-}
-
 /**
  * ice_free_vf_res - Free a VF's resources
  * @vf: pointer to the VF info
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 1b7e919b9275..5fecbec55f54 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1143,6 +1143,24 @@ void ice_vf_invalidate_vsi(struct ice_vf *vf)
 	vf->lan_vsi_num = ICE_NO_VSI;
 }
 
+/**
+ * ice_vf_vsi_release - Release the VF VSI and invalidate indexes
+ * @vf: pointer to the VF structure
+ *
+ * Release the VF associated with this VSI and then invalidate the VSI
+ * indexes.
+ */
+void ice_vf_vsi_release(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	if (WARN_ON(!vsi))
+		return;
+
+	ice_vsi_release(vsi);
+	ice_vf_invalidate_vsi(vf);
+}
+
 /**
  * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
  * @vf: VF to set in initialized state
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 9c8ef2b01f0f..a0f204746f4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -36,6 +36,7 @@ void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 void ice_vf_invalidate_vsi(struct ice_vf *vf);
+void ice_vf_vsi_release(struct ice_vf *vf);
 void ice_vf_set_initialized(struct ice_vf *vf);
 
 #endif /* _ICE_VF_LIB_PRIVATE_H_ */
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
