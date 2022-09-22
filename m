Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A9D5E6001
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 12:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F46D41526;
	Thu, 22 Sep 2022 10:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F46D41526
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663843064;
	bh=lLFHV1Zj3RzlBsJ/f7N2/G4bQ0yTEBik0V6UrtvinvM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BU823Yx5bAAG+6tL+AThwrjmrwJ+nQk2exdJ6P7WIf3mxp4oXsBOKQY8/jV9MtD/k
	 NxQTRISOVbz70TVdy6MYxDhFakaoKCQA6L3A8CvUGL9e8TnsdJsUePxDCa0DWmDPfV
	 eJDLLS+MFpUHHlzGHEjvNJfVuAMRxLtanimhnzPcwy+4DlmRQDWjsAMQNrbl1FMRwp
	 vDi6CwUmR0om0PewDW7TgD03gIg4oVFKC0UFF9d9yZWf+0hjbwJnGAbDKxshtJrSqG
	 10HPoUkWX605CoiObXEusJPov9F82j+3JyJHHHAJVN5BBnUlyNLqiSNwewpmgQK5tV
	 z5KYlsY1/vgPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZ9Opg1e0nVm; Thu, 22 Sep 2022 10:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAA314150F;
	Thu, 22 Sep 2022 10:37:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAA314150F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 240201BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 10:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB49F83298
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 10:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB49F83298
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0nJSa6qYOMg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 10:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4968681450
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4968681450
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 10:37:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="298978407"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="298978407"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 03:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="597381833"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga006.jf.intel.com with ESMTP; 22 Sep 2022 03:37:35 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Sep 2022 12:37:32 +0200
Message-Id: <20220922103732.19324-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663843057; x=1695379057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1/ftRoMjCKZECNNNIZZKqQbNg4GIrlfOrokXg0y7y+s=;
 b=Z63y4zypCZB5HWVBb9TxT20s9uIJSLJvwRg7j7O0bGRr7V8NWXoHpwNF
 9XzEonC5oaUVh3BjrkDKSFzqo0HktVmqOKZixyFZtv3hWg7y/ggTzJwVU
 T39u4kZADe8GldAAyIsm5uzeRNz2ztgcikTMVUY4JEwoyk7vVi8CMKH+a
 Btnb9llootYsEekGDKAumqGj3pU4SXXnNnWbyrIm0aXmTi6ImXEc9Mu9T
 gCCQa7CPncQMQnwG+IWI1HS1dXdVr2C2P4F/xYLJ0CT1Q24/Hw//sIs+A
 EXw9q/Kd48XHGqlwZLZimrqu3N0iui27OSUFww9o1g0+ceEp4o514HtyV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z63y4zyp
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add crosstimestamping on
 E823 devices
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 408beddc1210..9d1afeca9624 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2036,7 +2036,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 }
 
 /**
- * ice_ptp_getcrosststamp_e822 - Capture a device cross timestamp
+ * ice_ptp_getcrosststamp_e82x - Capture a device cross timestamp
  * @info: the driver's PTP info structure
  * @cts: The memory to fill the cross timestamp info
  *
@@ -2044,14 +2044,14 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
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
@@ -2300,7 +2300,7 @@ ice_ptp_set_funcs_e822(struct ice_pf *pf, struct ptp_clock_info *info)
 #ifdef CONFIG_ICE_HWTS
 	if (boot_cpu_has(X86_FEATURE_ART) &&
 	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
-		info->getcrosststamp = ice_ptp_getcrosststamp_e822;
+		info->getcrosststamp = ice_ptp_getcrosststamp_e82x;
 #endif /* CONFIG_ICE_HWTS */
 }
 
@@ -2334,6 +2334,12 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 static void
 ice_ptp_set_funcs_e823(struct ice_pf *pf, struct ptp_clock_info *info)
 {
+#ifdef CONFIG_ICE_HWTS
+	if (boot_cpu_has(X86_FEATURE_ART) &&
+	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
+		info->getcrosststamp = ice_ptp_getcrosststamp_e82x;
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
