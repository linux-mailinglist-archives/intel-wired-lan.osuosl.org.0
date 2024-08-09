Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BE994C985
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 07:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FC2080E35;
	Fri,  9 Aug 2024 05:15:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1cUlhMu8Nm-m; Fri,  9 Aug 2024 05:15:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AFA080DEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723180522;
	bh=SePduZtX54XefWJJejuRHZIn6q3kqmXNtrATaH2b1L0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g//HNYuk6nbc2Kx2ntC2VnTFVzYZVffidUiMRdLt0gmFQKKxaB2fThqT6Tu9pvSIv
	 ebjUAf6iDV4ORtF+B36Y5PZf/8irmUwtGlAM9wosNzQi1m6w22r1NRKUW9cx9pQmND
	 QEnbRbMSzqhjH7rPtweT7A8sITgk882Bw+SabXCfPy5O+pUKW9SBS7I4DB2croX4to
	 zElNLJPubZGFFjOgtfFGxXQ2YM/Weve+9am0cfHIVB8u9/+UeYgH2x6q4fAMJfyNQ1
	 svL4aXf3vlxh8lMfVlxjUKP7sViQ731wa5+7YVVbiBLLlDPSE5Qh4cDVEXrdGvIcFC
	 G6R3bi9J42inQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AFA080DEA;
	Fri,  9 Aug 2024 05:15:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FC621BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99574605EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:15:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkH79vI02Zzj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 05:15:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 73F94605AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73F94605AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73F94605AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:15:19 +0000 (UTC)
X-CSE-ConnectionGUID: lvDiBvXQT46R+paaZbc3VA==
X-CSE-MsgGUID: jVywbRpvTyq+Roxd3LB8bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21492340"
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="21492340"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 22:15:17 -0700
X-CSE-ConnectionGUID: jAQKXdlkS9WEe1atLEcwug==
X-CSE-MsgGUID: D60Qt2KaSRylvLe1usIxlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="88329368"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 22:15:15 -0700
Date: Fri, 9 Aug 2024 07:13:34 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
 <ZrTli6UxMkzE31TH@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrTli6UxMkzE31TH@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723180519; x=1754716519;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Lz8qQfjRWT4yd7bZBAL0DYM2L36abTRyWpTIosR9qsw=;
 b=ZPEQjYJ4gVMh2jUAOxPqgnPqXi5lV/DY5q86qukMEIiXI9IpQsiNZx7U
 GWzOow3dOU16iuLjiz3GhvNmde0rz1Tg5+f6Vt5eqm+T96nByCbXKTyi1
 629391LUDZRut679pwK7oGDgbrxxvh8wPJvPBLh+whpLsfqDm/0yqzd8N
 TLWvhEMSuyXjd8tzxkvRSR1P4OwTGnhL6v1c3GZ9rNkAkPNyoDaTXJa9U
 G44AnEPigVk7EI1ndeTXvbyqWnB7dDIVpxSh+F4jeDG9X5ND0v+uDYCbl
 HZmdvVYHqBadKhEsY8cqQy05ufOmpKYv65F7T7L06v/oZvId52sxrl6xA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZPEQjYJ4
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

On Thu, Aug 08, 2024 at 05:34:35PM +0200, Jiri Pirko wrote:
> Thu, Aug 08, 2024 at 09:20:09AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> >range.
> >
> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
> > drivers/net/ethernet/intel/ice/ice.h          |  8 +++
> > drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
> > 3 files changed, 76 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >index 29a5f822cb8b..bdc22ea13e0f 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >@@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
> > 	return 0;
> > }
> > 
> >+static int
> >+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
> >+				 union devlink_param_value val,
> >+				 struct netlink_ext_ack *extack)
> >+{
> >+	if (val.vu16 > ICE_MAX_MSIX) {
> >+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
> 
> No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
> That is the name of the param.
> 

Ok, will change both, thanks.

> 
> 
> >+		return -EINVAL;
> >+	}
> >+
> >+	return 0;
> >+}
> >+
> >+static int
> >+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> >+				 union devlink_param_value val,
> >+				 struct netlink_ext_ack *extack)
> >+{
> >+	if (val.vu16 <= ICE_MIN_MSIX) {
> >+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");
> 
> Same comment as for max goes here.
> 
> 
> >+		return -EINVAL;
> >+	}
> >+
> >+	return 0;
> >+}
> >+
> > enum ice_param_id {
> > 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> > 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> >@@ -1535,6 +1561,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
> > 			      ice_devlink_enable_iw_validate),
> > };
> > 
> >+static const struct devlink_param ice_dvl_msix_params[] = {
> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> >+			      NULL, NULL, ice_devlink_msix_max_pf_validate),
> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
> >+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> >+			      NULL, NULL, ice_devlink_msix_min_pf_validate),
> >+};
> >+
> > static const struct devlink_param ice_dvl_sched_params[] = {
> > 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> > 			     "tx_scheduling_layers",
> >@@ -1637,6 +1672,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
> > int ice_devlink_register_params(struct ice_pf *pf)
> > {
> > 	struct devlink *devlink = priv_to_devlink(pf);
> >+	union devlink_param_value value;
> > 	struct ice_hw *hw = &pf->hw;
> > 	int status;
> > 
> >@@ -1645,11 +1681,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
> > 	if (status)
> > 		return status;
> > 
> >+	status = devl_params_register(devlink, ice_dvl_msix_params,
> >+				      ARRAY_SIZE(ice_dvl_msix_params));
> >+	if (status)
> >+		return status;
> >+
> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> > 		status = devl_params_register(devlink, ice_dvl_sched_params,
> > 					      ARRAY_SIZE(ice_dvl_sched_params));
> >+	if (status)
> >+		return status;
> > 
> >-	return status;
> >+	value.vu16 = pf->msix.max;
> >+	devl_param_driverinit_value_set(devlink,
> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
> >+					value);
> >+	value.vu16 = pf->msix.min;
> >+	devl_param_driverinit_value_set(devlink,
> >+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
> >+					value);
> >+
> >+	return 0;
> > }
> > 
> > void ice_devlink_unregister_params(struct ice_pf *pf)
> >@@ -1659,6 +1711,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
> > 
> > 	devl_params_unregister(devlink, ice_dvl_rdma_params,
> > 			       ARRAY_SIZE(ice_dvl_rdma_params));
> >+	devl_params_unregister(devlink, ice_dvl_msix_params,
> >+			       ARRAY_SIZE(ice_dvl_msix_params));
> > 
> > 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> > 		devl_params_unregister(devlink, ice_dvl_sched_params,
> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> >index d6f80da30dec..a67456057c77 100644
> >--- a/drivers/net/ethernet/intel/ice/ice.h
> >+++ b/drivers/net/ethernet/intel/ice/ice.h
> >@@ -95,6 +95,7 @@
> > #define ICE_MIN_LAN_TXRX_MSIX	1
> > #define ICE_MIN_LAN_OICR_MSIX	1
> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
> >+#define ICE_MAX_MSIX		256
> > #define ICE_FDIR_MSIX		2
> > #define ICE_RDMA_NUM_AEQ_MSIX	4
> > #define ICE_MIN_RDMA_MSIX	2
> >@@ -545,6 +546,12 @@ struct ice_agg_node {
> > 	u8 valid;
> > };
> > 
> >+struct ice_pf_msix {
> >+	u16 cur;
> >+	u16 min;
> >+	u16 max;
> >+};
> >+
> > struct ice_pf {
> > 	struct pci_dev *pdev;
> > 	struct ice_adapter *adapter;
> >@@ -615,6 +622,7 @@ struct ice_pf {
> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
> >+	struct ice_pf_msix msix;
> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
> >diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> >index ad82ff7d1995..4e559fd6e49f 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_irq.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> >@@ -252,7 +252,19 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
> > int ice_init_interrupt_scheme(struct ice_pf *pf)
> > {
> > 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
> >-	int vectors, max_vectors;
> >+	union devlink_param_value value;
> >+	int vectors, max_vectors, err;
> >+
> >+	/* load default PF MSI-X range */
> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
> >+					      &value);
> 
> If err is not 0, you have a bug in the driver. Perhaps it a about the
> time to make this return void and add some WARN_ONs inside the function?
> 

err is not 0 when this param isn't found (not registered yet). It is a
case when driver is probing, I want to have here default values and
register it later. Instead of checking if it is probe context or reload
context I am checking if param already exists. The param doesn't exist in
probe, but exists in reload.

> 
> >+	pf->msix.min = err ? ICE_MIN_MSIX : value.vu16;
> >+
> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
> >+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
> >+					      &value);
> >+	pf->msix.max = err ? total_vectors / 2 : value.vu16;
> > 
> > 	vectors = ice_ena_msix_range(pf);
> > 
> >-- 
> >2.42.0
> >
