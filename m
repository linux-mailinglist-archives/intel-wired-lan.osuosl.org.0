Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9088852D50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 11:01:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A7A781F7A;
	Tue, 13 Feb 2024 10:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJZxIYWHIQbq; Tue, 13 Feb 2024 10:01:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 353F18208B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707818479;
	bh=7EauwmQsumQn/W1qFKYDmMTZDtcdBabKPCLzPG7yUR4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pJv4Qh+ymkexaOvHELfmNnZcI5HCWmLi/45BR74+7SMPU3DIw1zO/oeKmBVdIs1LI
	 NNJAUWervvUbJ61357bs8HjZTaIaDUeky+oUVE5N1LSzFkhpmMesqP7So5Tzd7D5Fk
	 Ncgy5pVm9QYUMcGglkUyw6Hj+WUTFlK8jBidgLAdrLbDPVtrVHV0USBItiAYqg6q2e
	 QEcbkMDnM2PuKPDUgod3f9MF5tVkgLPXbtUwlKob4hSHX1ZK/fMHULgmfCGRoCxokz
	 6lH69qMpozquOvOn2u7MdU3gmlh1+NzDIO4DxMNwpGDFYXzTfUMdwFIbE2lBgkGagC
	 SDFCY4wcgXAVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 353F18208B;
	Tue, 13 Feb 2024 10:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83E2F1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D9CD403FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSVIo6O0vw2y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 10:01:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E96C0400B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E96C0400B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E96C0400B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:01:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="24289308"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="24289308"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:01:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7421799"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:01:12 -0800
Date: Tue, 13 Feb 2024 11:01:08 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zcs95HiZz5g4QUwt@mev-dev>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-2-michal.swiatkowski@linux.intel.com>
 <ZcswSYA5GqtOb3ll@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcswSYA5GqtOb3ll@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707818476; x=1739354476;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=a6wpWKZPkcC/8/bakQZqtczHaevmk6f9hWDKjFCqlzQ=;
 b=MyZpRCZ0i5NkKrhBkA7VQpQtunYJ9RTx1HJvpAEQ3JFB7xye6RpmVwWs
 Qjixp1joMip+v4Hux+gHD4WAymwTQ0Q8wY6Z9663J0yxgaKQoY2NBDkeS
 BOhVVDxwDvT5xeBbCBwMNJxZCbk4Ge8QqJDOItUsS7Rjo/U+G+ZBqb91w
 pSiKu523+iMOLM14E9EOt1B6B8W87S+bKYsmlp+1dw1hdHe6fM2KAbfN9
 UBpdteK2zX9H2dV2C05x2lTX0LbgFgp7bX0TcdRB208xHUzBkIPbmjMio
 m61ioWuKT4T2KgSc/FZ0omCKVaUJLh6SvpySbjnHVvTQ7qUcWLGBxG4wJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MyZpRCZ0
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/7] ice: devlink PF MSI-X max
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

On Tue, Feb 13, 2024 at 10:03:05AM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 08:35:03AM CET, michal.swiatkowski@linux.intel.com wrote:
> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> >range.
> >
> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > drivers/net/ethernet/intel/ice/ice.h         |  8 ++
> > drivers/net/ethernet/intel/ice/ice_devlink.c | 82 ++++++++++++++++++++
> > drivers/net/ethernet/intel/ice/ice_irq.c     |  6 ++
> > 3 files changed, 96 insertions(+)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> >index c4127d5f2be3..24085f3c0966 100644
> >--- a/drivers/net/ethernet/intel/ice/ice.h
> >+++ b/drivers/net/ethernet/intel/ice/ice.h
> >@@ -94,6 +94,7 @@
> > #define ICE_MIN_LAN_TXRX_MSIX	1
> > #define ICE_MIN_LAN_OICR_MSIX	1
> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
> >+#define ICE_MAX_MSIX		256
> > #define ICE_FDIR_MSIX		2
> > #define ICE_RDMA_NUM_AEQ_MSIX	4
> > #define ICE_MIN_RDMA_MSIX	2
> >@@ -535,6 +536,12 @@ struct ice_agg_node {
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
> > 
> >@@ -604,6 +611,7 @@ struct ice_pf {
> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
> >+	struct ice_pf_msix msix;
> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >index cc717175178b..b82ff9556a4b 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >@@ -1603,6 +1603,78 @@ enum ice_param_id {
> > 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
> > };
> > 
> >+static int
> >+ice_devlink_msix_max_pf_get(struct devlink *devlink, u32 id,
> >+			    struct devlink_param_gset_ctx *ctx)
> >+{
> >+	struct ice_pf *pf = devlink_priv(devlink);
> >+
> >+	ctx->val.vu16 = pf->msix.max;
> >+
> >+	return 0;
> >+}
> >+
> >+static int
> >+ice_devlink_msix_max_pf_set(struct devlink *devlink, u32 id,
> >+			    struct devlink_param_gset_ctx *ctx)
> >+{
> >+	struct ice_pf *pf = devlink_priv(devlink);
> >+	u16 max = ctx->val.vu16;
> >+
> >+	pf->msix.max = max;
> 
> What's permanent about this exactly?
> 

I want to store the value here after driver reinit. Isn't it enough to
use this parameter type? Which one should be used for this purpose?

> 
> >+
> >+	return 0;
> >+}
> >+
> >+static int
> >+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
> >+				 union devlink_param_value val,
> >+				 struct netlink_ext_ack *extack)
> >+{
> >+	if (val.vu16 > ICE_MAX_MSIX) {
> >+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
> >+		return -EINVAL;
> >+	}
> >+
> >+	return 0;
> >+}
> >+
> >+static int
> >+ice_devlink_msix_min_pf_get(struct devlink *devlink, u32 id,
> >+			    struct devlink_param_gset_ctx *ctx)
> >+{
> >+	struct ice_pf *pf = devlink_priv(devlink);
> >+
> >+	ctx->val.vu16 = pf->msix.min;
> >+
> >+	return 0;
> >+}
> >+
> >+static int
> >+ice_devlink_msix_min_pf_set(struct devlink *devlink, u32 id,
> >+			    struct devlink_param_gset_ctx *ctx)
> >+{
> >+	struct ice_pf *pf = devlink_priv(devlink);
> >+	u16 min = ctx->val.vu16;
> >+
> >+	pf->msix.min = min;
> 
> What's permanent about this exactly?
>

The same as with max.

> 
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
> >+		return -EINVAL;
> >+	}
> >+
> >+	return 0;
> >+}
> >+
> > static const struct devlink_param ice_devlink_params[] = {
> > 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> > 			      ice_devlink_enable_roce_get,
> >@@ -1618,6 +1690,16 @@ static const struct devlink_param ice_devlink_params[] = {
> > 			     ice_devlink_loopback_get,
> > 			     ice_devlink_loopback_set,
> > 			     ice_devlink_loopback_validate),
> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
> >+			      BIT(DEVLINK_PARAM_CMODE_PERMANENT),
> >+			      ice_devlink_msix_max_pf_get,
> >+			      ice_devlink_msix_max_pf_set,
> >+			      ice_devlink_msix_max_pf_validate),
> >+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
> >+			      BIT(DEVLINK_PARAM_CMODE_PERMANENT),
> 
> ....
> 
> 
> pw-bot: cr
> 
> 
> >+			      ice_devlink_msix_min_pf_get,
> >+			      ice_devlink_msix_min_pf_set,
> >+			      ice_devlink_msix_min_pf_validate),
> > };
> > 
> > static void ice_devlink_free(void *devlink_ptr)
> >diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> >index ad82ff7d1995..fa7178a68b94 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_irq.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> >@@ -254,6 +254,12 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
> > 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
> > 	int vectors, max_vectors;
> > 
> >+	/* load default PF MSI-X range */
> >+	if (!pf->msix.min)
> >+		pf->msix.min = ICE_MIN_MSIX;
> >+	if (!pf->msix.max)
> >+		pf->msix.max = total_vectors / 2;
> >+
> > 	vectors = ice_ena_msix_range(pf);
> > 
> > 	if (vectors < 0)
> >-- 
> >2.42.0
> >
> >
