Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D65D784CECF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 17:22:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 803F283BDC;
	Wed,  7 Feb 2024 16:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNWHijmSFNRd; Wed,  7 Feb 2024 16:22:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A7E383C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707322977;
	bh=P5YBc3NE7/SMkKySBRAOv91k1uhJtxsUUYDDfScaC9g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t4U1bkoKQWtA2iSaP/H9OP2iyM+22tWuJ/pcZPZt5HCWJwrZAG0XT66vU7dFck2K4
	 53RNW+l8YXhVdMqxThE4+L/PEfU+O64wAAmH7ITT/Oel8X2mn2/C6KvBmVqUSInD7g
	 VoboKAtpS+bhUi6NAHC6TISyepaJlal2opeN/74FqJkxNVtI9af2BtICpDYhTKT7AN
	 Xf6b/jfiij/xon+MkEbh/3bycGTSavqoekKvLjtQe7Tlv3vUKRcQDshhIcuc3IpIte
	 XuCIDSgLwoXoDrl+EtS6gC6wmJIIa70UuIotxFoDWJ3KIuRuT8BqFboxSVqHlvWy16
	 WildyybVTsYkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A7E383C15;
	Wed,  7 Feb 2024 16:22:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 772871BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA643400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzUocOtN7pLe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 16:22:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF8FB4019D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF8FB4019D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF8FB4019D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12109092"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12109092"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 08:22:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="32183208"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa002.jf.intel.com with ESMTP; 07 Feb 2024 08:22:48 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Feb 2024 17:19:21 +0100
Message-Id: <20240207161923.710014-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
References: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707322970; x=1738858970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+pMlnDTEK+P39oiqigncAZlp245GJ86/EEMrLO4XUig=;
 b=glFS/fCzT6eS+vOAJwOIBdbS5BTgb5ToEd1ROHh9DsNCENc0lHSIT3Xd
 SnrDZfXVvpVhgDf/7fY/l1V1qG3gdhA5WISYHTMgAJLP2fbihPsHeyB1W
 hRQgOvJ9593WC7MB0QXpgqynqqx0BYtSUbJeRVUfnacDmPz1KSgrQNs8n
 e3P87nsIiifS/hxY9V+9z9kgLNEQSlKCh6H0aljPp6LyWMPIiLY/BE4JG
 TfdtRuFauK6dYEkGHslpezKi2NgqC+3PLS1cj9Unk2W+akZV6w6rMTvKN
 d8FIC1RN+tkcyRBPRDRh0yR+Imkxa4bjKCcSmDJ193JO9mWgokbdk8nCP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=glFS/fCz
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix dpll and dpll_pin
 data access on PF reset
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow to acquire data or alter configuration of dpll and pins
through firmware if PF reset is in progress, this would cause confusing
netlink extack errors as the firmware cannot respond or process the
request properly during the reset time.

Return (-EBUSY) and extack error for the user who tries access/modify
the config of dpll/pin through firmware during the reset time.

The PF reset and kernel access to dpll data are both asynchronous. It is
not possible to guard all the possible reset paths with any determinictic
approach. I.e., it is possible that reset starts after reset check is
performed (or if the reset would be checked after mutex is locked), but at
the same time it is not possible to wait for dpll mutex unlock in the
reset flow.
This is best effort solution to at least give a clue to the user
what is happening in most of the cases, knowing that there are possible
race conditions where the user could see a different error received
from firmware due to reset unexpectedly starting.

Test by looping execution of below steps until netlink error appears:
- perform PF reset
$ echo 1 > /sys/class/net/<ice PF>/device/reset
- i.e. try to alter/read dpll/pin config:
$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
	--dump pin-get

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 9c0d739be1e9..82fbb6778c0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -30,6 +30,26 @@ static const char * const pin_type_name[] = {
 	[ICE_DPLL_PIN_TYPE_RCLK_INPUT] = "rclk-input",
 };
 
+/**
+ * ice_dpll_is_reset - check if reset is in progress
+ * @pf: private board structure
+ * @extack: error reporting
+ *
+ * If reset is in progress, fill extack with error.
+ *
+ * Return:
+ * * false - no reset in progress
+ * * true - reset in progress
+ */
+static bool ice_dpll_is_reset(struct ice_pf *pf, struct netlink_ext_ack *extack)
+{
+	if (ice_is_reset_in_progress(pf->state)) {
+		NL_SET_ERR_MSG(extack, "pf reset in progress\n");
+		return true;
+	}
+	return false;
+}
+
 /**
  * ice_dpll_pin_freq_set - set pin's frequency
  * @pf: private board structure
@@ -109,6 +129,9 @@ ice_dpll_frequency_set(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_pf *pf = d->pf;
 	int ret;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	ret = ice_dpll_pin_freq_set(pf, p, pin_type, frequency, extack);
 	mutex_unlock(&pf->dplls.lock);
@@ -584,6 +607,9 @@ ice_dpll_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_pf *pf = d->pf;
 	int ret;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	if (enable)
 		ret = ice_dpll_pin_enable(&pf->hw, p, d->dpll_idx, pin_type,
@@ -687,6 +713,9 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_pf *pf = d->pf;
 	int ret;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	ret = ice_dpll_pin_state_update(pf, p, pin_type, extack);
 	if (ret)
@@ -811,6 +840,9 @@ ice_dpll_input_prio_set(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_pf *pf = d->pf;
 	int ret;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	ret = ice_dpll_hw_input_prio_set(pf, d, p, prio, extack);
 	mutex_unlock(&pf->dplls.lock);
@@ -1090,6 +1122,9 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 	int ret = -EINVAL;
 	u32 hw_idx;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	hw_idx = parent->idx - pf->dplls.base_rclk_idx;
 	if (hw_idx >= pf->dplls.num_inputs)
@@ -1144,6 +1179,9 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
 	int ret = -EINVAL;
 	u32 hw_idx;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	hw_idx = parent->idx - pf->dplls.base_rclk_idx;
 	if (hw_idx >= pf->dplls.num_inputs)
-- 
2.38.1

