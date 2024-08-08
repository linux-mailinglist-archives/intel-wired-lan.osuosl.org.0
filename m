Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F3594C18A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 17:34:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 453AF60AC5;
	Thu,  8 Aug 2024 15:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMCuvVvKG4EU; Thu,  8 Aug 2024 15:34:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3246C60AC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723131286;
	bh=deR2cTN5hN7kQ/Mmgkv7kVEs+fw9NCwiKQ9xQIlHe+o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ammkkPz2uIyRLB2Avuek4ezGsT/97T+R8np86ziclCvaAEvsaOmDehotb57+4wK7+
	 RPnh/Ad7sHmIeMjj1vFMIuvfIAeOsUpoVb4avQCc+EjodaRHueEWCSTPd8eDmpo680
	 EWYqcdcPAfHuG/mlhKT6yZGSdCx2YwTQmEvCSJ1OUa7StR/bndtgA9oQC/3Yd4U554
	 6ovTvri3ULT6fmDgcBJfmy/EBoPXewW/BMGmMEvtZW2x/THBGqk01412IItgBBggp9
	 8KP7rB3Ih/mR0QekoLTZSt1cz/GG1OqAisTmEhhzTzdb3At369fudxdtKPKAzA7LYv
	 76sIyv3rqBxQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3246C60AC7;
	Thu,  8 Aug 2024 15:34:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 615681BF291
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DF5840E0E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:34:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CW7-UGwuyYqI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 15:34:42 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CEF9E40459
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEF9E40459
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEF9E40459
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:34:39 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-5a156557029so1353507a12.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Aug 2024 08:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723131278; x=1723736078;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=deR2cTN5hN7kQ/Mmgkv7kVEs+fw9NCwiKQ9xQIlHe+o=;
 b=pbZePEUQgbReepcwRBAWOrU6tCJ35u+8BP8ZxuiFb2M3KBqJklsQafmhIl0LNa6byG
 At/09XjeLVKAF9NSYJNIEk3Tlaws+wAPxqGcLryCdZbdNe5+f5Y+plwcZ+PdZ5XgI0aq
 Irev9EIbDNCput9XnbsANvGXl7yeRuaOdaZzTCGbvv2YoLXVw0G8lfQiKm3wj03dw2df
 p0Hl6x7NtUFojIC2RR3Smu6mo9qgXxrJ6p88oLVjRHpubaN8r4523tCHSKjSBaLgczb6
 Oyp/VJQHCV1ZBLB+UZd/7wSBUiEHyBcshUVe5Ho9XEy/ff2xIR5oscF2MGeZx8i7kGtz
 yxCg==
X-Gm-Message-State: AOJu0YyNOblisgBKXif5GNpuvRBraXckhgxKulJfH8sDPcpcJK3MvckU
 oMfCTyrBYy9M7bgBxpIDsffkMpuMjxktqnbTjUZcS8neKFild48apxkaMOuNr+M=
X-Google-Smtp-Source: AGHT+IGmvRB1EJlB4iKqzT595KKSJ3AT7HSTYqgUCs5wTvQ1rP7yMg8+uON+zirQWeNbJkdPP9aaOw==
X-Received: by 2002:a17:907:d2c5:b0:a77:c95e:9b1c with SMTP id
 a640c23a62f3a-a8090d7affdmr174071866b.27.1723131277656; 
 Thu, 08 Aug 2024 08:34:37 -0700 (PDT)
Received: from localhost ([213.235.133.38]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a7dc9c6603csm754521466b.97.2024.08.08.08.34.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2024 08:34:36 -0700 (PDT)
Date: Thu, 8 Aug 2024 17:34:35 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZrTli6UxMkzE31TH@nanopsycho.orion>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1723131278; x=1723736078;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=deR2cTN5hN7kQ/Mmgkv7kVEs+fw9NCwiKQ9xQIlHe+o=;
 b=DYByAKKFVzKjMadzwRXXHwbvPqdCoLRDllNzBtNBFPeZXNelRsAbJxWstP4+3K19Gs
 TysgyH+hETMvqGdqGk326/nm0oTJuigNWHKNOsr7Qdba6OuMnvp9dhTnNOrwzidNWP0m
 qEPN642xDEAmKRMCLQu+PWk5096cpp9osVabBS+DDRG9uALPBfa+JUgF11U8gfMr4p0C
 fx7d3i9nrIXUcjZQEMybzNd52EkvVfFh0n26zTWJKgOF4u3QYl8XdAnWTxDAS7uwODVb
 WqhQGBIh2FLC9pBr0zY+IbYYBxEXbIeXnbM93FGD4RuSZbbg88iUu16iUnQSy0Uox54h
 zOdw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=DYByAKKF
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

Thu, Aug 08, 2024 at 09:20:09AM CEST, michal.swiatkowski@linux.intel.com wrote:
>Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>range.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice.h          |  8 +++
> drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
> 3 files changed, 76 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>index 29a5f822cb8b..bdc22ea13e0f 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>@@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>+static int
>+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
>+				 union devlink_param_value val,
>+				 struct netlink_ext_ack *extack)
>+{
>+	if (val.vu16 > ICE_MAX_MSIX) {
>+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");

No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
That is the name of the param.



>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
>+static int
>+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
>+				 union devlink_param_value val,
>+				 struct netlink_ext_ack *extack)
>+{
>+	if (val.vu16 <= ICE_MIN_MSIX) {
>+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");

Same comment as for max goes here.


>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
> enum ice_param_id {
> 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>@@ -1535,6 +1561,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
> 			      ice_devlink_enable_iw_validate),
> };
> 
>+static const struct devlink_param ice_dvl_msix_params[] = {
>+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
>+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>+			      NULL, NULL, ice_devlink_msix_max_pf_validate),
>+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
>+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>+			      NULL, NULL, ice_devlink_msix_min_pf_validate),
>+};
>+
> static const struct devlink_param ice_dvl_sched_params[] = {
> 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> 			     "tx_scheduling_layers",
>@@ -1637,6 +1672,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
> int ice_devlink_register_params(struct ice_pf *pf)
> {
> 	struct devlink *devlink = priv_to_devlink(pf);
>+	union devlink_param_value value;
> 	struct ice_hw *hw = &pf->hw;
> 	int status;
> 
>@@ -1645,11 +1681,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
> 	if (status)
> 		return status;
> 
>+	status = devl_params_register(devlink, ice_dvl_msix_params,
>+				      ARRAY_SIZE(ice_dvl_msix_params));
>+	if (status)
>+		return status;
>+
> 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> 		status = devl_params_register(devlink, ice_dvl_sched_params,
> 					      ARRAY_SIZE(ice_dvl_sched_params));
>+	if (status)
>+		return status;
> 
>-	return status;
>+	value.vu16 = pf->msix.max;
>+	devl_param_driverinit_value_set(devlink,
>+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
>+					value);
>+	value.vu16 = pf->msix.min;
>+	devl_param_driverinit_value_set(devlink,
>+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
>+					value);
>+
>+	return 0;
> }
> 
> void ice_devlink_unregister_params(struct ice_pf *pf)
>@@ -1659,6 +1711,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
> 
> 	devl_params_unregister(devlink, ice_dvl_rdma_params,
> 			       ARRAY_SIZE(ice_dvl_rdma_params));
>+	devl_params_unregister(devlink, ice_dvl_msix_params,
>+			       ARRAY_SIZE(ice_dvl_msix_params));
> 
> 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> 		devl_params_unregister(devlink, ice_dvl_sched_params,
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index d6f80da30dec..a67456057c77 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -95,6 +95,7 @@
> #define ICE_MIN_LAN_TXRX_MSIX	1
> #define ICE_MIN_LAN_OICR_MSIX	1
> #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>+#define ICE_MAX_MSIX		256
> #define ICE_FDIR_MSIX		2
> #define ICE_RDMA_NUM_AEQ_MSIX	4
> #define ICE_MIN_RDMA_MSIX	2
>@@ -545,6 +546,12 @@ struct ice_agg_node {
> 	u8 valid;
> };
> 
>+struct ice_pf_msix {
>+	u16 cur;
>+	u16 min;
>+	u16 max;
>+};
>+
> struct ice_pf {
> 	struct pci_dev *pdev;
> 	struct ice_adapter *adapter;
>@@ -615,6 +622,7 @@ struct ice_pf {
> 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
> 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>+	struct ice_pf_msix msix;
> 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> 	u16 num_lan_tx;		/* num LAN Tx queues setup */
> 	u16 num_lan_rx;		/* num LAN Rx queues setup */
>diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
>index ad82ff7d1995..4e559fd6e49f 100644
>--- a/drivers/net/ethernet/intel/ice/ice_irq.c
>+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
>@@ -252,7 +252,19 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
> int ice_init_interrupt_scheme(struct ice_pf *pf)
> {
> 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
>-	int vectors, max_vectors;
>+	union devlink_param_value value;
>+	int vectors, max_vectors, err;
>+
>+	/* load default PF MSI-X range */
>+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
>+					      &value);

If err is not 0, you have a bug in the driver. Perhaps it a about the
time to make this return void and add some WARN_ONs inside the function?


>+	pf->msix.min = err ? ICE_MIN_MSIX : value.vu16;
>+
>+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
>+					      &value);
>+	pf->msix.max = err ? total_vectors / 2 : value.vu16;
> 
> 	vectors = ice_ena_msix_range(pf);
> 
>-- 
>2.42.0
>
