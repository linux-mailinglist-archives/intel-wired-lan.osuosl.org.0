Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E1F91AABB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 17:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABCD460E60;
	Thu, 27 Jun 2024 15:11:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 064gS0G3NN1e; Thu, 27 Jun 2024 15:11:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2BB1606F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719501111;
	bh=Rrv+xMwepM3cVoa4d5h9k8V0yTi1aYYG5Dtau0SMVBE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BXeXE071Ux5phsHWlISzTor4MtdMsdNBXd7FTD6DHPffKMXOgMjwVvimKNOk3KGlU
	 91vmFA6+aw7UqUmtybTqYaSmtLEHj/OeVYKe9hK1YQnHaHjAKwJLWbWP6DqM0Fvtrn
	 pR4M2EH9yKVieMYTykmEDazaHzxMu0bZDdVqYspp7Mh6Dp0OOY3+upiQ8tJjCXIwXq
	 ACq7sV5ltL1RH5kF19aMEKvpaeW86oRC9cWQC+cxkRe7Nt64nmLjNDNi81AAiNO7bm
	 vb5SLlx2KToBnEOZaP/FahH2jIYoAT3yEHV3UUxE+klXB2t3RbQKycaCv5fMAcJknn
	 GsjwsoaMv5AGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2BB1606F2;
	Thu, 27 Jun 2024 15:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA2561BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A750B8411F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3kUNUMN68_i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 15:11:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E0BAA8411E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0BAA8411E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0BAA8411E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:43 +0000 (UTC)
X-CSE-ConnectionGUID: C8N1P62eRfKGHGQ7dqCyPQ==
X-CSE-MsgGUID: 8A2q7NK5Rma5KFi3oxfXcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27222477"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="27222477"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 08:11:44 -0700
X-CSE-ConnectionGUID: GBHC0kT9QtuXeDR6wLecbw==
X-CSE-MsgGUID: vKrj6PiAR8Cvgo28R2HKHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="48759685"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa003.fm.intel.com with ESMTP; 27 Jun 2024 08:11:42 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 17:09:29 +0200
Message-ID: <20240627151127.284884-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627151127.284884-9-karol.kolacinski@intel.com>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719501104; x=1751037104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u8CfDjhLIqunKUmpCLRTaaE/Tn3iMta8cQ8xuhSuzHQ=;
 b=jLapjq510Y6I9VlTJElmmjj0iyvOzWa4cut+AjO33t0XSYhRtdrRGaSM
 Gu9KyamcOddZOJUJbiOKQG4u48q90/27hlWYCd19f7rGLzzGZIcRFXtiX
 Kvt4tYurtTf+APlAYMEioa/poWADeHmS2YEB2EOUPYisiSc8o8DF7e8My
 hZ+W7bi56FLi2xi9r82LLjcwUw+MWr5afzko1iREJPoVHqfNsfbWG7tFS
 v89jXNM8RjaopLPYp1ZoxZYBa9k32OX5LAZN3yT8UDEh0JkCTUKnB/Mzn
 BulUbeK2YvtdpV8qgiRqWsqkGozAlFTb5TXsGZovYPnfVYHFMbMJJDfms
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jLapjq51
Subject: [Intel-wired-lan] [PATCH iwl-next 5/7] ice: Disable shared pin on
 E810 on setfunc
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When setting a new supported function for a pin on E810, disable other
enabled pin that shares the same GPIO.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 65 ++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 82b30ea0c8bf..467675dd2693 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1851,6 +1851,63 @@ static void ice_ptp_enable_all_perout(struct ice_pf *pf)
 					   true);
 }
 
+/**
+ * ice_ptp_disable_shared_pin - Disable enabled pin that shares GPIO
+ * @pf: Board private structure
+ * @pin: Pin index
+ * @func: Assigned function
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+static int ice_ptp_disable_shared_pin(struct ice_pf *pf, unsigned int pin,
+				      enum ptp_pin_function func)
+{
+	uint gpio_pin, i;
+
+	switch (func) {
+	case PTP_PF_PEROUT:
+		gpio_pin = pf->ptp.ice_pin_desc[pin].gpio[1];
+		break;
+	case PTP_PF_EXTTS:
+		gpio_pin = pf->ptp.ice_pin_desc[pin].gpio[0];
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	for (i = 0; i < pf->ptp.info.n_pins; i++) {
+		struct ptp_pin_desc *pin_desc = &pf->ptp.pin_desc[i];
+		uint chan = pin_desc->chan;
+
+		/* Skip pin idx from the request */
+		if (i == pin)
+			continue;
+
+		if (pin_desc->func == PTP_PF_PEROUT &&
+		    pf->ptp.ice_pin_desc[i].gpio[1] == gpio_pin) {
+			pf->ptp.perout_rqs[chan].period.sec = 0;
+			pf->ptp.perout_rqs[chan].period.nsec = 0;
+			pin_desc->func = PTP_PF_NONE;
+			pin_desc->chan = 0;
+			dev_dbg(ice_pf_to_dev(pf), "Disabling pin %u with shared output GPIO pin %u\n",
+				i, gpio_pin);
+			return ice_ptp_cfg_perout(pf, &pf->ptp.perout_rqs[chan],
+						  false);
+		} else if (pf->ptp.pin_desc->func == PTP_PF_EXTTS &&
+			   pf->ptp.ice_pin_desc[i].gpio[0] == gpio_pin) {
+			pf->ptp.extts_rqs[chan].flags &= ~PTP_ENABLE_FEATURE;
+			pin_desc->func = PTP_PF_NONE;
+			pin_desc->chan = 0;
+			dev_dbg(ice_pf_to_dev(pf), "Disabling pin %u with shared input GPIO pin %u\n",
+				i, gpio_pin);
+			return ice_ptp_cfg_extts(pf, &pf->ptp.extts_rqs[chan],
+						 false);
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_verify_pin - verify if pin supports requested pin function
  * @info: the driver's PTP info structure
@@ -1885,6 +1942,14 @@ static int ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
 		return -EOPNOTSUPP;
 	}
 
+	/* On adapters with SMA_CTRL disable other pins that share same GPIO */
+	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
+		ice_ptp_disable_shared_pin(pf, pin, func);
+		pf->ptp.pin_desc[pin].func = func;
+		pf->ptp.pin_desc[pin].chan = chan;
+		return ice_ptp_set_sma_cfg_e810t(pf);
+	}
+
 	return 0;
 }
 
-- 
2.45.2

