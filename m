Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F59394CEF3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 12:52:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0C164135A;
	Fri,  9 Aug 2024 10:52:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N2i-8siWHmsV; Fri,  9 Aug 2024 10:52:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CE1841353
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723200729;
	bh=pTgmTKZ4H9V3mCycartQDNFcC4ZnqwSMFSBOFb0czr4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UohPDgejxSzv1rQDIQYHgfUQchK9p/lQJ79i7Do9wHnspdG8q3j1pD0gANrm6WzZs
	 GxroJC6b4hmSbc5mKW8EHgPuGNmCUiuI2mdfMkbMLPw9ip/lue8iKWXW2u6cUuvGI8
	 EVT89QJ3fl4+NhnRMkoyxWzmW8onriCyNta8hqbxl4lF+PcouCSmvsbw+3dtgnnEsO
	 bpo3/YHfB4GEN6GgfXgyH4gVKUVB9kw/jSGJQsOP3byETLNw9CBn53D4QhJeSyvUef
	 ijBBQnUppGr+3+2LQa8QlI4hhki9PQHhx01Ug9/z0E+N3Oz+oNQxXxLdGrqiGJ7ngc
	 N2JF3lvUCrxAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CE1841353;
	Fri,  9 Aug 2024 10:52:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D53F81BF36A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 10:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2691403BE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 10:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VpOS473tFsma for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 10:52:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22c; helo=mail-lj1-x22c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07E104012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07E104012B
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07E104012B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 10:52:03 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2f136e23229so20173621fa.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Aug 2024 03:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723200721; x=1723805521;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pTgmTKZ4H9V3mCycartQDNFcC4ZnqwSMFSBOFb0czr4=;
 b=wCMmW1s3r/Zz7kva1UqpZyiVn7fp1pfyO/ZwwXHBDDB7LItalMqKM/JQ4Zb35nqL45
 axLGiFbUWwSvt5ClUZetskEy22Ay+4zBDCjxiTtkACXFbD9X/mdIl6mq1QkZm5PhV4lx
 ah24y80qQpt35N3QHJB37vLIN74GjLwKiBBDD0dgusNKRzM1VniWDMMB5Gb/A5BlMsj+
 JSjozayqLGrJhQonNqiHEwMCnyBdjGYngy4PhIW7sjAY8kxlycNDSjrOpqLWqGnLk08+
 jou9r8T5jG1qIqy8GxWmgxk0+5KhSI4h4bqKC2sZNCwMjZz8D2Z651EKe35WmxRqNDuy
 qEhA==
X-Gm-Message-State: AOJu0YwScw/jczg4GL/j6qk/xiwymCzacZw+LeA2btMNcVGzfC7YaQY0
 CV8gTjPcfMENrZQIKehZZxYVeWaPdtbheefLknGSyS16QOohJkmrber4OtsrmOc=
X-Google-Smtp-Source: AGHT+IGunqE4/d7MOq1p34WRYbFJhymcmxwgUqpVn+Yz5KYTfqG/SGwi3RJgpp76MhN0IuC9McaK8Q==
X-Received: by 2002:a2e:9906:0:b0:2ef:2e0e:c888 with SMTP id
 38308e7fff4ca-2f1a6d6b775mr8454391fa.48.1723200720346; 
 Fri, 09 Aug 2024 03:52:00 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-429059cbfaesm116279405e9.42.2024.08.09.03.51.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Aug 2024 03:51:59 -0700 (PDT)
Date: Fri, 9 Aug 2024 12:51:58 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZrX0znOhHFzafIuB@nanopsycho.orion>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
 <ZrTli6UxMkzE31TH@nanopsycho.orion>
 <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1723200721; x=1723805521;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pTgmTKZ4H9V3mCycartQDNFcC4ZnqwSMFSBOFb0czr4=;
 b=mXmvOonHisNCkMTTJygO+hiH1/5jlb+eF35ByMopQZ7mBJaWfF/JvVWulWx8VP8Hfb
 1QMPQEmPbhvikyzgi3knUMUM+auY3gNhzr4U/8YkrSIpem7rAcooh2faEKHlPWnXDuJl
 GK2riH9fl4qU5zYTX33SsuhiJx4XtkdAimWsgxcqM3J7DkjsN/VSKNHvur5LptOa6KHi
 uiD/W5qjoCpKCyyRwPqmBFa0mK9QO9oJWco1Rs1M5t014Mr5XqKU3hPHYOYG034Lx3Us
 Hjp+d7jFxXnOVq56az95xDygbkldkwfPQxY0H/1eFENyCzSQQaKRlB4yzLYfH8BzurEI
 dc/w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=mXmvOonH
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/8] ice: devlink PF MSI-X max
 and min parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 09, 2024 at 07:13:34AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, Aug 08, 2024 at 05:34:35PM +0200, Jiri Pirko wrote:
>> Thu, Aug 08, 2024 at 09:20:09AM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>> >range.
>> >
>> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
>> > drivers/net/ethernet/intel/ice/ice.h          |  8 +++
>> > drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
>> > 3 files changed, 76 insertions(+), 2 deletions(-)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >index 29a5f822cb8b..bdc22ea13e0f 100644
>> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >@@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>> > 	return 0;
>> > }
>> > 
>> >+static int
>> >+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
>> >+				 union devlink_param_value val,
>> >+				 struct netlink_ext_ack *extack)
>> >+{
>> >+	if (val.vu16 > ICE_MAX_MSIX) {
>> >+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
>> 
>> No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
>> That is the name of the param.
>> 
>
>Ok, will change both, thanks.
>
>> 
>> 
>> >+		return -EINVAL;
>> >+	}
>> >+
>> >+	return 0;
>> >+}
>> >+
>> >+static int
>> >+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
>> >+				 union devlink_param_value val,
>> >+				 struct netlink_ext_ack *extack)
>> >+{
>> >+	if (val.vu16 <= ICE_MIN_MSIX) {
>> >+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");
>> 
>> Same comment as for max goes here.
>> 
>> 
>> >+		return -EINVAL;
>> >+	}
>> >+
>> >+	return 0;
>> >+}
>> >+
>> > enum ice_param_id {
>> > 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> > 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>> >@@ -1535,6 +1561,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
>> > 			      ice_devlink_enable_iw_validate),
>> > };
>> > 
>> >+static const struct devlink_param ice_dvl_msix_params[] = {
>> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
>> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>> >+			      NULL, NULL, ice_devlink_msix_max_pf_validate),
>> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
>> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>> >+			      NULL, NULL, ice_devlink_msix_min_pf_validate),
>> >+};
>> >+
>> > static const struct devlink_param ice_dvl_sched_params[] = {
>> > 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>> > 			     "tx_scheduling_layers",
>> >@@ -1637,6 +1672,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
>> > int ice_devlink_register_params(struct ice_pf *pf)
>> > {
>> > 	struct devlink *devlink = priv_to_devlink(pf);
>> >+	union devlink_param_value value;
>> > 	struct ice_hw *hw = &pf->hw;
>> > 	int status;
>> > 
>> >@@ -1645,11 +1681,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
>> > 	if (status)
>> > 		return status;
>> > 
>> >+	status = devl_params_register(devlink, ice_dvl_msix_params,
>> >+				      ARRAY_SIZE(ice_dvl_msix_params));
>> >+	if (status)
>> >+		return status;
>> >+
>> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>> > 		status = devl_params_register(devlink, ice_dvl_sched_params,
>> > 					      ARRAY_SIZE(ice_dvl_sched_params));
>> >+	if (status)
>> >+		return status;
>> > 
>> >-	return status;
>> >+	value.vu16 = pf->msix.max;
>> >+	devl_param_driverinit_value_set(devlink,
>> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
>> >+					value);
>> >+	value.vu16 = pf->msix.min;
>> >+	devl_param_driverinit_value_set(devlink,
>> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
>> >+					value);
>> >+
>> >+	return 0;
>> > }
>> > 
>> > void ice_devlink_unregister_params(struct ice_pf *pf)
>> >@@ -1659,6 +1711,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
>> > 
>> > 	devl_params_unregister(devlink, ice_dvl_rdma_params,
>> > 			       ARRAY_SIZE(ice_dvl_rdma_params));
>> >+	devl_params_unregister(devlink, ice_dvl_msix_params,
>> >+			       ARRAY_SIZE(ice_dvl_msix_params));
>> > 
>> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>> > 		devl_params_unregister(devlink, ice_dvl_sched_params,
>> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> >index d6f80da30dec..a67456057c77 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice.h
>> >+++ b/drivers/net/ethernet/intel/ice/ice.h
>> >@@ -95,6 +95,7 @@
>> > #define ICE_MIN_LAN_TXRX_MSIX	1
>> > #define ICE_MIN_LAN_OICR_MSIX	1
>> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>> >+#define ICE_MAX_MSIX		256
>> > #define ICE_FDIR_MSIX		2
>> > #define ICE_RDMA_NUM_AEQ_MSIX	4
>> > #define ICE_MIN_RDMA_MSIX	2
>> >@@ -545,6 +546,12 @@ struct ice_agg_node {
>> > 	u8 valid;
>> > };
>> > 
>> >+struct ice_pf_msix {
>> >+	u16 cur;
>> >+	u16 min;
>> >+	u16 max;
>> >+};
>> >+
>> > struct ice_pf {
>> > 	struct pci_dev *pdev;
>> > 	struct ice_adapter *adapter;
>> >@@ -615,6 +622,7 @@ struct ice_pf {
>> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
>> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
>> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>> >+	struct ice_pf_msix msix;
>> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
>> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
>> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
>> >index ad82ff7d1995..4e559fd6e49f 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_irq.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
>> >@@ -252,7 +252,19 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
>> > int ice_init_interrupt_scheme(struct ice_pf *pf)
>> > {
>> > 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
>> >-	int vectors, max_vectors;
>> >+	union devlink_param_value value;
>> >+	int vectors, max_vectors, err;
>> >+
>> >+	/* load default PF MSI-X range */
>> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
>> >+					      &value);
>> 
>> If err is not 0, you have a bug in the driver. Perhaps it a about the
>> time to make this return void and add some WARN_ONs inside the function?
>> 
>
>err is not 0 when this param isn't found (not registered yet). It is a
>case when driver is probing, I want to have here default values and
>register it later. Instead of checking if it is probe context or reload
>context I am checking if param already exists. The param doesn't exist in
>probe, but exists in reload.

No, you have to make sure that you are using these values after they are
set. Please fix.


>
>> 
>> >+	pf->msix.min = err ? ICE_MIN_MSIX : value.vu16;
>> >+
>> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
>> >+					      &value);
>> >+	pf->msix.max = err ? total_vectors / 2 : value.vu16;
>> > 
>> > 	vectors = ice_ena_msix_range(pf);
>> > 
>> >-- 
>> >2.42.0
>> >
