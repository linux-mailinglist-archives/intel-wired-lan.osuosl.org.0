Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C1D94BCA6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 13:56:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C368C60A8A;
	Thu,  8 Aug 2024 11:56:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n28txt1hmkmF; Thu,  8 Aug 2024 11:56:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EABC60A8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723118214;
	bh=Fw/aykIl4BLuTIpDTGcYiu6jAZpQ1T5paa6TP3fg26c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wDkL6h4Co0uOhjVNc8ar8p5cgcxzTT8pa/xZrPBo/Kltw/XKXQo4BORj9MyUqBAo0
	 U+w9xvtTRFwec0kXrkpWvj/0d5tGE4A6wGfdvCViFihGwfnX++MwZMvOqE095TWjro
	 sVZxsAFnSfea3M+dqW5te16ZBQ8FbneCLdInmaRWREa3iyd40wu9rGy07LuwW8O1zM
	 WU/Pr+8n4IR9BFxMMmNv44yToMDHfInmdzpLWR/i44BiVKgy9NxDbMnwi3peALLniM
	 WmoBRVs17vaidW2sN1tD9VP9GGTbhYxl3aacVgd6byyTnlWeBrOHHUQIYXMAbK8ZPo
	 rD2W/n8g+PhFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EABC60A8B;
	Thu,  8 Aug 2024 11:56:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44BED1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E11560A81
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6SW1p90ROEFN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 11:56:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5A53660A4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A53660A4E
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A53660A4E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:56:50 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-4280bca3960so6403765e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Aug 2024 04:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723118208; x=1723723008;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Fw/aykIl4BLuTIpDTGcYiu6jAZpQ1T5paa6TP3fg26c=;
 b=sv+gatvLPd0JaZOr70QeFg1YRsrtXcydP74BLESrQAoBE9/3gEwH5EKKlK3aTIwjdG
 t+yuZ4nVdKVWd3QURhaqwL9fH/Y27Hymy6pfhbogYKFBsfcytrJcOpoDrDOCyA6mVFky
 G74S9w6JG1SQO11usR7oHzqTfXxKXnFB1DCvp6/3Yvn3RZlYZ0E0zR025hJ4TQewCRZY
 ULVChRt4X5QKrvYMVYP26Zi48v/oO3cxYYDMxpt/TG+W/EbV0K9y/WD4y2GDff7+5D4W
 hJIpgWuAZXZeelZwdqCMNAGW2Fey/Nm1ayTH0aOyN4r9ll/c1VCFdQFPDjwDjRzgewqh
 iUpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU071gcgM2MI4p/CwAjbOEmGNBWHrWH3rD0/Rk5myOF2vVSODh1qIHNg1wLdkGsyUko6NASj//fstCbX4rfA4iplPYXoiyKiT/TYzbaH9UjBQ==
X-Gm-Message-State: AOJu0Yz/SlSOl+/mGpAHOSxcDNsZg795XidfZnWuEM0ItjzSZKnnU4eu
 KPX0fYjujc8w1W6LSEGE9mc6pcq5kzrfn2sMh8JlqPy6RYwvhJu5kgjwonhQeCo=
X-Google-Smtp-Source: AGHT+IFW0UfAtsFgpD8Bt2sTIzz83ftbnXaKa1ZD9m/W7UsLKpZkqaokLX0Iy4D0V+ir7sylTQ1vNA==
X-Received: by 2002:a5d:4105:0:b0:36b:c66a:b9fd with SMTP id
 ffacd0b85a97d-36d273c787amr1487787f8f.6.1723118208195; 
 Thu, 08 Aug 2024 04:56:48 -0700 (PDT)
Received: from localhost ([213.235.133.109]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36d2718a4a6sm1690659f8f.58.2024.08.08.04.56.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2024 04:56:47 -0700 (PDT)
Date: Thu, 8 Aug 2024 13:56:46 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZrSyfgv5jHCUAYku@nanopsycho.orion>
References: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
 <20240808112013.166621-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240808112013.166621-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1723118208; x=1723723008;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Fw/aykIl4BLuTIpDTGcYiu6jAZpQ1T5paa6TP3fg26c=;
 b=f6KDUrpf2OCvIRuoctMnomJQluZslxbx7CW52M3Bn8HTKpwcXFb+17OK021ME7CxtF
 4eywXzYrYNK0v/LoPDbi/vl2kea0H/bgU1kxfcCuBw4B0bxVM2ZgGUr7GRJZJchhN4c5
 ejg8Fspb4IxGd8Y1WzDrkVRVK9JSnfyJg5DdDR0/43xsKEg2oP/6NQapdZzFtqtN49Y1
 71iJXIl4lrJzvii02+9CYuW5kEB79rSFFM6C4B4UQNx0LVPv9EeVsszvrptNFXRT92h3
 QEqjV+UvCHysusK+BzgDvw/Ft/2enAN8yOGpY4Ecn2MeG1QJTFagI1E24ley7qLmaYLE
 R4rQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=f6KDUrpf
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: add callbacks
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

Thu, Aug 08, 2024 at 01:20:13PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Allow the user to get and set configuration of Embedded SYNC feature
>on the ice driver dpll pins.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 241 +++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
> 2 files changed, 239 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index e92be6f130a3..0664bbe98769 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -394,8 +394,8 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
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
>@@ -430,7 +430,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
> 			goto err;
> 
> 		parent &= ICE_AQC_GET_CGU_OUT_CFG_DPLL_SRC_SEL;
>-		if (ICE_AQC_SET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
>+		if (ICE_AQC_GET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
> 			pin->state[pf->dplls.eec.dpll_idx] =
> 				parent == pf->dplls.eec.dpll_idx ?
> 				DPLL_PIN_STATE_CONNECTED :
>@@ -1098,6 +1098,237 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
> 	return 0;
> }
> 
>+/**
>+ * ice_dpll_output_e_sync_set - callback for setting embedded sync
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @e_sync_freq: requested embedded sync frequency
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
>+ice_dpll_output_e_sync_set(const struct dpll_pin *pin, void *pin_priv,
>+			   const struct dpll_device *dpll, void *dpll_priv,
>+			   u64 e_sync_freq, struct netlink_ext_ack *extack)
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
>+	if (e_sync_freq == DPLL_PIN_FREQUENCY_1_HZ) {
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

Odd. Ret is pass all the way up to the userspace. Putting it to message
does not make any sense to me.


>+				   ret,
>+				   ice_aq_str(pf->hw.adminq.sq_last_status));
>+	return ret;
>+}
>+
>+/**
>+ * ice_dpll_output_e_sync_get - callback for getting embedded sync config
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @e_sync_freq: on success holds embedded sync frequency of a pin
>+ * @e_sync_range: on success holds embedded sync frequency range for a pin
>+ * @pulse: on success holds embedded sync pulse type
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
>+ice_dpll_output_e_sync_get(const struct dpll_pin *pin, void *pin_priv,
>+			   const struct dpll_device *dpll, void *dpll_priv,
>+			   u64 *e_sync_freq,
>+			   struct dpll_pin_frequency *e_sync_range,
>+			   enum dpll_pin_e_sync_pulse *pulse,
>+			   struct netlink_ext_ack *extack)
>+{
>+	struct ice_dpll_pin *p = pin_priv;
>+	struct ice_dpll *d = dpll_priv;
>+	struct ice_pf *pf = d->pf;
>+
>+	if (ice_dpll_is_reset(pf, extack))
>+		return -EBUSY;
>+	mutex_lock(&pf->dplls.lock);
>+	if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_ABILITY)) {
>+		mutex_unlock(&pf->dplls.lock);
>+		return -EOPNOTSUPP;
>+	}
>+	*pulse = DPLL_PIN_E_SYNC_PULSE_NONE;
>+	e_sync_range->min = 0;
>+	if (p->freq == DPLL_PIN_FREQUENCY_10_MHZ) {
>+		e_sync_range->max = DPLL_PIN_FREQUENCY_1_HZ;
>+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
>+			*e_sync_freq = DPLL_PIN_FREQUENCY_1_HZ;
>+			*pulse = DPLL_PIN_E_SYNC_PULSE_25_75;
>+		} else {
>+			*e_sync_freq = 0;
>+		}
>+	} else {
>+		e_sync_range->max = 0;
>+		*e_sync_freq = 0;
>+	}
>+	mutex_unlock(&pf->dplls.lock);
>+	return 0;
>+}
>+
>+/**
>+ * ice_dpll_input_e_sync_set - callback for setting embedded sync
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @e_sync_freq: requested embedded sync frequency
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
>+ice_dpll_input_e_sync_set(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  u64 e_sync_freq, struct netlink_ext_ack *extack)
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
>+	if (e_sync_freq == DPLL_PIN_FREQUENCY_1_HZ) {
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

Same here.


>+				   ret,
>+				   ice_aq_str(pf->hw.adminq.sq_last_status));
>+
>+	return ret;
>+}
>+
>+/**
>+ * ice_dpll_input_e_sync_get - callback for getting embedded sync config
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @e_sync_freq: on success holds embedded sync frequency of a pin
>+ * @e_sync_range: on success holds embedded sync frequency range for a pin
>+ * @pulse: on success holds embedded sync pulse type
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
>+ice_dpll_input_e_sync_get(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  u64 *e_sync_freq,
>+			  struct dpll_pin_frequency *e_sync_range,
>+			  enum dpll_pin_e_sync_pulse *pulse,
>+			  struct netlink_ext_ack *extack)
>+{
>+	struct ice_dpll_pin *p = pin_priv;
>+	struct ice_dpll *d = dpll_priv;
>+	struct ice_pf *pf = d->pf;
>+
>+	if (ice_dpll_is_reset(pf, extack))
>+		return -EBUSY;
>+	mutex_lock(&pf->dplls.lock);
>+	if (!(p->status & ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP)) {
>+		mutex_unlock(&pf->dplls.lock);
>+		return -EOPNOTSUPP;
>+	}
>+	*pulse = DPLL_PIN_E_SYNC_PULSE_NONE;
>+	e_sync_range->min = 0;
>+	if (p->freq == DPLL_PIN_FREQUENCY_10_MHZ) {
>+		e_sync_range->max = DPLL_PIN_FREQUENCY_1_HZ;
>+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
>+			*e_sync_freq = DPLL_PIN_FREQUENCY_1_HZ;
>+			*pulse = DPLL_PIN_E_SYNC_PULSE_25_75;
>+		} else {
>+			*e_sync_freq = 0;
>+		}
>+	} else {
>+		e_sync_range->max = 0;
>+		*e_sync_freq = 0;
>+	}
>+	mutex_unlock(&pf->dplls.lock);
>+	return 0;
>+}
>+
> /**
>  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
>  * @pin: pointer to a pin
>@@ -1222,6 +1453,8 @@ static const struct dpll_pin_ops ice_dpll_input_ops = {
> 	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
> 	.phase_adjust_set = ice_dpll_input_phase_adjust_set,
> 	.phase_offset_get = ice_dpll_phase_offset_get,
>+	.e_sync_set = ice_dpll_input_e_sync_set,
>+	.e_sync_get = ice_dpll_input_e_sync_get,
> };
> 
> static const struct dpll_pin_ops ice_dpll_output_ops = {
>@@ -1232,6 +1465,8 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
> 	.direction_get = ice_dpll_output_direction,
> 	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
> 	.phase_adjust_set = ice_dpll_output_phase_adjust_set,
>+	.e_sync_set = ice_dpll_output_e_sync_set,
>+	.e_sync_get = ice_dpll_output_e_sync_get,
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
