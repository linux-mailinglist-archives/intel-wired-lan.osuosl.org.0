Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E496A7624D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 23:51:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83ED441907;
	Tue, 25 Jul 2023 21:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83ED441907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690321869;
	bh=plcLvCpMHYiXsCxICB2jZ0hoGUhvxVj5ikAzQynSztQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e1sE3RVwmk5BpzGQogvXjO6I5kHu7zTra6uj56SpeQyv/6s5Y1D1se4hSloXPCyVr
	 gaQ6u/gV5eJisG0iXPvM+tVcO5w5yRZcR2eQ3AlSP45h2SVnDFu2wFyW97WD5Jv7EB
	 HLtK3j5xFqrTX13GZL0K9EOaBTRZXgXzPW3uaTLfmPJBzkQrufInNTiau5oZEe4chb
	 zSXAvRETb3EbYE1S0q0kB4GkG11sFPxvX+9EMsZFi5Rn4sjTkif6TfKjEkaRV40VXN
	 pils1Zz6xaC2wUUjMjKDNfsJfnqp7ZF100efD+b1UJz/oClGsHPwrKhNcbJs4j6T6f
	 8zpU9jBUWIjgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3Gyi66GC_CH; Tue, 25 Jul 2023 21:51:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68CB841833;
	Tue, 25 Jul 2023 21:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CB841833
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB85A1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A11566113E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A11566113E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dt6UHiRLHjB9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 21:50:56 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2C7561130
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2C7561130
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367879189"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="367879189"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="796290024"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="796290024"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:50:55 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 25 Jul 2023 14:50:48 -0700
Message-ID: <20230725215048.1311584-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230725215048.1311584-1-jacob.e.keller@intel.com>
References: <20230725215048.1311584-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690321856; x=1721857856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SpthbyQ1zWdLR+X9o089f0LL0Nk2EP3cIerzKUkve74=;
 b=XMD1kxLrvLZCnu0Fn1AHYFqoZFuFtOOfQCi1uz+tDmxRVYhpDm9VrXgG
 geTFMr0rJ91xQ28TZBvpemITMdrpbKlMb0Ygtz6lO3oQTnsukrZqtuJgq
 Sga3UQHkCXvf+P6yLdJ9CFC+023MTf+jYWjAUxb0oJEfcmnP7+F4/pkeR
 5B3JMoZBhas5PrODC88Q03RZN+yX37ZDHnAlvuxzKwpLiZ12wwpqU25R2
 CdbmDod9p32mq3KhPGks9cwW3q4sx/89gqJAvqzeQd8BVHN6AWwY2SFsC
 lSWLbi5FRePTwS5M00++edgJTXAKPcZoxUtDr+xjV9CPRNb67h/xT3Iu/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XMD1kxLr
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: Support
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
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
logic. Once the cross timestamp has completed, call ice_ptp_src_cmd() with
ICE_PTP_OP to ensure that the timer command registers are cleared.

Co-developed-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* use ice_ptp_src_cmd() instead of ice_ptp_clean_cmd() which no longer
  exists.

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 29 ++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 ++
 3 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e75bb6e7d680..cda674645a7b 100644
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
+	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
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
index 8f86767adfdb..45599261f3c2 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 63e80c5c77a6..a231dcbe38c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -128,6 +128,8 @@ extern const struct ice_vernier_info_e822 e822_vernier[NUM_ICE_PTP_LNK_SPD];
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
