Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B2D5BADE3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Sep 2022 15:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E45F41CA0;
	Fri, 16 Sep 2022 13:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E45F41CA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663334095;
	bh=6ZJpnV9l8DBVd/f9Q+Rtz7jsdupJgQiqKbUuS3WLEP0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PsHgZSigkvtxUru7/vF5jLroomTBf2K1xN2z/L+duE/6gileQiRlVkUToWgcbEXeP
	 XMPatojg4OP6vDFx+lIf/qpbvvd8n1T0VzDwt+OSC//NaCCD8QWvGdMT4vwzxB6Go1
	 oeYLypOwVQL9Em0q7dIquRPCcYn8paYdgS7nN1aWhkuKDRFb90hqxQc8yikiFopaC8
	 0yrS69VkiwOyb8zp6DPcmQinbl5ax/i95h21TNBIUBW2JP9UeziGzB+5FqgmsQxIs9
	 mOTx7/lDCGwUcf4S5cPq1kk01spMqsIJsyJx4qZcl3qXovjkuRvxvX5USF1G5YILU9
	 Jgm5O/ddFPq+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qaGMBi4rmcsZ; Fri, 16 Sep 2022 13:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B3A841C8F;
	Fri, 16 Sep 2022 13:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B3A841C8F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFE331BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 13:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7960842FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 13:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7960842FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBOCL1M-3m5o for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Sep 2022 13:14:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0524F842F6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0524F842F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 13:14:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="297711405"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="297711405"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 06:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="648254792"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga008.jf.intel.com with ESMTP; 16 Sep 2022 06:14:45 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Sep 2022 15:14:40 +0200
Message-Id: <20220916131440.566617-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220916131440.566617-1-karol.kolacinski@intel.com>
References: <20220916131440.566617-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663334087; x=1694870087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hx87ib+vxAk9lkQFZtJ7Bkxj9cYcDwRSu2kSmW1uSe8=;
 b=BmzkPl4XUlzoas1/2C9Zqx1xBWEv2uNoP0Xz5Bne6XCfLBcGrEkOGPCk
 6QXZ5wFMMFgxNOf3tz2JLJSUMG/3w2LG7wJZu255Q3F/xzEx3fgPSaRK5
 tfshD8eM65Ch+rjIeP2OPatT/47mrGwHJXFwsoiI8ywDmuzddYuFNmkjg
 koRBezLNZcPwn69P4lM8FdcreRKXRh2B6adK3ZdCzKC6P1QjO5Jsk5svX
 9WXD6N8QpDWzyRfUuhejcuAfpVQuC3rJ9v+2LfGZi1bOz7dGGdZZ72H5j
 d3JT/Q5mUogJCr7objVz709Eik0QowqG0jQxR3V+kOuzzMiSdI+QZKus9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BmzkPl4X
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: Add crosstimestamping
 on E823 devices
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E823 devices on supported platforms can generate a cross timestamp
between the platform ART and the device time. This process allows for
very precise measurement of the difference between the PTP hardware
clock and the platform time.

This is only supported if we know the TSC frequency relative to ART, so
we do not enable this unless the boot CPU has a known TSC frequency (as
required by convert_art_ns_to_tsc).

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 408beddc1210..0b37e3d1ef68 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2036,7 +2036,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 }
 
 /**
- * ice_ptp_getcrosststamp_e822 - Capture a device cross timestamp
+ * ice_ptp_getcrosststamp_generic - Capture a device cross timestamp
  * @info: the driver's PTP info structure
  * @cts: The memory to fill the cross timestamp info
  *
@@ -2044,15 +2044,15 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
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
-			    struct system_device_crosststamp *cts)
+ice_ptp_getcrosststamp_generic(struct ptp_clock_info *info,
+			       struct system_device_crosststamp *cts)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
 
@@ -2300,7 +2300,7 @@ ice_ptp_set_funcs_e822(struct ice_pf *pf, struct ptp_clock_info *info)
 #ifdef CONFIG_ICE_HWTS
 	if (boot_cpu_has(X86_FEATURE_ART) &&
 	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
-		info->getcrosststamp = ice_ptp_getcrosststamp_e822;
+		info->getcrosststamp = ice_ptp_getcrosststamp_generic;
 #endif /* CONFIG_ICE_HWTS */
 }
 
@@ -2334,6 +2334,12 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 static void
 ice_ptp_set_funcs_e823(struct ice_pf *pf, struct ptp_clock_info *info)
 {
+#ifdef CONFIG_ICE_HWTS
+	if (boot_cpu_has(X86_FEATURE_ART) &&
+	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
+		info->getcrosststamp = ice_ptp_getcrosststamp_generic;
+#endif /* CONFIG_ICE_HWTS */
+
 	info->enable = ice_ptp_gpio_enable_e823;
 	ice_ptp_setup_pins_e823(pf, info);
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
