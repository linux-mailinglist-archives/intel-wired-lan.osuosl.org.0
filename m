Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F4B94DB1B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 08:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C5084480;
	Sat, 10 Aug 2024 06:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KLzQDJO1TKAE; Sat, 10 Aug 2024 06:33:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6D2184482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723271601;
	bh=ivtB6vEKatao+dFLxGzvtJBRCzWqw+HKse3c1GkoM7c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3Z9gK22MppjvLUH1MWUAjkh2G1wL2+fbK18+jEHQS+MS58Jei1EBPrxWlAyA8U5pl
	 55RnENUH6DbFhD/TTtpN8hQLaxmjBoqs6h9KMtfvXqNYH3/tx3ovadVpzfpdOiOWE7
	 A+oC7W3O7gzbTOXIwyu/MP6jcEUSRZhgSGn1XqwmM2ON6m+2wikMbMrMYs3/Kn2xG5
	 J7EQJ9jyY6xmhzqnbzS3J6LDG2dRB8F7XM1iRaZMF0rxq+eqTvpSIcFQpf7wGmLmNx
	 /c7snvxsaixoKc+i21Szw0h1Xl9zePjq9ie+Z9KPyAcb1Y0+ne9xCDm2XTER3BhP8D
	 W8fEq2voUhmtg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6D2184482;
	Sat, 10 Aug 2024 06:33:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46D0B1BF860
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 06:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 343C060651
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 06:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oNpnYg-Qebx1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 06:33:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDA1660624
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDA1660624
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDA1660624
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 06:33:16 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-5bd13ea7604so595808a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Aug 2024 23:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723271594; x=1723876394;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ivtB6vEKatao+dFLxGzvtJBRCzWqw+HKse3c1GkoM7c=;
 b=oczlZVM5dqzh9Dbxlhsw8maz5bhz7QE7MFolmESel7VDg885LDpn93y4G2Bw2inxS0
 zyWLXAa3ZAYDw/Got+usenpcm2n1Bhw9PMcwptFDXH6mm7RuJpnf6uAINXR52CpmEDIe
 4sol8NQxzW50KCKfXUBUY1USF0g5pkuqme09VjKGiRka8ZBDr9UHbiYq3n6cmIIna96S
 P7I76Ulv+GwAqXyuSSFDuazDBPrp1SthjXD8+2DW2b4GZJnTGEe8L7Uu+OlJ3Gf1X7jq
 V6gb4diRk2zO1lxUDDntFoPvlDYot46I8upzaHr5zIyZt0kyLBY0qSXO9sA7x9I7gMFq
 mVoQ==
X-Gm-Message-State: AOJu0YzmhuNELay2m1OUv4+MbxWlc0KLFTnH30LaZAka7lgpys7dw+PG
 oLDxwALqykTmzDruHvHfWtLaRH4RlTKLdaCayS3CcfcT5YjOaEvDNDvljWAZINM=
X-Google-Smtp-Source: AGHT+IG7yaQ178sY4DrmMq62BQnjVK8VVC0D7E23o/obvVC8Pq76Mnsn+VBXKAOZ3/z46VjcZvJzOw==
X-Received: by 2002:a05:6402:51ca:b0:5af:37c0:b5bc with SMTP id
 4fb4d7f45d1cf-5bd0a610903mr2911396a12.28.1723271593732; 
 Fri, 09 Aug 2024 23:33:13 -0700 (PDT)
Received: from localhost ([37.48.50.18]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5bd1a60252fsm388886a12.87.2024.08.09.23.33.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Aug 2024 23:33:13 -0700 (PDT)
Date: Sat, 10 Aug 2024 08:33:11 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZrcJp5pfanGAICrb@nanopsycho.orion>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
 <ZrTli6UxMkzE31TH@nanopsycho.orion>
 <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
 <ZrX0znOhHFzafIuB@nanopsycho.orion>
 <ZrX33DvUqXGB2ork@mev-dev.igk.intel.com>
 <ZrX9mbsJD8VLEOs6@nanopsycho.orion>
 <ZrX//oyvlRUITMnb@mev-dev.igk.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrX//oyvlRUITMnb@mev-dev.igk.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1723271594; x=1723876394;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ivtB6vEKatao+dFLxGzvtJBRCzWqw+HKse3c1GkoM7c=;
 b=eFJoI8I8faZK2YeS4qe2iO8ArYvcTgip5/s3U0Ywb75PKY854UcNZWtoAqRa75ceF7
 65Gow7zS+ylLl6OuMiSi6EfctZvqO2xIwWdGaWFXsca2ZZEtDKaASj8JfbIR6t+FneCR
 HsYTeGkYp7I1nRPY5MnWPV8HhI0LzHTj3DzJR8QxJW0x4suOaYRm5b689yqewe50W7Mb
 +40PHBYWqrvr2WMOvo6VDN/fWHD8EFQQnF5ymihh7jR02bqPH2iCEM1QJy5LiQ0ib9+E
 qFcIgceoViweW6TeMkIxw1hRdejmXGRmR7O8MifC3IwvmTqBBIetG1kr/aHP8HVljoZN
 olmw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=eFJoI8I8
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

Fri, Aug 09, 2024 at 01:39:42PM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Fri, Aug 09, 2024 at 01:29:29PM +0200, Jiri Pirko wrote:
>> Fri, Aug 09, 2024 at 01:05:00PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >On Fri, Aug 09, 2024 at 12:51:58PM +0200, Jiri Pirko wrote:
>> >> Fri, Aug 09, 2024 at 07:13:34AM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >> >On Thu, Aug 08, 2024 at 05:34:35PM +0200, Jiri Pirko wrote:
>> >> >> Thu, Aug 08, 2024 at 09:20:09AM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >> >> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>> >> >> >range.
>> >> >> >
>> >> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >> >> >---
>> >> >> > .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
>> >> >> > drivers/net/ethernet/intel/ice/ice.h          |  8 +++
>> >> >> > drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
>> >> >> > 3 files changed, 76 insertions(+), 2 deletions(-)
>> >> >> >
>> >> >> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >> >> >index 29a5f822cb8b..bdc22ea13e0f 100644
>> >> >> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >> >> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >> >> >@@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>> >> >> > 	return 0;
>> >> >> > }
>> >> >> > 
>> >> >> >+static int
>> >> >> >+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
>> >> >> >+				 union devlink_param_value val,
>> >> >> >+				 struct netlink_ext_ack *extack)
>> >> >> >+{
>> >> >> >+	if (val.vu16 > ICE_MAX_MSIX) {
>> >> >> >+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
>> >> >> 
>> >> >> No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
>> >> >> That is the name of the param.
>> >> >> 
>> >> >
>> >> >Ok, will change both, thanks.
>> >> >
>> >> >> 
>> >> >> 
>> >> >> >+		return -EINVAL;
>> >> >> >+	}
>> >> >> >+
>> >> >> >+	return 0;
>> >> >> >+}
>> >> >> >+
>> >> >> >+static int
>> >> >> >+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
>> >> >> >+				 union devlink_param_value val,
>> >> >> >+				 struct netlink_ext_ack *extack)
>> >> >> >+{
>> >> >> >+	if (val.vu16 <= ICE_MIN_MSIX) {
>> >> >> >+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");
>> >> >> 
>> >> >> Same comment as for max goes here.
>> >> >> 
>> >> >> 
>> >> >> >+		return -EINVAL;
>> >> >> >+	}
>> >> >> >+
>> >> >> >+	return 0;
>> >> >> >+}
>> >> >> >+
>> >> >> > enum ice_param_id {
>> >> >> > 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> >> >> > 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>> >> >> >@@ -1535,6 +1561,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
>> >> >> > 			      ice_devlink_enable_iw_validate),
>> >> >> > };
>> >> >> > 
>> >> >> >+static const struct devlink_param ice_dvl_msix_params[] = {
>> >> >> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
>> >> >> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>> >> >> >+			      NULL, NULL, ice_devlink_msix_max_pf_validate),
>> >> >> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
>> >> >> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>> >> >> >+			      NULL, NULL, ice_devlink_msix_min_pf_validate),
>> >> >> >+};
>> >> >> >+
>> >> >> > static const struct devlink_param ice_dvl_sched_params[] = {
>> >> >> > 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>> >> >> > 			     "tx_scheduling_layers",
>> >> >> >@@ -1637,6 +1672,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
>> >> >> > int ice_devlink_register_params(struct ice_pf *pf)
>> >> >> > {
>> >> >> > 	struct devlink *devlink = priv_to_devlink(pf);
>> >> >> >+	union devlink_param_value value;
>> >> >> > 	struct ice_hw *hw = &pf->hw;
>> >> >> > 	int status;
>> >> >> > 
>> >> >> >@@ -1645,11 +1681,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
>> >> >> > 	if (status)
>> >> >> > 		return status;
>> >> >> > 
>> >> >> >+	status = devl_params_register(devlink, ice_dvl_msix_params,
>> >> >> >+				      ARRAY_SIZE(ice_dvl_msix_params));
>> >> >> >+	if (status)
>> >> >> >+		return status;
>> >> >> >+
>> >> >> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>> >> >> > 		status = devl_params_register(devlink, ice_dvl_sched_params,
>> >> >> > 					      ARRAY_SIZE(ice_dvl_sched_params));
>> >> >> >+	if (status)
>> >> >> >+		return status;
>> >> >> > 
>> >> >> >-	return status;
>> >> >> >+	value.vu16 = pf->msix.max;
>> >> >> >+	devl_param_driverinit_value_set(devlink,
>> >> >> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
>> >> >> >+					value);
>> >> >> >+	value.vu16 = pf->msix.min;
>> >> >> >+	devl_param_driverinit_value_set(devlink,
>> >> >> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
>> >> >> >+					value);
>> >> >> >+
>> >> >> >+	return 0;
>> >> >> > }
>> >> >> > 
>> >> >> > void ice_devlink_unregister_params(struct ice_pf *pf)
>> >> >> >@@ -1659,6 +1711,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
>> >> >> > 
>> >> >> > 	devl_params_unregister(devlink, ice_dvl_rdma_params,
>> >> >> > 			       ARRAY_SIZE(ice_dvl_rdma_params));
>> >> >> >+	devl_params_unregister(devlink, ice_dvl_msix_params,
>> >> >> >+			       ARRAY_SIZE(ice_dvl_msix_params));
>> >> >> > 
>> >> >> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>> >> >> > 		devl_params_unregister(devlink, ice_dvl_sched_params,
>> >> >> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> >> >> >index d6f80da30dec..a67456057c77 100644
>> >> >> >--- a/drivers/net/ethernet/intel/ice/ice.h
>> >> >> >+++ b/drivers/net/ethernet/intel/ice/ice.h
>> >> >> >@@ -95,6 +95,7 @@
>> >> >> > #define ICE_MIN_LAN_TXRX_MSIX	1
>> >> >> > #define ICE_MIN_LAN_OICR_MSIX	1
>> >> >> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>> >> >> >+#define ICE_MAX_MSIX		256
>> >> >> > #define ICE_FDIR_MSIX		2
>> >> >> > #define ICE_RDMA_NUM_AEQ_MSIX	4
>> >> >> > #define ICE_MIN_RDMA_MSIX	2
>> >> >> >@@ -545,6 +546,12 @@ struct ice_agg_node {
>> >> >> > 	u8 valid;
>> >> >> > };
>> >> >> > 
>> >> >> >+struct ice_pf_msix {
>> >> >> >+	u16 cur;
>> >> >> >+	u16 min;
>> >> >> >+	u16 max;
>> >> >> >+};
>> >> >> >+
>> >> >> > struct ice_pf {
>> >> >> > 	struct pci_dev *pdev;
>> >> >> > 	struct ice_adapter *adapter;
>> >> >> >@@ -615,6 +622,7 @@ struct ice_pf {
>> >> >> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
>> >> >> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
>> >> >> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>> >> >> >+	struct ice_pf_msix msix;
>> >> >> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
>> >> >> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
>> >> >> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
>> >> >> >diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
>> >> >> >index ad82ff7d1995..4e559fd6e49f 100644
>> >> >> >--- a/drivers/net/ethernet/intel/ice/ice_irq.c
>> >> >> >+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
>> >> >> >@@ -252,7 +252,19 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
>> >> >> > int ice_init_interrupt_scheme(struct ice_pf *pf)
>> >> >> > {
>> >> >> > 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
>> >> >> >-	int vectors, max_vectors;
>> >> >> >+	union devlink_param_value value;
>> >> >> >+	int vectors, max_vectors, err;
>> >> >> >+
>> >> >> >+	/* load default PF MSI-X range */
>> >> >> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>> >> >> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
>> >> >> >+					      &value);
>> >> >> 
>> >> >> If err is not 0, you have a bug in the driver. Perhaps it a about the
>> >> >> time to make this return void and add some WARN_ONs inside the function?
>> >> >> 
>> >> >
>> >> >err is not 0 when this param isn't found (not registered yet). It is a
>> >> >case when driver is probing, I want to have here default values and
>> >> >register it later. Instead of checking if it is probe context or reload
>> >> >context I am checking if param already exists. The param doesn't exist in
>> >> >probe, but exists in reload.
>> >> 
>> >> No, you have to make sure that you are using these values after they are
>> >> set. Please fix.
>> >> 
>> >
>> >I am not using value if this function returns error. If function returns
>> >error default values are set. The function
>> >devl_param_driverinit_value_get() is already checking if parameter
>> >exists. Why do you want me to check it before calling this function? Do
>> >you mean that calling it with not registered parameters is a problem? I
>> >don't see why it can be a problem.
>> 
>> If you call this for non-existing parameter, your driver flow is wrong.
>> That's my point.
>> 
>> 
>
>But this function is checking this scenerio (existing of parameter), why
>not to use it?

It's basically a sanity check. There should be WARN_ON, for sure. I will
send the patch to add it.


>
>The ice_init_interrupt_scheme is reused in probe and in reload. I don't
>think it is reasonable to have one for probe and one for reload. Simpler
>is to check if the context is probe or reload. Instead of checking sth

No, you should not care if you are in reload or probe, you code should
behave the same. In other words, you should get the param in a phase it
is ready for both probe and reload flows.


>else (I don't know, flag from upper layer, or flag set only in
>probe/reload) I am checking if parameters exsists. I don't think the
>flow is wrong here.
>
>> >
>> >> 
>> >> >
>> >> >> 
>> >> >> >+	pf->msix.min = err ? ICE_MIN_MSIX : value.vu16;
>> >> >> >+
>> >> >> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>> >> >> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
>> >> >> >+					      &value);
>> >> >> >+	pf->msix.max = err ? total_vectors / 2 : value.vu16;
>> >> >> > 
>> >> >> > 	vectors = ice_ena_msix_range(pf);
>> >> >> > 
>> >> >> >-- 
>> >> >> >2.42.0
>> >> >> >
