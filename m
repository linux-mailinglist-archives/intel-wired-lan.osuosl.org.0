Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4851984FED3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 22:27:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A863341C11;
	Fri,  9 Feb 2024 21:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r7uSnphpSGds; Fri,  9 Feb 2024 21:27:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C979D40173
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707514070;
	bh=FRGMV2quiB88ZojfvkNsKFexBJnQ9J2Y8R8H+Q14MRY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gCd31tzacC7We7q838YkoBO+nS9vPe3R6W3qsX+9sudv0jfVuu7oFQ3Hc9kwFCCUa
	 OuBRCvZTpJha5IVvdRr/9iKXb3/G5K7+5g02yseFPq+R+QXwcbrS2XNSalY0Yq40lC
	 PbIxS+BNORIzluqSi7DROXrqIGVoRPdQ7QBCNCryguLGAYsTqaIBe6ByL53Ul9uYsh
	 ruJHCfrqgv9MqbLNxtC0yhkJT0MTB2r8QcfiyRvRITHA4BQwIP6t8GpylM+NBTaSk8
	 LqQ9y66P4vzY6Mmi+u5bcoh2Q/n6E1IO4rOy4l+vTVCBVS4vJ3sftTp+jcE++y6U69
	 /dRda/L2995GQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C979D40173;
	Fri,  9 Feb 2024 21:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14CF51BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F26804043E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s--X5M7a61J2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 21:27:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5BD240173
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5BD240173
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5BD240173
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5321570"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5321570"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 13:27:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="6681835"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa003.jf.intel.com with ESMTP; 09 Feb 2024 13:27:43 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Feb 2024 22:24:30 +0100
Message-Id: <20240209212432.750653-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
References: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707514064; x=1739050064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6+epjl9BBILIe9bN9DhDUshXRfSW4NIGmjWZBlEBMT8=;
 b=FlCOfM1v9ZmNbBvk5pgomyU3Y/dPbHA29Y1/Vyu9G98LIdl9RJO/J1Bx
 GjNQBCm8sBdQc1XHpy+odZy9Szjs9axqNeCqxWomThbgwoJndVCThuWGc
 OgG3qjoSmLTUWy8DHzQbEjaAMbQCYkxgZzIX9wgC8Xkw5VbWqQpIYX2EH
 WWd+5E/nQ35jo6InAv1J4sdGbQChCWn/1qGy1oYGkfCC6vF+VAZcVdEbN
 bpQEBbPOx2Dg1/bDrLpw2Iy0CLrmw+xCDOCYlHKO3R8AHwP3gR7HcBsnv
 LQIDq9xKNMJpdXAKQKIoszylR9QlD2pypSyaQBcfodBMgfc2FX5trd4vK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FlCOfM1v
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ice: fix dpll and dpll_pin
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
v2:
- remove newline from extack error
- change "pf" -> "PF" in extack error
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 9c0d739be1e9..58d135764ab0 100644
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
+		NL_SET_ERR_MSG(extack, "PF reset in progress");
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

