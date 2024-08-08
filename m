Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C607694BC38
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 13:24:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8067B60A83;
	Thu,  8 Aug 2024 11:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ap7JaGGRtriS; Thu,  8 Aug 2024 11:24:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D6A160A79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723116293;
	bh=QE2o7yCdKlS53PoeVs343jMyN4tV1Y3BsVCoAiMUnfA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yj+IPLkrnMns5ceddo0Z7uYtrSDjq3zY6T/i/Zy6OyUBOU/pXDH/XjwZLVHoK4oLr
	 a8gHzYkJzxygz5I7s0uhyswx1KSqJuqvhYUvzvWo43O/h7QYj3eqTYefFa1U3PjqF/
	 +Ke8fWFVhgZr8Ap3qkwhKhspOf1CvNejY3IIqBNaG2DDZp1Qoe/9knF/3tBVN/re56
	 5KWBAw6/hwSLqax6TkB07aa61vnCLyt3+LPb2656G8KF6WFLu4QDWBOlIihARk4PfC
	 gMZvCFnISJFQYzbryBz4L2F8ZRnI/jb888qPplZVMT/onyCj4YWFVpudOio6F6qpYo
	 +XVOk7CnGm43g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D6A160A79;
	Thu,  8 Aug 2024 11:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0AF21BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDA5D4094D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jFJI0ua4th2Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 11:24:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71AD0408F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71AD0408F3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71AD0408F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:24:50 +0000 (UTC)
X-CSE-ConnectionGUID: c6z7U7nXQ62D4V7Oz0JhPg==
X-CSE-MsgGUID: KLOEezLrS96tTGHJVy9CDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="38741876"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="38741876"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 04:24:50 -0700
X-CSE-ConnectionGUID: d/VmH1cuRFuZi5QPxWl9mA==
X-CSE-MsgGUID: siorjTixTtOr3IqGPbWoJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="61574922"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 08 Aug 2024 04:24:46 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Aug 2024 13:20:13 +0200
Message-Id: <20240808112013.166621-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
References: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723116291; x=1754652291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ApWPWIRVl2oIsyFjG5glWYXDz0u5DrPryJFiIIVnv2o=;
 b=m6gT3NqQxVnm46SgN2hjKBWlNS+2mMET9tHSAFpmV/eKWsGTRsbg4h8p
 ttK2lUlZc6tqcbgLfJMYILNAF5cpE0R5pKIj0MH9b82hwG1YyGAKVcpzj
 0z8Zx6VqqsrP1tJBLj4tiy9/DRUAmvs0C0dRACC4oBW8ikMrPqBwHjViY
 zpaHCeMJDaZEeITeUsk/VvlhDR+37XxGroEB5lVc+0L9Q9E5LvkC4R5IY
 liDNSF/BvBjzYLURtTv2WPB3hPEIRltzIoDfiKObxACpXgvLpkoMQPW+s
 lH5JZobhKpFzEP9XNb+voNWm98VKkc1MlGrivbCrzJAgVxwXcrXA9UKbD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m6gT3NqQ
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: add callbacks for
 Embedded SYNC enablement on dpll pins
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
Cc: jiri@resnulli.us, corbet@lwn.net, przemyslaw.kitszel@intel.com,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow the user to get and set configuration of Embedded SYNC feature
on the ice driver dpll pins.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 241 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
 2 files changed, 239 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index e92be6f130a3..0664bbe98769 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -394,8 +394,8 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 
 	switch (pin_type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
-		ret = ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, NULL, NULL,
-					       NULL, &pin->flags[0],
+		ret = ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, &pin->status,
+					       NULL, NULL, &pin->flags[0],
 					       &pin->freq, &pin->phase_adjust);
 		if (ret)
 			goto err;
@@ -430,7 +430,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 			goto err;
 
 		parent &= ICE_AQC_GET_CGU_OUT_CFG_DPLL_SRC_SEL;
-		if (ICE_AQC_SET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
+		if (ICE_AQC_GET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
 			pin->state[pf->dplls.eec.dpll_idx] =
 				parent == pf->dplls.eec.dpll_idx ?
 				DPLL_PIN_STATE_CONNECTED :
@@ -1098,6 +1098,237 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_output_e_sync_set - callback for setting embedded sync
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @e_sync_freq: requested embedded sync frequency
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting embedded sync frequency value
+ * on output pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_output_e_sync_set(const struct dpll_pin *pin, void *pin_priv,
+			   const struct dpll_device *dpll, void *dpll_priv,
+			   u64 e_sync_freq, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+	u8 flags = 0;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_OUT_EN)
+		flags = ICE_AQC_SET_CGU_OUT_CFG_OUT_EN;
+	if (e_sync_freq == DPLL_PIN_FREQUENCY_1_HZ) {
+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
+			ret = 0;
+		} else {
+			flags |= ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
+			ret = ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flags,
+							0, 0, 0);
+		}
+	} else {
+		if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN)) {
+			ret = 0;
+		} else {
+			flags &= ~ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
+			ret = ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flags,
+							0, 0, 0);
+		}
+	}
+	mutex_unlock(&pf->dplls.lock);
+	if (ret)
+		NL_SET_ERR_MSG_FMT(extack,
+				   "err:%d %s failed to set e-sync freq\n",
+				   ret,
+				   ice_aq_str(pf->hw.adminq.sq_last_status));
+	return ret;
+}
+
+/**
+ * ice_dpll_output_e_sync_get - callback for getting embedded sync config
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @e_sync_freq: on success holds embedded sync frequency of a pin
+ * @e_sync_range: on success holds embedded sync frequency range for a pin
+ * @pulse: on success holds embedded sync pulse type
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for getting embedded sync frequency value
+ * and capabilities on output pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_output_e_sync_get(const struct dpll_pin *pin, void *pin_priv,
+			   const struct dpll_device *dpll, void *dpll_priv,
+			   u64 *e_sync_freq,
+			   struct dpll_pin_frequency *e_sync_range,
+			   enum dpll_pin_e_sync_pulse *pulse,
+			   struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_ABILITY)) {
+		mutex_unlock(&pf->dplls.lock);
+		return -EOPNOTSUPP;
+	}
+	*pulse = DPLL_PIN_E_SYNC_PULSE_NONE;
+	e_sync_range->min = 0;
+	if (p->freq == DPLL_PIN_FREQUENCY_10_MHZ) {
+		e_sync_range->max = DPLL_PIN_FREQUENCY_1_HZ;
+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
+			*e_sync_freq = DPLL_PIN_FREQUENCY_1_HZ;
+			*pulse = DPLL_PIN_E_SYNC_PULSE_25_75;
+		} else {
+			*e_sync_freq = 0;
+		}
+	} else {
+		e_sync_range->max = 0;
+		*e_sync_freq = 0;
+	}
+	mutex_unlock(&pf->dplls.lock);
+	return 0;
+}
+
+/**
+ * ice_dpll_input_e_sync_set - callback for setting embedded sync
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @e_sync_freq: requested embedded sync frequency
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting embedded sync frequency value
+ * on input pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_input_e_sync_set(const struct dpll_pin *pin, void *pin_priv,
+			  const struct dpll_device *dpll, void *dpll_priv,
+			  u64 e_sync_freq, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+	u8 flags_en = 0;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_INPUT_EN)
+		flags_en = ICE_AQC_SET_CGU_IN_CFG_FLG2_INPUT_EN;
+	if (e_sync_freq == DPLL_PIN_FREQUENCY_1_HZ) {
+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
+			ret = 0;
+		} else {
+			flags_en |= ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
+			ret = ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0,
+						       flags_en, 0, 0);
+		}
+	} else {
+		if (!(p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN)) {
+			ret = 0;
+		} else {
+			flags_en &= ~ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
+			ret = ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0,
+						       flags_en, 0, 0);
+		}
+	}
+	mutex_unlock(&pf->dplls.lock);
+	if (ret)
+		NL_SET_ERR_MSG_FMT(extack,
+				   "err:%d %s failed to set e-sync freq\n",
+				   ret,
+				   ice_aq_str(pf->hw.adminq.sq_last_status));
+
+	return ret;
+}
+
+/**
+ * ice_dpll_input_e_sync_get - callback for getting embedded sync config
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @e_sync_freq: on success holds embedded sync frequency of a pin
+ * @e_sync_range: on success holds embedded sync frequency range for a pin
+ * @pulse: on success holds embedded sync pulse type
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for getting embedded sync frequency value
+ * and capabilities on input pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_input_e_sync_get(const struct dpll_pin *pin, void *pin_priv,
+			  const struct dpll_device *dpll, void *dpll_priv,
+			  u64 *e_sync_freq,
+			  struct dpll_pin_frequency *e_sync_range,
+			  enum dpll_pin_e_sync_pulse *pulse,
+			  struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	if (!(p->status & ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP)) {
+		mutex_unlock(&pf->dplls.lock);
+		return -EOPNOTSUPP;
+	}
+	*pulse = DPLL_PIN_E_SYNC_PULSE_NONE;
+	e_sync_range->min = 0;
+	if (p->freq == DPLL_PIN_FREQUENCY_10_MHZ) {
+		e_sync_range->max = DPLL_PIN_FREQUENCY_1_HZ;
+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
+			*e_sync_freq = DPLL_PIN_FREQUENCY_1_HZ;
+			*pulse = DPLL_PIN_E_SYNC_PULSE_25_75;
+		} else {
+			*e_sync_freq = 0;
+		}
+	} else {
+		e_sync_range->max = 0;
+		*e_sync_freq = 0;
+	}
+	mutex_unlock(&pf->dplls.lock);
+	return 0;
+}
+
 /**
  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
  * @pin: pointer to a pin
@@ -1222,6 +1453,8 @@ static const struct dpll_pin_ops ice_dpll_input_ops = {
 	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
 	.phase_adjust_set = ice_dpll_input_phase_adjust_set,
 	.phase_offset_get = ice_dpll_phase_offset_get,
+	.e_sync_set = ice_dpll_input_e_sync_set,
+	.e_sync_get = ice_dpll_input_e_sync_get,
 };
 
 static const struct dpll_pin_ops ice_dpll_output_ops = {
@@ -1232,6 +1465,8 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
 	.direction_get = ice_dpll_output_direction,
 	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
 	.phase_adjust_set = ice_dpll_output_phase_adjust_set,
+	.e_sync_set = ice_dpll_output_e_sync_set,
+	.e_sync_get = ice_dpll_output_e_sync_get,
 };
 
 static const struct dpll_device_ops ice_dpll_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 93172e93995b..c320f1bf7d6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -31,6 +31,7 @@ struct ice_dpll_pin {
 	struct dpll_pin_properties prop;
 	u32 freq;
 	s32 phase_adjust;
+	u8 status;
 };
 
 /** ice_dpll - store info required for DPLL control
-- 
2.38.1

