Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A383B3B9871
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 00:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC9F54162A;
	Thu,  1 Jul 2021 22:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqkj1zX5Gj7J; Thu,  1 Jul 2021 22:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84809404DD;
	Thu,  1 Jul 2021 22:05:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2DB371BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0EED405CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrqWr9TYr2XH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2788D40015
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272486374"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272486374"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 15:05:11 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="626531414"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 15:05:11 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  1 Jul 2021 15:04:47 -0700
Message-Id: <20210701220456.3882767-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210701220456.3882767-1-jacob.e.keller@intel.com>
References: <20210701220456.3882767-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v2 04/13] ice: restart periodic outputs
 around time changes
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

Wen we enabled auxiliary input/output support for the E810 device, we
forgot to add logic to restart the output when we change time. This is
important as the periodic output will be incorrect after a time change
otherwise.

This unfortunately includes the adjust time function, even though it
uses an atomic hardware interface. The atomic adjustment can still cause
the pin output to stall permanently, so we need to stop and restart it.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 30 ++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 83ba0bf2817a..08acdb2494ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -776,6 +776,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	struct ice_pf *pf = ptp_info_to_pf(info);
 	struct timespec64 ts64 = *ts;
 	struct ice_hw *hw = &pf->hw;
+	u8 i;
 	int err;
 
 	if (!ice_ptp_lock(hw)) {
@@ -783,12 +784,22 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 		goto exit;
 	}
 
+	/* Disable periodic outputs */
+	for (i = 0; i < info->n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, NULL, false);
+
 	err = ice_ptp_write_init(pf, &ts64);
 	ice_ptp_unlock(hw);
 
 	if (!err)
 		ice_ptp_update_cached_phctime(pf);
 
+	/* Reenable periodic outputs */
+	for (i = 0; i < info->n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, &pf->ptp.perout_channels[i],
+					   false);
 exit:
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
@@ -825,6 +836,7 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
 	int err;
+	u8 i;
 
 	dev = ice_pf_to_dev(pf);
 
@@ -842,8 +854,19 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 		return -EBUSY;
 	}
 
+	/* Disable periodic outputs */
+	for (i = 0; i < info->n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, NULL, false);
+
 	err = ice_ptp_write_adj(pf, delta);
 
+	/* Reenable periodic outputs */
+	for (i = 0; i < info->n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, &pf->ptp.perout_channels[i],
+					   false);
+
 	ice_ptp_unlock(hw);
 
 	if (err) {
@@ -1526,6 +1549,8 @@ void ice_ptp_init(struct ice_pf *pf)
  */
 void ice_ptp_release(struct ice_pf *pf)
 {
+	int i;
+
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_cfg_timestamp(pf, false);
 
@@ -1543,6 +1568,11 @@ void ice_ptp_release(struct ice_pf *pf)
 	if (!pf->ptp.clock)
 		return;
 
+	/* Disable periodic outputs */
+	for (i = 0; i < pf->ptp.info.n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, NULL, false);
+
 	ice_clear_ptp_clock_index(pf);
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
