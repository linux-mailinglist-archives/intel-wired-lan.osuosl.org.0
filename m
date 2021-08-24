Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2933F53EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 01:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 745AA80EA5;
	Mon, 23 Aug 2021 23:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euFvW4u5ec9k; Mon, 23 Aug 2021 23:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61D9E80F0B;
	Mon, 23 Aug 2021 23:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C14291BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 563E440521
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDXyBZEs_Tju for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 23:58:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAF5D40523
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302783969"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="302783969"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 16:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="493196602"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2021 16:58:27 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 17:01:49 -0700
Message-Id: <20210824000158.1928482-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic
 outputs around time changes
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

From: Jacob Keller <jacob.e.keller@intel.com>

Wen we enabled auxiliary input/output support for the E810 device, we
forgot to add logic to restart the output when we change time. This is
important as the periodic output will be incorrect after a time change
otherwise.

This unfortunately includes the adjust time function, even though it
uses an atomic hardware interface. The atomic adjustment can still cause
the pin output to stall permanently, so we need to stop and restart it.

Introduce wrapper functions to temporarily disable and then re-enable
the clock outputs.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 49 ++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ae0980f14c80..05cc5870e4ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -688,6 +688,41 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	return -EFAULT;
 }
 
+/**
+ * ice_ptp_disable_all_clkout - Disable all currently configured outputs
+ * @pf: pointer to the PF structure
+ *
+ * Disable all currently configured clock outputs. This is necessary before
+ * certain changes to the PTP hardware clock. Use ice_ptp_enable_all_clkout to
+ * re-enable the clocks again.
+ */
+static void ice_ptp_disable_all_clkout(struct ice_pf *pf)
+{
+	uint i;
+
+	for (i = 0; i < pf->ptp.info.n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, NULL, false);
+}
+
+/**
+ * ice_ptp_enable_all_clkout - Enable all configured periodic clock outputs
+ * @pf: pointer to the PF structure
+ *
+ * Enable all currently configured clock outputs. Use this after
+ * ice_ptp_disable_all_clkout to reconfigure the output signals according to
+ * their configuration.
+ */
+static void ice_ptp_enable_all_clkout(struct ice_pf *pf)
+{
+	uint i;
+
+	for (i = 0; i < pf->ptp.info.n_per_out; i++)
+		if (pf->ptp.perout_channels[i].ena)
+			ice_ptp_cfg_clkout(pf, i, &pf->ptp.perout_channels[i],
+					   false);
+}
+
 /**
  * ice_ptp_gpio_enable_e810 - Enable/disable ancillary features of PHC
  * @info: the driver's PTP info structure
@@ -783,12 +818,17 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 		goto exit;
 	}
 
+	/* Disable periodic outputs */
+	ice_ptp_disable_all_clkout(pf);
+
 	err = ice_ptp_write_init(pf, &ts64);
 	ice_ptp_unlock(hw);
 
 	if (!err)
 		ice_ptp_update_cached_phctime(pf);
 
+	/* Reenable periodic outputs */
+	ice_ptp_enable_all_clkout(pf);
 exit:
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
@@ -842,8 +882,14 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 		return -EBUSY;
 	}
 
+	/* Disable periodic outputs */
+	ice_ptp_disable_all_clkout(pf);
+
 	err = ice_ptp_write_adj(pf, delta);
 
+	/* Reenable periodic outputs */
+	ice_ptp_enable_all_clkout(pf);
+
 	ice_ptp_unlock(hw);
 
 	if (err) {
@@ -1543,6 +1589,9 @@ void ice_ptp_release(struct ice_pf *pf)
 	if (!pf->ptp.clock)
 		return;
 
+	/* Disable periodic outputs */
+	ice_ptp_disable_all_clkout(pf);
+
 	ice_clear_ptp_clock_index(pf);
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
