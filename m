Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EA1852FD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:51:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5714740CB3;
	Tue, 13 Feb 2024 11:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y2Lyt39NG42t; Tue, 13 Feb 2024 11:51:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42E6A40482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707825083;
	bh=jLW4b9HW+XWNKXKllSXN2kgG3NiuVZ0glYw5AkkFB24=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bkp8U/o1BBshQvPM6aSe4zEHrDrorXbEUKKGOrgf7RewrioiMfO2LhTf3co2O5h4A
	 oLY03WCbmGoLibmxxL9k8Ax+wNg2dgtkRDTu0Z6S4Wt9BM3wRncwyIL0omiJDW+wze
	 pdfMC94er1LQvZbrKjeQmBvMx54j94Z4JIXZ9ZaOBv7nyQF+w6nc91Uk9P650PWIpR
	 fbsbd0AwoFDY9YX5BLVS538fss2MqvCDUa7plqMgO6z2+cGrCTsAmvrsuI3ZboZRDg
	 zi6t7C5PHNOH2wza7C7q/PYDr7Rk5Q7EMZEtM0FyGxigZ1hDOQ1KOzA7KfruNsoZn2
	 xWn536xMqokHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42E6A40482;
	Tue, 13 Feb 2024 11:51:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9C01BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7860180C4B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fEeG26al0yKh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:51:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 90CDE80BD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90CDE80BD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90CDE80BD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:51:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1680941"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1680941"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 03:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="7507615"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 03:51:17 -0800
Date: Tue, 13 Feb 2024 12:51:09 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZctXrfWiYkopStMt@mev-dev>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-2-michal.swiatkowski@linux.intel.com>
 <ZcswSYA5GqtOb3ll@nanopsycho> <Zcs95HiZz5g4QUwt@mev-dev>
 <ZctTL05gEf_7XbhX@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZctTL05gEf_7XbhX@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707825080; x=1739361080;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uS4M8+vsGmkHQK0cf9nAqcZUWp7CBWnXPvPw6e0tukM=;
 b=EYEwYK5Q/8OTx7973NW3xJA8X+Sz/0/oE7pRI2bPXBivLNrwGjsF+Owf
 KZA1mM0vK4YjUzXAEDYYXDpMkCA6KK3Qt8eBzId3ijLZTJ9g9qzyLutGq
 PQ8moumkKl1+7joslZPrMpD6ZV6N2ihGU4G7GEh3D2qLgldkHGFRg3KuY
 IMmXop0EayZ1LI5WES2WtuZzmXX2jqPlsMNzJlNohHnhBQvnBeetHxgpy
 AkHKYp7so997u8R5nFHqKIsxkhHRA5vyEsviiaIUZHTZq4fPUKfJ9lrOu
 UaQLzlTYR11Tvh7Z7/IRwdYnMD9tCzRSn6Fy8wS4E49RL8LPQkxaZdJuk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EYEwYK5Q
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

On Tue, Feb 13, 2024 at 12:31:59PM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 11:01:08AM CET, michal.swiatkowski@linux.intel.com wrote:
> >On Tue, Feb 13, 2024 at 10:03:05AM +0100, Jiri Pirko wrote:
> >> Tue, Feb 13, 2024 at 08:35:03AM CET, michal.swiatkowski@linux.intel.com wrote:
> >> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> >> >range.
> >> >
> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> >---
> >> > drivers/net/ethernet/intel/ice/ice.h         |  8 ++
> >> > drivers/net/ethernet/intel/ice/ice_devlink.c | 82 ++++++++++++++++++++
> >> > drivers/net/ethernet/intel/ice/ice_irq.c     |  6 ++
> >> > 3 files changed, 96 insertions(+)
> >> >
> >> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> >> >index c4127d5f2be3..24085f3c0966 100644
> >> >--- a/drivers/net/ethernet/intel/ice/ice.h
> >> >+++ b/drivers/net/ethernet/intel/ice/ice.h
> >> >@@ -94,6 +94,7 @@
> >> > #define ICE_MIN_LAN_TXRX_MSIX	1
> >> > #define ICE_MIN_LAN_OICR_MSIX	1
> >> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
> >> >+#define ICE_MAX_MSIX		256
> >> > #define ICE_FDIR_MSIX		2
> >> > #define ICE_RDMA_NUM_AEQ_MSIX	4
> >> > #define ICE_MIN_RDMA_MSIX	2
> >> >@@ -535,6 +536,12 @@ struct ice_agg_node {
> >> > 	u8 valid;
> >> > };
> >> > 
> >> >+struct ice_pf_msix {
> >> >+	u16 cur;
> >> >+	u16 min;
> >> >+	u16 max;
> >> >+};
> >> >+
> >> > struct ice_pf {
> >> > 	struct pci_dev *pdev;
> >> > 
> >> >@@ -604,6 +611,7 @@ struct ice_pf {
> >> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
> >> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> >> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
> >> >+	struct ice_pf_msix msix;
> >> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> >> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
> >> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
> >> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> >index cc717175178b..b82ff9556a4b 100644
> >> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> >@@ -1603,6 +1603,78 @@ enum ice_param_id {
> >> > 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
> >> > };
> >> > 
> >> >+static int
> >> >+ice_devlink_msix_max_pf_get(struct devlink *devlink, u32 id,
> >> >+			    struct devlink_param_gset_ctx *ctx)
> >> >+{
> >> >+	struct ice_pf *pf = devlink_priv(devlink);
> >> >+
> >> >+	ctx->val.vu16 = pf->msix.max;
> >> >+
> >> >+	return 0;
> >> >+}
> >> >+
> >> >+static int
> >> >+ice_devlink_msix_max_pf_set(struct devlink *devlink, u32 id,
> >> >+			    struct devlink_param_gset_ctx *ctx)
> >> >+{
> >> >+	struct ice_pf *pf = devlink_priv(devlink);
> >> >+	u16 max = ctx->val.vu16;
> >> >+
> >> >+	pf->msix.max = max;
> >> 
> >> What's permanent about this exactly?
> >> 
> >
> >I want to store the value here after driver reinit. Isn't it enough to
> >use this parameter type? Which one should be used for this purpose?
> 
> Documentation/networking/devlink/devlink-params.rst say:
> 
> .. list-table:: Possible configuration modes
>    :widths: 5 90
> 
>    * - Name
>      - Description
>    * - ``runtime``
>      - set while the driver is running, and takes effect immediately. No
>        reset is required.
>    * - ``driverinit``
>      - applied while the driver initializes. Requires the user to restart
>        the driver using the ``devlink`` reload command.
>    * - ``permanent``
>      - written to the device's non-volatile memory. A hard reset is required
>        for it to take effect.
> 
> 
> [...]
Thanks for pointing it, I changed the idea during developing it (at
first I wanted to store it in NVM) and forgot to change the type.

I will go with driverinit param.

