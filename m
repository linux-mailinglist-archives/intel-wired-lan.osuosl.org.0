Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA2C429930
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 23:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F10D80ED6;
	Mon, 11 Oct 2021 21:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p4fiRtN-3Zt9; Mon, 11 Oct 2021 21:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E8C480E81;
	Mon, 11 Oct 2021 21:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DA971BF865
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 21:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5728B40387
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 21:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YADn9cepsWE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Oct 2021 21:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA15D4033F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 21:55:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="313172214"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="313172214"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 14:55:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="526178449"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 14:55:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 14:54:25 -0700
Message-Id: <20211011215433.1525457-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211011215433.1525457-1-jacob.e.keller@intel.com>
References: <20211011215433.1525457-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 1/9] ice: introduce
 ice_base_incval function
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

A future change will add additional possible increment values for the
E822 device support. To handle this, we want to look up the increment
value to use instead of hard coding it to the nominal value for E810
devices. Introduce ice_base_incval as a function to get the best nominal
increment value to use.

For now, it just returns the E810 value, but will be refactored in the
future to look up the value based on the device type and configured
clock frequency.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 36c01ba4dd69..71e715c7be4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -685,6 +685,20 @@ static int ice_ptp_write_adj(struct ice_pf *pf, s32 adj)
 	return ice_ptp_adj_clock(hw, adj);
 }
 
+/**
+ * ice_base_incval - Get base timer increment value
+ * @pf: Board private structure
+ *
+ * Look up the base timer increment value for this device. The base increment
+ * value is used to define the nominal clock tick rate. This increment value
+ * is programmed during device initialization. It is also used as the basis
+ * for calculating adjustments using scaled_ppm.
+ */
+static u64 ice_base_incval(struct ice_pf *pf)
+{
+	return ICE_PTP_NOMINAL_INCVAL_E810;
+}
+
 /**
  * ice_ptp_adjfine - Adjust clock increment rate
  * @info: the driver's PTP info structure
@@ -702,7 +716,7 @@ static int ice_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
 	int neg_adj = 0;
 	int err;
 
-	incval = ICE_PTP_NOMINAL_INCVAL_E810;
+	incval = ice_base_incval(pf);
 
 	if (scaled_ppm < 0) {
 		neg_adj = 1;
@@ -1826,7 +1840,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	}
 
 	/* Write the increment time value to PHY and LAN */
-	err = ice_ptp_write_incval(hw, ICE_PTP_NOMINAL_INCVAL_E810);
+	err = ice_ptp_write_incval(hw, ice_base_incval(pf));
 	if (err) {
 		ice_ptp_unlock(hw);
 		goto err_exit;
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
