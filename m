Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A026595B2EA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 12:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4ACE760B2E;
	Thu, 22 Aug 2024 10:29:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gqZemMwEYGch; Thu, 22 Aug 2024 10:29:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF6D360B31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724322542;
	bh=ldFaxJii5YgjVOkhMMsi2YnK0rlIl544cfD59JqvCtg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tfUZqeDxgrWKiWUyBjHyP10Q7122828HH6fOl2dPw/S1Ghhi45F1dbaojx7+K+566
	 Unex4QpwXynujhlOq6Q9EwgTKXYqN259AuhgJQH5xnUL7dvRYkIx+A6oMUtx8e87WQ
	 TZoUMgIQoF1K/IiCfNvCQnJntENqObD8YWSMJFFfN3mYrpBCmMT6sjV4Fm0Yb0lnuy
	 kQzHNICSNoCZXYQxxmcXEOT4LSOw+NulUqtgWD3Sz7qCVUqzoRI6UAJhQECtF1EXRE
	 LXB2eAE5X5D0RUYCzUlBwQP92e0zRzt276/E/vdnd6DZE1ynxrvK9MGaqDpRpeYpBz
	 wM4gv6KolhlZw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF6D360B31;
	Thu, 22 Aug 2024 10:29:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B86E51BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A464A408E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:29:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E7_Bmsaz3MtT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 10:29:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D50D1408E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D50D1408E6
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D50D1408E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:28:58 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-a864574429aso99184966b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 03:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724322537; x=1724927337;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ldFaxJii5YgjVOkhMMsi2YnK0rlIl544cfD59JqvCtg=;
 b=OH7r8XwlIJqChXya6trEzT8XxZdd3eqSo30vf2dTvVizKo0BLUqr0DKS6gAlIJjkJM
 6jvtsXru++SQlcn5T2/snmqL3JUTlo+Y6sKM4ng491pIDvvmuXDEJAGX8vxPGNVG7Tkh
 0ddcnx9BVzr1e31tMtJ0yFS8YnIOEs4ufZSerneDXP2zRT40qq3/FM51p0TlcstpR9bn
 5PGZa4vAG9fh5jj8idaw7Vby8h+N82QyElJvtLabIg7LgWmWKieaiVT3U5UHi2Wxf+pW
 ZilZg8khrMVCz+DLWpQInYyi8g3opYvvYCuEc6XzCMxUhT5KuHbzchkLczy1aPC22Y4d
 9big==
X-Forwarded-Encrypted: i=1;
 AJvYcCUukSYH7/UsMHeZVgt49AN/GVUOT7UaOOFg8d3dk32gEeLBNnyHAkzjr2Pt+/G1+85mz/2nrkgr50nhmGP98g4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzXpVekO9U2ITcQJ8Pj0KU9U/CiQZM4ERXEnc3wKx+msovfCgi9
 +8mRPvL6ZBYdzKb1MQq9kB783RB8acwl1CKI9UQREp0GtJ13zuAQiO1S0eoDCRTvb+FlPZEymzG
 d
X-Google-Smtp-Source: AGHT+IF1Of3MmQo0oMg/u9DL80JvCjQ/vh7alpChOi20zfBTX+muqLD0BEKjFzKCqhJcG7GpJ913Ig==
X-Received: by 2002:a17:907:96ac:b0:a86:43c0:4270 with SMTP id
 a640c23a62f3a-a8691abab27mr108579366b.13.1724322536612; 
 Thu, 22 Aug 2024 03:28:56 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a868f2a58ddsm98949566b.80.2024.08.22.03.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 03:28:56 -0700 (PDT)
Date: Thu, 22 Aug 2024 12:28:54 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZscS5jL_Uk0cqiga@nanopsycho.orion>
References: <20240821213218.232900-1-arkadiusz.kubalewski@intel.com>
 <20240821213218.232900-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240821213218.232900-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1724322537; x=1724927337;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ldFaxJii5YgjVOkhMMsi2YnK0rlIl544cfD59JqvCtg=;
 b=DaTmhwd7Q+ihrTks2bnkgJemzURl53ADok20n+H2jbVM8KFpfUFUcIHAAdhYzCHIhb
 kNzIQ8xGPSvAs4Eu/MVLn2nE8R5NDXytp5wf5LNTRGITOH8GbBYSAcUS6WufAXYTvaG4
 9m3lZdkkmgpfTidmpOdAEIkDyMq3fj8e4uF0Mo/UZf1Is4PLFhgXaL6xVlqwDrwK9Jlu
 CCCYiu0GOdcPhMgvBX9qSwwxBlQD9LkzzrnJ4HZSHMwplKDmRwBiQsZnPYy0lOQhCV5h
 NUjuIvkGHhUZYiIC6I4v21UAcavnSTvO3z4bRKDZYH2681aH/xpfzuM88KQ+0bHDIqX8
 vGYQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=DaTmhwd7
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: add callbacks
 for Embedded SYNC enablement on dpll pins
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Aug 21, 2024 at 11:32:18PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Allow the user to get and set configuration of Embedded SYNC feature
>on the ice driver dpll pins.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v2:
>- align to v2 changes of "dpll: add Embedded SYNC feature for a pin"
>
> drivers/net/ethernet/intel/ice/ice_dpll.c | 230 +++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
> 2 files changed, 228 insertions(+), 3 deletions(-)

Looks ok, couple of nitpicks below:



>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index e92be6f130a3..aa6b87281ea6 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -9,6 +9,7 @@
> #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
> #define ICE_DPLL_PIN_IDX_INVALID		0xff
> #define ICE_DPLL_RCLK_NUM_PER_PF		1
>+#define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
> 
> /**
>  * enum ice_dpll_pin_type - enumerate ice pin types:
>@@ -30,6 +31,10 @@ static const char * const pin_type_name[] = {
> 	[ICE_DPLL_PIN_TYPE_RCLK_INPUT] = "rclk-input",
> };
> 
>+static const struct dpll_pin_frequency ice_esync_range[] = {
>+	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
>+};
>+
> /**
>  * ice_dpll_is_reset - check if reset is in progress
>  * @pf: private board structure
>@@ -394,8 +399,8 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
> 
> 	switch (pin_type) {
> 	case ICE_DPLL_PIN_TYPE_INPUT:
>-		ret = ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, NULL, NULL,
>-					       NULL, &pin->flags[0],
>+		ret = ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, &pin->status,
>+					       NULL, NULL, &pin->flags[0],
> 					       &pin->freq, &pin->phase_adjust);
> 		if (ret)
> 			goto err;
>@@ -430,7 +435,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
> 			goto err;
> 
> 		parent &= ICE_AQC_GET_CGU_OUT_CFG_DPLL_SRC_SEL;
>-		if (ICE_AQC_SET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
>+		if (ICE_AQC_GET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
> 			pin->state[pf->dplls.eec.dpll_idx] =
> 				parent == pf->dplls.eec.dpll_idx ?
> 				DPLL_PIN_STATE_CONNECTED :
>@@ -1098,6 +1103,221 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
> 	return 0;
> }
> 
>+/**
>+ * ice_dpll_output_esync_set - callback for setting embedded sync
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @esync_freq: requested embedded sync frequency
>+ * @extack: error reporting
>+ *
>+ * Dpll subsystem callback. Handler for setting embedded sync frequency value
>+ * on output pin.
>+ *
>+ * Context: Acquires pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int
>+ice_dpll_output_esync_set(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  u64 esync_freq, struct netlink_ext_ack *extack)

s/esync_freq/freq/


>+{
>+	struct ice_dpll_pin *p = pin_priv;
>+	struct ice_dpll *d = dpll_priv;
>+	struct ice_pf *pf = d->pf;
>+	u8 flags = 0;
>+	int ret;
>+
>+	if (ice_dpll_is_reset(pf, extack))
>+		return -EBUSY;
>+	mutex_lock(&pf->dplls.lock);
>+	if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_OUT_EN)
>+		flags = ICE_AQC_SET_CGU_OUT_CFG_OUT_EN;
>+	if (esync_freq == DPLL_PIN_FREQUENCY_1_HZ) {
>+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
>+			ret = 0;
>+		} else {
>+			flags |= ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
>+			ret = ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flags,
>+							0, 0, 0);
>+		}
>+	} else {
>+		if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN)) {
>+			ret = 0;
>+		} else {
>+			flags &= ~ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
>+			ret = ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flags,
>+							0, 0, 0);
>+		}
>+	}
>+	mutex_unlock(&pf->dplls.lock);
>+	if (ret)
>+		NL_SET_ERR_MSG_FMT(extack,
>+				   "err:%d %s failed to set e-sync freq\n",
>+				   ret,
>+				   ice_aq_str(pf->hw.adminq.sq_last_status));


See my comment to ice_dpll_input_esync_set(), same applies here.


>+	return ret;
>+}
>+
>+/**
>+ * ice_dpll_output_esync_get - callback for getting embedded sync config
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @esync: on success holds embedded sync pin properties
>+ * @extack: error reporting
>+ *
>+ * Dpll subsystem callback. Handler for getting embedded sync frequency value
>+ * and capabilities on output pin.
>+ *
>+ * Context: Acquires pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int
>+ice_dpll_output_esync_get(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  struct dpll_pin_esync *esync,
>+			  struct netlink_ext_ack *extack)
>+{
>+	struct ice_dpll_pin *p = pin_priv;
>+	struct ice_dpll *d = dpll_priv;
>+	struct ice_pf *pf = d->pf;
>+
>+	if (ice_dpll_is_reset(pf, extack))
>+		return -EBUSY;
>+	mutex_lock(&pf->dplls.lock);
>+	if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_ABILITY) ||
>+	    p->freq != DPLL_PIN_FREQUENCY_10_MHZ) {
>+		mutex_unlock(&pf->dplls.lock);
>+		return -EOPNOTSUPP;
>+	}
>+	esync->range = ice_esync_range;
>+	esync->range_num = ARRAY_SIZE(ice_esync_range);
>+	if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
>+		esync->freq = DPLL_PIN_FREQUENCY_1_HZ;
>+		esync->pulse = ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT;
>+	} else {
>+		esync->freq = 0;
>+		esync->pulse = 0;
>+	}
>+	mutex_unlock(&pf->dplls.lock);
>+	return 0;
>+}
>+
>+/**
>+ * ice_dpll_input_esync_set - callback for setting embedded sync
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @esync_freq: requested embedded sync frequency
>+ * @extack: error reporting
>+ *
>+ * Dpll subsystem callback. Handler for setting embedded sync frequency value
>+ * on input pin.
>+ *
>+ * Context: Acquires pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int
>+ice_dpll_input_esync_set(const struct dpll_pin *pin, void *pin_priv,
>+			 const struct dpll_device *dpll, void *dpll_priv,
>+			 u64 esync_freq, struct netlink_ext_ack *extack)
>+{
>+	struct ice_dpll_pin *p = pin_priv;
>+	struct ice_dpll *d = dpll_priv;
>+	struct ice_pf *pf = d->pf;
>+	u8 flags_en = 0;
>+	int ret;
>+
>+	if (ice_dpll_is_reset(pf, extack))
>+		return -EBUSY;
>+	mutex_lock(&pf->dplls.lock);
>+	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_INPUT_EN)
>+		flags_en = ICE_AQC_SET_CGU_IN_CFG_FLG2_INPUT_EN;
>+	if (esync_freq == DPLL_PIN_FREQUENCY_1_HZ) {
>+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
>+			ret = 0;
>+		} else {
>+			flags_en |= ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
>+			ret = ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0,
>+						       flags_en, 0, 0);
>+		}
>+	} else {
>+		if (!(p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN)) {
>+			ret = 0;
>+		} else {
>+			flags_en &= ~ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
>+			ret = ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0,
>+						       flags_en, 0, 0);
>+		}
>+	}
>+	mutex_unlock(&pf->dplls.lock);
>+	if (ret)
>+		NL_SET_ERR_MSG_FMT(extack,
>+				   "err:%d %s failed to set e-sync freq\n",

Not sure how you do that in ice, but there should be a space after ":".
But, in this case, print ret value in the message is redundant as you
return ret value to the user. Remove.

Moreover, this extack message has no value, as you basically say, that
the command user executed failed, which he already knows by non-0 return
value :) Either provide some useful details or avoid the extack message
completely.


>+				   ret,
>+				   ice_aq_str(pf->hw.adminq.sq_last_status));
>+
>+	return ret;
>+}
>+
>+/**
>+ * ice_dpll_input_esync_get - callback for getting embedded sync config
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @esync: on success holds embedded sync pin properties
>+ * @extack: error reporting
>+ *
>+ * Dpll subsystem callback. Handler for getting embedded sync frequency value
>+ * and capabilities on input pin.
>+ *
>+ * Context: Acquires pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int
>+ice_dpll_input_esync_get(const struct dpll_pin *pin, void *pin_priv,
>+			 const struct dpll_device *dpll, void *dpll_priv,
>+			 struct dpll_pin_esync *esync,
>+			 struct netlink_ext_ack *extack)
>+{
>+	struct ice_dpll_pin *p = pin_priv;
>+	struct ice_dpll *d = dpll_priv;
>+	struct ice_pf *pf = d->pf;
>+
>+	if (ice_dpll_is_reset(pf, extack))
>+		return -EBUSY;
>+	mutex_lock(&pf->dplls.lock);
>+	if (!(p->status & ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP) ||
>+	    p->freq != DPLL_PIN_FREQUENCY_10_MHZ) {
>+		mutex_unlock(&pf->dplls.lock);
>+		return -EOPNOTSUPP;
>+	}
>+	esync->range = ice_esync_range;
>+	esync->range_num = ARRAY_SIZE(ice_esync_range);
>+	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
>+		esync->freq = DPLL_PIN_FREQUENCY_1_HZ;
>+		esync->pulse = ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT;
>+	} else {
>+		esync->freq = 0;
>+		esync->pulse = 0;
>+	}
>+	mutex_unlock(&pf->dplls.lock);
>+	return 0;
>+}
>+
> /**
>  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
>  * @pin: pointer to a pin
>@@ -1222,6 +1442,8 @@ static const struct dpll_pin_ops ice_dpll_input_ops = {
> 	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
> 	.phase_adjust_set = ice_dpll_input_phase_adjust_set,
> 	.phase_offset_get = ice_dpll_phase_offset_get,
>+	.esync_set = ice_dpll_input_esync_set,
>+	.esync_get = ice_dpll_input_esync_get,
> };
> 
> static const struct dpll_pin_ops ice_dpll_output_ops = {
>@@ -1232,6 +1454,8 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
> 	.direction_get = ice_dpll_output_direction,
> 	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
> 	.phase_adjust_set = ice_dpll_output_phase_adjust_set,
>+	.esync_set = ice_dpll_output_esync_set,
>+	.esync_get = ice_dpll_output_esync_get,
> };
> 
> static const struct dpll_device_ops ice_dpll_ops = {
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
>index 93172e93995b..c320f1bf7d6d 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
>@@ -31,6 +31,7 @@ struct ice_dpll_pin {
> 	struct dpll_pin_properties prop;
> 	u32 freq;
> 	s32 phase_adjust;
>+	u8 status;
> };
> 
> /** ice_dpll - store info required for DPLL control
>-- 
>2.38.1
>
