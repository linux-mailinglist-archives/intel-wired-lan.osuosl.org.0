Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B59326975
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B88524F0B0;
	Fri, 26 Feb 2021 21:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuVLFuhpi9wk; Fri, 26 Feb 2021 21:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BD784F0B1;
	Fri, 26 Feb 2021 21:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 07F031BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAE3E4F0B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nh3F6bFSGXv6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFE0D4F08E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
IronPort-SDR: wi7YgyxecuWqcuT9l9rTGsBlzdwZGLPXLFx6Kg8dHUIzV9f5Y07EY/WvSvvTTWGn8R08DV50qB
 4OE948HNCR0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="186117842"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="186117842"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:56 -0800
IronPort-SDR: QQfVsabC+03AvTMUGMHESxC15xP0pz5QWi4mx1ZOzzW1hXb2m+hMSzmTdp1ZT6oAmJktNIZdGY
 WHypncxYbxbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913425"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:55 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:21 -0800
Message-Id: <20210226211932.46683-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 02/13] ice: Fix VFR issues for AVF
 drivers that expect ATQLEN cleared
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

Some AVF drivers expect the VF_MBX_ATQLEN register to be cleared for any
type of VFR/VFLR. Fix this by clearing the VF_MBX_ATQLEN register at the
same time as VF_MBX_ARQLEN.

Fixes: 82ba01282cf8 ("ice: clear VF ARQLEN register on reset")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 12 +++++++-----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 093a1818a392..1998821896c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -31,6 +31,7 @@
 #define PF_FW_ATQLEN_ATQOVFL_M			BIT(29)
 #define PF_FW_ATQLEN_ATQCRIT_M			BIT(30)
 #define VF_MBX_ARQLEN(_VF)			(0x0022BC00 + ((_VF) * 4))
+#define VF_MBX_ATQLEN(_VF)			(0x0022A800 + ((_VF) * 4))
 #define PF_FW_ATQLEN_ATQENABLE_M		BIT(31)
 #define PF_FW_ATQT				0x00080400
 #define PF_MBX_ARQBAH				0x0022E400
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 1f38a8d0c525..0f2a4d48574e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -435,13 +435,15 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 	 */
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
 
-	/* VF_MBX_ARQLEN is cleared by PFR, so the driver needs to clear it
-	 * in the case of VFR. If this is done for PFR, it can mess up VF
-	 * resets because the VF driver may already have started cleanup
-	 * by the time we get here.
+	/* VF_MBX_ARQLEN and VF_MBX_ATQLEN are cleared by PFR, so the driver
+	 * needs to clear them in the case of VFR/VFLR. If this is done for
+	 * PFR, it can mess up VF resets because the VF driver may already
+	 * have started cleanup by the time we get here.
 	 */
-	if (!is_pfr)
+	if (!is_pfr) {
 		wr32(hw, VF_MBX_ARQLEN(vf->vf_id), 0);
+		wr32(hw, VF_MBX_ATQLEN(vf->vf_id), 0);
+	}
 
 	/* In the case of a VFLR, the HW has already reset the VF and we
 	 * just need to clean up, so don't hit the VFRTRIG register.
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
