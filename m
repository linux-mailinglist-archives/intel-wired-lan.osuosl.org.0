Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0F1964320
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 13:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ADBB61174;
	Thu, 29 Aug 2024 11:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ll0AAPLJGKAT; Thu, 29 Aug 2024 11:33:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF04F60A5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724931201;
	bh=xu83ybpTwrXw2b2fZGIZk4ywX3hAjC+2Qll2c2RZZ30=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=65g9hcVcynhgQF63EC2QXqd4klilF6PVrPvpvoHe31X+uDtuZjcMH9LQBuJyYdvDV
	 RzCnJdLlRLtpw/5uaAw4JFDAYCOK6nn6utfyP2JLqhWzAErFtdb9YTPSdAx/4o8pKL
	 IZcfmFKzSOkQf2/bJ31dEK6Lwz7DGU28bGQoCRrQKe8f9uFFSqSaxdp6lh0MLZ2kZJ
	 OjvpvIiyhb9rdHU13MG87SoOAfkK9CiYsmbBjVuXVwFGD6WlvCnIQG8Ik0GWCh/FcG
	 E2Uyn/dpJtx2zQz+xdjx8SwhJt+iJ0rk8Gb8dUVxV5KH0sbXu6wCezts76c61b15Kb
	 mK+uGjNC7AFkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF04F60A5A;
	Thu, 29 Aug 2024 11:33:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC131BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B20D40FC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RpW4dhPKfSug for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 11:33:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01589401F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01589401F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01589401F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:14 +0000 (UTC)
X-CSE-ConnectionGUID: OvxNmSfMQrWgzxe/Q7shdQ==
X-CSE-MsgGUID: nitF3MSNRdGZ1YfQW4PIUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23677878"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23677878"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:33:14 -0700
X-CSE-ConnectionGUID: 31yXvDvjSLKE2ju/WU5XIw==
X-CSE-MsgGUID: 0TngHQFXStCkwaYRAggdRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63230614"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa007.fm.intel.com with ESMTP; 29 Aug 2024 04:33:13 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Aug 2024 13:28:12 +0200
Message-ID: <20240829113257.1023835-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240829113257.1023835-9-karol.kolacinski@intel.com>
References: <20240829113257.1023835-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724931195; x=1756467195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/IcPBdXvjD/f4VkKlk7OQVr9f4DE8fR8skgDvmj1WZ0=;
 b=VKeGCtrfT0GbqaR55ryW0Yz6qihhRfZ8X7JiDRtu8U826iMjeYMWQ1rW
 WQoF3hStFRrRFnxYDNaG82VxADpUc2W36Z+8J0buFPdfTdQNXB3DOebOj
 oIFF6l82C7PhuE1pcAA/CFY+YpRLcUzl49Jh0WFtTBeU+hKOUnU+wxB+b
 /XtU7ZBbhzNIGTk+3hhI31ShVnySeaCN5zGaK4arDD+qhOWGY9/cDrxPu
 NWIPGgKpbHZ5BVm7cSZJ3H4BLLa4N0ojl2QJwkAZbKlws4hxwIwCNxSMB
 yUGTJuWucmdwLaziEMf+4N16mLek9Woxu2CCcmuDObbxBaoMdpt1zUJkp
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VKeGCtrf
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 5/7] ice: Disable shared pin
 on E810 on setfunc
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
V1 -> V2: Fixed incorrect call to ice_ptp_set_sma_cfg_e810t()

 drivers/net/ethernet/intel/ice/ice_ptp.c | 65 ++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 45e4b8654317..26f6ebc7bb84 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1852,6 +1852,63 @@ static void ice_ptp_enable_all_perout(struct ice_pf *pf)
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
@@ -1886,6 +1943,14 @@ static int ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
 		return -EOPNOTSUPP;
 	}
 
+	/* On adapters with SMA_CTRL disable other pins that share same GPIO */
+	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
+		ice_ptp_disable_shared_pin(pf, pin, func);
+		pf->ptp.pin_desc[pin].func = func;
+		pf->ptp.pin_desc[pin].chan = chan;
+		return ice_ptp_set_sma_cfg(pf);
+	}
+
 	return 0;
 }
 
-- 
2.46.0

