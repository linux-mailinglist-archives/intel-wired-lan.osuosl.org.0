Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965A769F9BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2321E417BD;
	Wed, 22 Feb 2023 17:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2321E417BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086160;
	bh=4J+aODpq/I0PhRZNXMZurIun8TKD+RJuzvIufDsDMXk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ivo5xMxBdzn4Fq7uqwBOXFssqBUBnOO+8gsAGUyO30kSi4b9pQBUDZCMGFov0dPeh
	 eVyx/rdk6GLW/Y/X7CBomXvxqe2OuVDXJu8xldjGpRuSAnrd2wWa0n2d7n0i9oeCoV
	 aMK81lyY6DZlGlylI1MCeR8nhxapWJ3nRvd5KjKpRgDvY2miAEOpUYgn15D6HcFckI
	 SGTVcciBzfhwjPY+LrhQfMYasCJCoFjYUjGtaW38PS/htwuc/etOUZ7WXc7FvlHpQJ
	 Jz83ZmuO/RAZXCfRYU/y4uOi4UYxCDVwk+49+ceUsO4QYHrvmMRHRPLJUlGm+XGoYE
	 Va9Z15VMTigCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BK0_pYQcsKlP; Wed, 22 Feb 2023 17:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0356441743;
	Wed, 22 Feb 2023 17:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0356441743
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16B3A1BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CBD641738
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CBD641738
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7rj_GO22BpDN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A4964171A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A4964171A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466645"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466645"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980037"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980037"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:24 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:07 -0800
Message-Id: <20230222170920.1629293-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085787; x=1708621787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SutVkx3T/Opgi5rx6PIPCz1lm4Zs+tAazzqSRKVA+O4=;
 b=fhTH/+rQfHlOWWkm3C/8hC0vvT1eWD3P9Trhp3l8HS1C5g0c+txOcZSH
 i58HVorhA1s3BYTuSvQv39d171YCMXREg0LNs7GYLqDgwPf2fw9DKFSc1
 DjaFPiUYm1rkkqjxgfWusBX90PQr1wI+u3G6//edf/Elh3vV9OQI2DWBF
 9URcvsrt4pbndO0t170jfo7lf1Nff3K3iDyQ/ODyjiUPfdqeXs2EBfZPb
 o2Yn+NJsjuL/C5GiQGf5eUntmMPkAI11jXYKAfEfaNdslN3+fgeQ13as1
 Tg4C9lDX2dDL0qx/ldJCC9aqMJIBZ4aqXQyGR2QWaTRfDif3hPNKyBhBS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fhTH/+rQ
Subject: [Intel-wired-lan] [intel-next PATCH 01/14] ice: re-order
 ice_mbx_reset_snapshot function
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A future change is going to refactor the VF mailbox overflow detection
logic, including modifying ice_mbx_reset_snapshot and its callers. To make
this change easier to review, first move the ice_mbx_reset_snapshot
function higher in the ice_vf_mbx.c file.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 48 ++++++++++-----------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index f56fa94ff3d0..2fe9a9504914 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -130,6 +130,30 @@ u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
  */
 #define ICE_IGNORE_MAX_MSG_CNT	0xFFFF
 
+/**
+ * ice_mbx_reset_snapshot - Reset mailbox snapshot structure
+ * @snap: pointer to mailbox snapshot structure in the ice_hw struct
+ *
+ * Reset the mailbox snapshot structure and clear VF counter array.
+ */
+static void ice_mbx_reset_snapshot(struct ice_mbx_snapshot *snap)
+{
+	u32 vfcntr_len;
+
+	if (!snap || !snap->mbx_vf.vf_cntr)
+		return;
+
+	/* Clear VF counters. */
+	vfcntr_len = snap->mbx_vf.vfcntr_len;
+	if (vfcntr_len)
+		memset(snap->mbx_vf.vf_cntr, 0,
+		       (vfcntr_len * sizeof(*snap->mbx_vf.vf_cntr)));
+
+	/* Reset mailbox snapshot for a new capture. */
+	memset(&snap->mbx_buf, 0, sizeof(snap->mbx_buf));
+	snap->mbx_buf.state = ICE_MAL_VF_DETECT_STATE_NEW_SNAPSHOT;
+}
+
 /**
  * ice_mbx_traverse - Pass through mailbox snapshot
  * @hw: pointer to the HW struct
@@ -201,30 +225,6 @@ ice_mbx_detect_malvf(struct ice_hw *hw, u16 vf_id,
 	return 0;
 }
 
-/**
- * ice_mbx_reset_snapshot - Reset mailbox snapshot structure
- * @snap: pointer to mailbox snapshot structure in the ice_hw struct
- *
- * Reset the mailbox snapshot structure and clear VF counter array.
- */
-static void ice_mbx_reset_snapshot(struct ice_mbx_snapshot *snap)
-{
-	u32 vfcntr_len;
-
-	if (!snap || !snap->mbx_vf.vf_cntr)
-		return;
-
-	/* Clear VF counters. */
-	vfcntr_len = snap->mbx_vf.vfcntr_len;
-	if (vfcntr_len)
-		memset(snap->mbx_vf.vf_cntr, 0,
-		       (vfcntr_len * sizeof(*snap->mbx_vf.vf_cntr)));
-
-	/* Reset mailbox snapshot for a new capture. */
-	memset(&snap->mbx_buf, 0, sizeof(snap->mbx_buf));
-	snap->mbx_buf.state = ICE_MAL_VF_DETECT_STATE_NEW_SNAPSHOT;
-}
-
 /**
  * ice_mbx_vf_state_handler - Handle states of the overflow algorithm
  * @hw: pointer to the HW struct

base-commit: 3a127e58112af46ebf9922a0cc2e52146bc931a4
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
