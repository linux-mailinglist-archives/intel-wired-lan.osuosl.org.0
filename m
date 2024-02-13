Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C9D852D41
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:59:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32F1D409B3;
	Tue, 13 Feb 2024 09:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JjOp8_YueZwe; Tue, 13 Feb 2024 09:59:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22CCD4089F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707818344;
	bh=ZNGGCZcQDXWtclPHTxuKuiEJzPFgZO2OO4aCfwM2fpg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XVCdrdCRvUrSnyJN9PNcSh49X/oSj60LL0XzolwMuR0T9NujtOQrmi8E+6uNTiaIU
	 9QW4SxAf9RHHvWh/jlGTIKV4DvEd0I0wcDHG2K80Jn69OjP/np16ObOO2sRb3kvlmb
	 p3l89LsgH3q+nsbzn41u32PTOffOB8tGaoLH9tINdGjsD4dD/26uxlRqD2cp6CA7Pd
	 rVXw5EY+B0cEC8rvlaNazYcU9M1ENBc/5Mz1c1nQqsF68ehTp4RcT692el0iOnkXKO
	 kUDZkdwlCAztCgEEvezig1gxUHtWPKelXvxgZH218RbeegOq+4WTi2b/sVLGW0Dob8
	 r2Jk/hLETiTSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22CCD4089F;
	Tue, 13 Feb 2024 09:59:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2321BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 193CE40585
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWUAHXGd6ZQU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:59:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB55940156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB55940156
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB55940156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:59:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1957737"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="1957737"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:59:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="3196731"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:58:58 -0800
Date: Tue, 13 Feb 2024 10:58:53 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zcs9XeZmd2E1IHKs@mev-dev>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
 <ZcsxRRrVvnhjLxn3@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcsxRRrVvnhjLxn3@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707818341; x=1739354341;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WrcT7WnwPFPnDCbiJJwnFRYzs+oaPxea3SP4VKTVrZo=;
 b=f+YpGGzlzcOUOB/QumC8yDLS2JyGiUBLEISaEy+GNT2Qyv6xz3tc5wIr
 W6d0jn2R52MNS8mtMeQuW+ocgPQQ0aZjQsyaPIhQ0aqkOtPm293ga3atg
 2Wg33WPRUpNWuIU/b20ua8BYuA6d5YMegE9//O5OPVvlkov4/WPSExVTx
 ErZ4LKIlhQSVuZBer6cXtQ0RrwYRfPTykKYpt70I4m5xfQh3Blu7nk8NK
 pmHjb1ftDkF5/vdiT3nxl6tG5PJvZDSBRa/+48ZEz/3cpOL5Jo+sc0+Br
 UB+Tckpzy7Zz/LtXFtnEgNVNSdH+a6DmTLuMPLEifOCMBbJb73wDOki+F
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f+YpGGzl
Subject: Re: [Intel-wired-lan] [iwl-next v1 6/7] ice: enable_rdma devlink
 param
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, wojciech.drewek@intel.com,
 marcin.szycik@intel.com, netdev@vger.kernel.org, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 10:07:17AM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 08:35:08AM CET, michal.swiatkowski@linux.intel.com wrote:
> >Implement enable_rdma devlink parameter to allow user to turn RDMA
> >feature on and off.
> >
> >It is useful when there is no enough interrupts and user doesn't need
> >RDMA feature.
> >
> >Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> >Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > drivers/net/ethernet/intel/ice/ice_devlink.c | 32 ++++++++++++++++++--
> > drivers/net/ethernet/intel/ice/ice_lib.c     |  8 ++++-
> > drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++------
> > 3 files changed, 45 insertions(+), 13 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >index b82ff9556a4b..4f048268db72 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >@@ -1675,6 +1675,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> > 	return 0;
> > }
> > 
> >+static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
> >+					    union devlink_param_value val,
> >+					    struct netlink_ext_ack *extack)
> >+{
> >+	struct ice_pf *pf = devlink_priv(devlink);
> >+	bool new_state = val.vbool;
> >+
> >+	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
> >+		return -EOPNOTSUPP;
> >+
> >+	return 0;
> >+}
> >+
> > static const struct devlink_param ice_devlink_params[] = {
> > 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> > 			      ice_devlink_enable_roce_get,
> >@@ -1700,6 +1713,8 @@ static const struct devlink_param ice_devlink_params[] = {
> > 			      ice_devlink_msix_min_pf_get,
> > 			      ice_devlink_msix_min_pf_set,
> > 			      ice_devlink_msix_min_pf_validate),
> >+	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> >+			      NULL, NULL, ice_devlink_enable_rdma_validate),
> > };
> > 
> > static void ice_devlink_free(void *devlink_ptr)
> >@@ -1776,9 +1791,22 @@ ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
> > int ice_devlink_register_params(struct ice_pf *pf)
> > {
> > 	struct devlink *devlink = priv_to_devlink(pf);
> >+	union devlink_param_value value;
> >+	int err;
> >+
> >+	err = devlink_params_register(devlink, ice_devlink_params,
> 
> Interesting, can't you just take the lock before this and call
> devl_params_register()?
> 
I mess up a locking here and also in subfunction patchset. I will follow
you suggestion and take lock for whole init/cleanup. Thanks.

> Moreover, could you please fix your init/cleanup paths for hold devlink
> instance lock the whole time?
> 
You right, I will prepare patch for it.

> 
> pw-bot: cr
> 
> 
> >+				      ARRAY_SIZE(ice_devlink_params));
> >+	if (err)
> >+		return err;
> > 
> >-	return devlink_params_register(devlink, ice_devlink_params,
> >-				       ARRAY_SIZE(ice_devlink_params));
> >+	devl_lock(devlink);
> >+	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
> >+	devl_param_driverinit_value_set(devlink,
> >+					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
> >+					value);
> >+	devl_unlock(devlink);
> >+
> >+	return 0;
> > }
> > 
> > void ice_devlink_unregister_params(struct ice_pf *pf)
> >diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> >index a30d2d2b51c1..4d5c3d699044 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_lib.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> >@@ -829,7 +829,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
> >  */
> > bool ice_is_rdma_ena(struct ice_pf *pf)
> > {
> >-	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
> >+	union devlink_param_value value;
> >+	int err;
> >+
> >+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
> >+					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
> >+					      &value);
> >+	return err ? false : value.vbool;
> > }
> > 
> > /**
> >diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> >index 824732f16112..4dd59d888ec7 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_main.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_main.c
> >@@ -5177,23 +5177,21 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> > 	if (err)
> > 		goto err_init;
> > 
> >+	err = ice_init_devlink(pf);
> >+	if (err)
> >+		goto err_init_devlink;
> >+
> > 	devl_lock(priv_to_devlink(pf));
> > 	err = ice_load(pf);
> > 	devl_unlock(priv_to_devlink(pf));
> > 	if (err)
> > 		goto err_load;
> > 
> >-	err = ice_init_devlink(pf);
> >-	if (err)
> >-		goto err_init_devlink;
> >-
> > 	return 0;
> > 
> >-err_init_devlink:
> >-	devl_lock(priv_to_devlink(pf));
> >-	ice_unload(pf);
> >-	devl_unlock(priv_to_devlink(pf));
> > err_load:
> >+	ice_deinit_devlink(pf);
> >+err_init_devlink:
> > 	ice_deinit(pf);
> > err_init:
> > 	pci_disable_device(pdev);
> >@@ -5290,12 +5288,12 @@ static void ice_remove(struct pci_dev *pdev)
> > 	if (!ice_is_safe_mode(pf))
> > 		ice_remove_arfs(pf);
> > 
> >-	ice_deinit_devlink(pf);
> >-
> > 	devl_lock(priv_to_devlink(pf));
> > 	ice_unload(pf);
> > 	devl_unlock(priv_to_devlink(pf));
> > 
> >+	ice_deinit_devlink(pf);
> >+
> > 	ice_deinit(pf);
> > 	ice_vsi_release_all(pf);
> > 
> >-- 
> >2.42.0
> >
> >
