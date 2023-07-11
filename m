Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9016674E2A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 02:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D24061079;
	Tue, 11 Jul 2023 00:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D24061079
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689036003;
	bh=qy0KGN3M2C/vqASauJgrD9QEAvwO1TaWk6zyauqpm24=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wQBTpUpf5oNTORuGjV5nfdcc4YhV2QQiOPZs5HnAUalXWfVQ51YsyBqWdSzzywTxf
	 YkUMQQ60koLfkSOS2qOJoT4UIJTXAQoxsIX2n5DCKyuN2BPU9VCUpBoix+jpckC6Wp
	 xIZV1LsS6jeLf3YaIYKWddYUa9nFr6gAhg9wEk1A6+U3fhx8YB4tG/nSgWqzqnI7qv
	 3AZ6Ei06U0bfBgCL1GGXrm9hNx8ntVowixBLqi/EDmhmtjsW338r8jnFeoi4LbE7is
	 orujbscyJwfmoJAwrx+4SVCOu96YwT56YwVGUMdaB33fmeW9WNKCvjbArugZQ4QMB5
	 19fM59qdWE+PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFuOCE3U8f4n; Tue, 11 Jul 2023 00:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 963FA61064;
	Tue, 11 Jul 2023 00:40:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 963FA61064
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5478B1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53A2041744
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53A2041744
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obzYoW1ZZzo1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 00:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FFAB41C49
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FFAB41C49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344089526"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344089526"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="790981065"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="790981065"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 10 Jul 2023 17:39:35 -0700
Message-ID: <20230711003935.98765-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230711003935.98765-1-jacob.e.keller@intel.com>
References: <20230711003935.98765-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689035983; x=1720571983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gtEKTsmG27i+8mCoTYWRMnYqHU4ZBtfVMUMSaSQyg38=;
 b=Xq9lOLTm6CZn6g48U8iZ8xsG/cZGXsKs1ohBvU4DLRTGAtC/HRmxSo1d
 2+zUM+LmGrwbCxX4giwwNB4Lc4UXnrVuMUcTOWvfzfEGg5M8FepyMQIvc
 Pyf81sXYyHWHPRP+T3KUyeZeOBGd3j4G4+1/rXwuxFm9tJvgh6RvQjDmt
 cQh5FAdk3MWLmKbxHb8DomLYQ8foBTdz6Z2+PPTC2rb+HfYBtpjayPzk0
 JoGj4ApD5GTXYmo9PkjOjX9dVrvgTRqjJWxWrkMR+iPNFt0gZzlckaZyn
 nCAvO1C9AL+wnqI7wB7ti6lnF4cnAJovZaU6AR7R2eLE1KfugSKz858do
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xq9lOLTm
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: Support
 cross-timestamping for E823 devices
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E822 hardware has cross timestamping support using a device feature
termed "Hammock Harbor" by the data sheet. This device feature is similar
to PCIe PTM, and captures the Always Running Timer (ART) simultaneously
with the PTP hardware clock time.

This functionality also exists on E823 devices, but is not currently
enabled.

Rename the cross-timestamp functions to use the _e82x postfix, indicating
that the support works across the E82x family of devices and not just the
E822 hardware.

The flow for capturing a cross-timestamp requires an additional step on
E823 devices. The GLTSYN_CMD register must be programmed with the READ_TIME
command. Otherwise, the cross timestamp will always report a value of zero
for the PTP hardware clock time.

To fix this, call ice_ptp_src_cmd() prior to initiating the cross timestamp
logic. Once the cross timestamp has completed, call ice_ptp_clean_cmd() to
ensure that the timer command registers are clear.

Co-developed-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 29 ++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  4 +--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 ++
 3 files changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e75bb6e7d680..db78bf156df4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1993,6 +1993,9 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 		return -EBUSY;
 	}
 
+	/* Program cmd to master timer */
+	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
+
 	/* Start the ART and device clock sync sequence */
 	hh_art_ctl = rd32(hw, GLHH_ART_CTL);
 	hh_art_ctl = hh_art_ctl | GLHH_ART_CTL_ACTIVE_M;
@@ -2022,6 +2025,10 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 			break;
 		}
 	}
+
+	/* Clear the master timer */
+	ice_ptp_clean_cmd(hw);
+
 	/* Release HW lock */
 	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
 	hh_lock = hh_lock & ~PFHH_SEM_BUSY_M;
@@ -2034,7 +2041,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 }
 
 /**
- * ice_ptp_getcrosststamp_e822 - Capture a device cross timestamp
+ * ice_ptp_getcrosststamp_e82x - Capture a device cross timestamp
  * @info: the driver's PTP info structure
  * @cts: The memory to fill the cross timestamp info
  *
@@ -2042,14 +2049,14 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
  * clock. Fill the cross timestamp information and report it back to the
  * caller.
  *
- * This is only valid for E822 devices which have support for generating the
- * cross timestamp via PCIe PTM.
+ * This is only valid for E822 and E823 devices which have support for
+ * generating the cross timestamp via PCIe PTM.
  *
  * In order to correctly correlate the ART timestamp back to the TSC time, the
  * CPU must have X86_FEATURE_TSC_KNOWN_FREQ.
  */
 static int
-ice_ptp_getcrosststamp_e822(struct ptp_clock_info *info,
+ice_ptp_getcrosststamp_e82x(struct ptp_clock_info *info,
 			    struct system_device_crosststamp *cts)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
@@ -2283,22 +2290,22 @@ ice_ptp_setup_pins_e823(struct ice_pf *pf, struct ptp_clock_info *info)
 }
 
 /**
- * ice_ptp_set_funcs_e822 - Set specialized functions for E822 support
+ * ice_ptp_set_funcs_e82x - Set specialized functions for E82x support
  * @pf: Board private structure
  * @info: PTP info to fill
  *
- * Assign functions to the PTP capabiltiies structure for E822 devices.
+ * Assign functions to the PTP capabiltiies structure for E82x devices.
  * Functions which operate across all device families should be set directly
- * in ice_ptp_set_caps. Only add functions here which are distinct for E822
+ * in ice_ptp_set_caps. Only add functions here which are distinct for E82x
  * devices.
  */
 static void
-ice_ptp_set_funcs_e822(struct ice_pf *pf, struct ptp_clock_info *info)
+ice_ptp_set_funcs_e82x(struct ice_pf *pf, struct ptp_clock_info *info)
 {
 #ifdef CONFIG_ICE_HWTS
 	if (boot_cpu_has(X86_FEATURE_ART) &&
 	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
-		info->getcrosststamp = ice_ptp_getcrosststamp_e822;
+		info->getcrosststamp = ice_ptp_getcrosststamp_e82x;
 #endif /* CONFIG_ICE_HWTS */
 }
 
@@ -2332,6 +2339,8 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 static void
 ice_ptp_set_funcs_e823(struct ice_pf *pf, struct ptp_clock_info *info)
 {
+	ice_ptp_set_funcs_e82x(pf, info);
+
 	info->enable = ice_ptp_gpio_enable_e823;
 	ice_ptp_setup_pins_e823(pf, info);
 }
@@ -2359,7 +2368,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	else if (ice_is_e823(&pf->hw))
 		ice_ptp_set_funcs_e823(pf, info);
 	else
-		ice_ptp_set_funcs_e822(pf, info);
+		ice_ptp_set_funcs_e82x(pf, info);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 87b409ce6991..03cdd92a7c30 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -107,7 +107,7 @@ static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
  *
  * Prepare the source timer for an upcoming timer sync command.
  */
-static void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
 	u32 cmd_val;
 	u8 tmr_idx;
@@ -156,7 +156,7 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
  *
  * Zero out the GLTSYN_CMD to avoid any residual command execution.
  */
-static void ice_ptp_clean_cmd(struct ice_hw *hw)
+void ice_ptp_clean_cmd(struct ice_hw *hw)
 {
 	wr32(hw, GLTSYN_CMD, 0);
 	ice_flush(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 62d75cf12b63..ec773d9bc094 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -127,6 +127,8 @@ extern const struct ice_vernier_info_e822 e822_vernier[NUM_ICE_PTP_LNK_SPD];
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
 bool ice_ptp_lock(struct ice_hw *hw);
 void ice_ptp_unlock(struct ice_hw *hw);
+void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd);
+void ice_ptp_clean_cmd(struct ice_hw *hw);
 int ice_ptp_init_time(struct ice_hw *hw, u64 time);
 int ice_ptp_write_incval(struct ice_hw *hw, u64 incval);
 int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval);
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
