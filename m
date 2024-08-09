Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3C194CF74
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 13:42:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9874C40889;
	Fri,  9 Aug 2024 11:42:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6UwZ01cDAlJ6; Fri,  9 Aug 2024 11:42:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CA7740935
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723203730;
	bh=DJbgHhNDrTyNe4DqZtZSKl+53i/y/cR93zXPNvW2I98=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NQ27m8Ae4xjiKLG3FEqLaXUkA5NvVA8/l8Af4btZofX5uCDZaorTOUf3d6AAFy32S
	 n6/jmset7p1xEO3eol16Hr2z7GrHkjfM86H5aKx0hUNtrdX13PYt1Toic7zu0ChaTA
	 JPLFxN+WgxMOA5/WsguxKxuqc+Xt5mXzmfLqKiE5QkYGZ9j1vkKNBFPtfKGPMzI+jT
	 6J0WeW53byvV1co1MhxTyRHQ8rP15Bkapu6h7tZuz0Y5hEcFcrLB8P3nootklfeL9T
	 WshJLy0Fmyi5wBZt1oCrBT/YR+HBeb1KMmvPzvv1Lm7AuXQWoEsr9YIiW+nifWhLko
	 w3/etTrQEJ6+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CA7740935;
	Fri,  9 Aug 2024 11:42:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BD151BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 11:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 047FA40879
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 11:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nW8iUZmzy8lD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 11:42:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5D59E4076F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D59E4076F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D59E4076F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 11:42:06 +0000 (UTC)
X-CSE-ConnectionGUID: 7M0XyddnRjGD+Mxrowx+1A==
X-CSE-MsgGUID: 8OjW7kBuTOuODvs6IB1DAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21548289"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="21548289"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 04:42:06 -0700
X-CSE-ConnectionGUID: g2ZQ+RRGQViu/BuVcLexkg==
X-CSE-MsgGUID: q4e2HUQKRdah2Y4FRnLdYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="62499325"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 04:42:02 -0700
Date: Fri, 9 Aug 2024 13:39:42 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZrX//oyvlRUITMnb@mev-dev.igk.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
 <ZrTli6UxMkzE31TH@nanopsycho.orion>
 <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
 <ZrX0znOhHFzafIuB@nanopsycho.orion>
 <ZrX33DvUqXGB2ork@mev-dev.igk.intel.com>
 <ZrX9mbsJD8VLEOs6@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrX9mbsJD8VLEOs6@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723203726; x=1754739726;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ENCiLZw/mlwwf0W3NhYvki0vgpuH6IhKSjrj7ev108o=;
 b=Ffg/IA6+/CRFCKPziEbWbRSB/qOlSUuJnqxh+LC28VlKteJWqNPRvpOm
 wugp886YDy1zccmYcFEgDSRfzz7Cfhk0Vp1diVjHFLzKfGk5zot9mAI97
 +jtAfIpjKQ7pZPy6Kb92jfZyitKvrSQyh/7cdr0hxeCtXj2+al1nnNUNc
 IzzPaPQd8saHGDbW9/y+yBlJmEkWGDl7Qy9sQE0CyWNj6Vjc5ztR50rXQ
 PHcIRCki7/rFGFe1XwYm7PnV4D8m1ZZP+ASdJbIHA6a8fJEYvqBoRXonD
 ahF+Duja6TnvVG4XxcTROHLKwnavfHK5iuyJ8VVX5GNF7AWuk6XM3GqoX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ffg/IA6+
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

On Fri, Aug 09, 2024 at 01:29:29PM +0200, Jiri Pirko wrote:
> Fri, Aug 09, 2024 at 01:05:00PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Fri, Aug 09, 2024 at 12:51:58PM +0200, Jiri Pirko wrote:
> >> Fri, Aug 09, 2024 at 07:13:34AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >On Thu, Aug 08, 2024 at 05:34:35PM +0200, Jiri Pirko wrote:
> >> >> Thu, Aug 08, 2024 at 09:20:09AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> >> >> >range.
> >> >> >
> >> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> >> >---
> >> >> > .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
> >> >> > drivers/net/ethernet/intel/ice/ice.h          |  8 +++
> >> >> > drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
> >> >> > 3 files changed, 76 insertions(+), 2 deletions(-)
> >> >> >
> >> >> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >> >> >index 29a5f822cb8b..bdc22ea13e0f 100644
> >> >> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >> >> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >> >> >@@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
> >> >> > 	return 0;
> >> >> > }
> >> >> > 
> >> >> >+static int
> >> >> >+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
> >> >> >+				 union devlink_param_value val,
> >> >> >+				 struct netlink_ext_ack *extack)
> >> >> >+{
> >> >> >+	if (val.vu16 > ICE_MAX_MSIX) {
> >> >> >+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
> >> >> 
> >> >> No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
> >> >> That is the name of the param.
> >> >> 
> >> >
> >> >Ok, will change both, thanks.
> >> >
> >> >> 
> >> >> 
> >> >> >+		return -EINVAL;
> >> >> >+	}
> >> >> >+
> >> >> >+	return 0;
> >> >> >+}
> >> >> >+
> >> >> >+static int
> >> >> >+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> >> >> >+				 union devlink_param_value val,
> >> >> >+				 struct netlink_ext_ack *extack)
> >> >> >+{
> >> >> >+	if (val.vu16 <= ICE_MIN_MSIX) {
> >> >> >+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");
> >> >> 
> >> >> Same comment as for max goes here.
> >> >> 
> >> >> 
> >> >> >+		return -EINVAL;
> >> >> >+	}
> >> >> >+
> >> >> >+	return 0;
> >> >> >+}
> >> >> >+
> >> >> > enum ice_param_id {
> >> >> > 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> >> >> > 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> >> >> >@@ -1535,6 +1561,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
> >> >> > 			      ice_devlink_enable_iw_validate),
> >> >> > };
> >> >> > 
> >> >> >+static const struct devlink_param ice_dvl_msix_params[] = {
> >> >> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
> >> >> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> >> >> >+			      NULL, NULL, ice_devlink_msix_max_pf_validate),
> >> >> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
> >> >> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> >> >> >+			      NULL, NULL, ice_devlink_msix_min_pf_validate),
> >> >> >+};
> >> >> >+
> >> >> > static const struct devlink_param ice_dvl_sched_params[] = {
> >> >> > 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> >> >> > 			     "tx_scheduling_layers",
> >> >> >@@ -1637,6 +1672,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
> >> >> > int ice_devlink_register_params(struct ice_pf *pf)
> >> >> > {
> >> >> > 	struct devlink *devlink = priv_to_devlink(pf);
> >> >> >+	union devlink_param_value value;
> >> >> > 	struct ice_hw *hw = &pf->hw;
> >> >> > 	int status;
> >> >> > 
> >> >> >@@ -1645,11 +1681,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
> >> >> > 	if (status)
> >> >> > 		return status;
> >> >> > 
> >> >> >+	status = devl_params_register(devlink, ice_dvl_msix_params,
> >> >> >+				      ARRAY_SIZE(ice_dvl_msix_params));
> >> >> >+	if (status)
> >> >> >+		return status;
> >> >> >+
> >> >> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> >> >> > 		status = devl_params_register(devlink, ice_dvl_sched_params,
> >> >> > 					      ARRAY_SIZE(ice_dvl_sched_params));
> >> >> >+	if (status)
> >> >> >+		return status;
> >> >> > 
> >> >> >-	return status;
> >> >> >+	value.vu16 = pf->msix.max;
> >> >> >+	devl_param_driverinit_value_set(devlink,
> >> >> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
> >> >> >+					value);
> >> >> >+	value.vu16 = pf->msix.min;
> >> >> >+	devl_param_driverinit_value_set(devlink,
> >> >> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
> >> >> >+					value);
> >> >> >+
> >> >> >+	return 0;
> >> >> > }
> >> >> > 
> >> >> > void ice_devlink_unregister_params(struct ice_pf *pf)
> >> >> >@@ -1659,6 +1711,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
> >> >> > 
> >> >> > 	devl_params_unregister(devlink, ice_dvl_rdma_params,
> >> >> > 			       ARRAY_SIZE(ice_dvl_rdma_params));
> >> >> >+	devl_params_unregister(devlink, ice_dvl_msix_params,
> >> >> >+			       ARRAY_SIZE(ice_dvl_msix_params));
> >> >> > 
> >> >> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> >> >> > 		devl_params_unregister(devlink, ice_dvl_sched_params,
> >> >> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> >> >> >index d6f80da30dec..a67456057c77 100644
> >> >> >--- a/drivers/net/ethernet/intel/ice/ice.h
> >> >> >+++ b/drivers/net/ethernet/intel/ice/ice.h
> >> >> >@@ -95,6 +95,7 @@
> >> >> > #define ICE_MIN_LAN_TXRX_MSIX	1
> >> >> > #define ICE_MIN_LAN_OICR_MSIX	1
> >> >> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
> >> >> >+#define ICE_MAX_MSIX		256
> >> >> > #define ICE_FDIR_MSIX		2
> >> >> > #define ICE_RDMA_NUM_AEQ_MSIX	4
> >> >> > #define ICE_MIN_RDMA_MSIX	2
> >> >> >@@ -545,6 +546,12 @@ struct ice_agg_node {
> >> >> > 	u8 valid;
> >> >> > };
> >> >> > 
> >> >> >+struct ice_pf_msix {
> >> >> >+	u16 cur;
> >> >> >+	u16 min;
> >> >> >+	u16 max;
> >> >> >+};
> >> >> >+
> >> >> > struct ice_pf {
> >> >> > 	struct pci_dev *pdev;
> >> >> > 	struct ice_adapter *adapter;
> >> >> >@@ -615,6 +622,7 @@ struct ice_pf {
> >> >> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
> >> >> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> >> >> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
> >> >> >+	struct ice_pf_msix msix;
> >> >> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> >> >> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
> >> >> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
> >> >> >diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> >> >> >index ad82ff7d1995..4e559fd6e49f 100644
> >> >> >--- a/drivers/net/ethernet/intel/ice/ice_irq.c
> >> >> >+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> >> >> >@@ -252,7 +252,19 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
> >> >> > int ice_init_interrupt_scheme(struct ice_pf *pf)
> >> >> > {
> >> >> > 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
> >> >> >-	int vectors, max_vectors;
> >> >> >+	union devlink_param_value value;
> >> >> >+	int vectors, max_vectors, err;
> >> >> >+
> >> >> >+	/* load default PF MSI-X range */
> >> >> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
> >> >> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
> >> >> >+					      &value);
> >> >> 
> >> >> If err is not 0, you have a bug in the driver. Perhaps it a about the
> >> >> time to make this return void and add some WARN_ONs inside the function?
> >> >> 
> >> >
> >> >err is not 0 when this param isn't found (not registered yet). It is a
> >> >case when driver is probing, I want to have here default values and
> >> >register it later. Instead of checking if it is probe context or reload
> >> >context I am checking if param already exists. The param doesn't exist in
> >> >probe, but exists in reload.
> >> 
> >> No, you have to make sure that you are using these values after they are
> >> set. Please fix.
> >> 
> >
> >I am not using value if this function returns error. If function returns
> >error default values are set. The function
> >devl_param_driverinit_value_get() is already checking if parameter
> >exists. Why do you want me to check it before calling this function? Do
> >you mean that calling it with not registered parameters is a problem? I
> >don't see why it can be a problem.
> 
> If you call this for non-existing parameter, your driver flow is wrong.
> That's my point.
> 
> 

But this function is checking this scenerio (existing of parameter), why
not to use it?

The ice_init_interrupt_scheme is reused in probe and in reload. I don't
think it is reasonable to have one for probe and one for reload. Simpler
is to check if the context is probe or reload. Instead of checking sth
else (I don't know, flag from upper layer, or flag set only in
probe/reload) I am checking if parameters exsists. I don't think the
flow is wrong here.

> >
> >> 
> >> >
> >> >> 
> >> >> >+	pf->msix.min = err ? ICE_MIN_MSIX : value.vu16;
> >> >> >+
> >> >> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
> >> >> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
> >> >> >+					      &value);
> >> >> >+	pf->msix.max = err ? total_vectors / 2 : value.vu16;
> >> >> > 
> >> >> > 	vectors = ice_ena_msix_range(pf);
> >> >> > 
> >> >> >-- 
> >> >> >2.42.0
> >> >> >
