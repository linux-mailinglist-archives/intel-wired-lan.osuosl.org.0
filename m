Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C0C852E72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 11:55:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA49C81F63;
	Tue, 13 Feb 2024 10:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0Frltdrb1QN; Tue, 13 Feb 2024 10:55:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98B1281E87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707821724;
	bh=EaV8pWELML5ZasD4ZgLJGdtzFtd9YIeSG+kjBkUwpDk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CJZsJn+4AYRSIHIXk5Q1am6JBsh7sBOZNohgtqk3qEYo1N8d/aDQM8ebMS1u+wCmb
	 +TZUpEFHTYpkyBcBQrYcYYmEpr1PFttoZL4L96D7bWqsMXUDjlSqWeO5ScROlkujqQ
	 d+am8Eni8Jpq8wy6TX0NqOyt2lweGsafdufwqfqXKFavLC6WPXd+qgDYggBVIgK8Kw
	 cpxNrCLNjwucryuIGmSINTu1lvmUNqZ7ELTO2SlWZqOxKsNggsHjFIwzKaK1A1INW5
	 7e+Wt9rbtrAMFQsHjP7MQZhkU8D3cvEiWxCkWC6OGb1AmYSDbHXQI6kniGu0UPF6Sp
	 HltT4kB4Iu9Ug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98B1281E87;
	Tue, 13 Feb 2024 10:55:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C50231BF47E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B16E360AD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v_IhPv-OwyUq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 10:55:21 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 13 Feb 2024 10:55:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9175A60AB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9175A60AB1
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9175A60AB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:55:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1965508"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="1965508"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:48:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2805482"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:48:10 -0800
Date: Tue, 13 Feb 2024 11:48:06 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZctI5v99LmGx285J@mev-dev>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
 <ZcsxRRrVvnhjLxn3@nanopsycho> <Zcs9XeZmd2E1IHKs@mev-dev>
 <bb501538-29d5-4930-97b6-1c02f1b7ecba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb501538-29d5-4930-97b6-1c02f1b7ecba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707821722; x=1739357722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4GUHNDaRCENI+49HL5C3GvSf7Y5oYykz9STLkEm7TsU=;
 b=IUn8UR3596J1R8I/ZixLmQ7A9KKlibBrUuyvFYIZx9E0KIwD+9FZXs06
 onETFL9osdep/T7WVfkpYa4qOp2r5nrZe9CwM3QFuK/xi4Jzk2OuSJ9g0
 EcNheE/TJ3GIIbt3Grx2J3dKQbx+9FO75sZaLUPI7fF3RUHNeScM4PnBG
 rjF9Rmwo+clAS/zQsS+v/1J6eEHotVPKlRWTWs8OvdvLTE572+VYhoMJG
 OjTaTI9Oj35IjepYY/vV3Op5BP07zzhYs7NLT5F1AGsFtw2Z9Xi57vsWf
 qrKjBQ3EFawhTohpoXIC5UPEDOWSUjT2dfpTBNu4E5IqDoebjIe9lmAJA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IUn8UR35
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 marcin.szycik@intel.com, sridhar.samudrala@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 netdev@vger.kernel.org, jacob.e.keller@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 11:19:49AM +0100, Wojciech Drewek wrote:
> 
> 
> On 13.02.2024 10:58, Michal Swiatkowski wrote:
> > On Tue, Feb 13, 2024 at 10:07:17AM +0100, Jiri Pirko wrote:
> >> Tue, Feb 13, 2024 at 08:35:08AM CET, michal.swiatkowski@linux.intel.com wrote:
> >>> Implement enable_rdma devlink parameter to allow user to turn RDMA
> >>> feature on and off.
> >>>
> >>> It is useful when there is no enough interrupts and user doesn't need
> >>> RDMA feature.
> >>>
> >>> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> >>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> >>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >>> ---
> >>> drivers/net/ethernet/intel/ice/ice_devlink.c | 32 ++++++++++++++++++--
> >>> drivers/net/ethernet/intel/ice/ice_lib.c     |  8 ++++-
> >>> drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++------
> >>> 3 files changed, 45 insertions(+), 13 deletions(-)
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >>> index b82ff9556a4b..4f048268db72 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >>> @@ -1675,6 +1675,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> >>> 	return 0;
> >>> }
> >>>
> >>> +static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
> >>> +					    union devlink_param_value val,
> >>> +					    struct netlink_ext_ack *extack)
> >>> +{
> >>> +	struct ice_pf *pf = devlink_priv(devlink);
> >>> +	bool new_state = val.vbool;
> >>> +
> >>> +	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
> >>> +		return -EOPNOTSUPP;
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +
> >>> static const struct devlink_param ice_devlink_params[] = {
> >>> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> >>> 			      ice_devlink_enable_roce_get,
> >>> @@ -1700,6 +1713,8 @@ static const struct devlink_param ice_devlink_params[] = {
> >>> 			      ice_devlink_msix_min_pf_get,
> >>> 			      ice_devlink_msix_min_pf_set,
> >>> 			      ice_devlink_msix_min_pf_validate),
> >>> +	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> >>> +			      NULL, NULL, ice_devlink_enable_rdma_validate),
> >>> };
> >>>
> >>> static void ice_devlink_free(void *devlink_ptr)
> >>> @@ -1776,9 +1791,22 @@ ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
> >>> int ice_devlink_register_params(struct ice_pf *pf)
> >>> {
> >>> 	struct devlink *devlink = priv_to_devlink(pf);
> >>> +	union devlink_param_value value;
> >>> +	int err;
> >>> +
> >>> +	err = devlink_params_register(devlink, ice_devlink_params,
> >>
> >> Interesting, can't you just take the lock before this and call
> >> devl_params_register()?
> >>
> > I mess up a locking here and also in subfunction patchset. I will follow
> > you suggestion and take lock for whole init/cleanup. Thanks.
> > 
> >> Moreover, could you please fix your init/cleanup paths for hold devlink
> >> instance lock the whole time?
> >>
> > You right, I will prepare patch for it.
> 
> I think my patch implements your suggestion Jiri:
> https://lore.kernel.org/netdev/20240212211202.1051990-5-anthony.l.nguyen@intel.com/
> 

Right, I based my patchset before your changes was applied to Tony's
tree. Thanks Wojtek.

So, in v2 there will be dev_version.

Thanks
Michal
> > 
> >>
> >> pw-bot: cr
> >>
> >>
> >>> +				      ARRAY_SIZE(ice_devlink_params));
> >>> +	if (err)
> >>> +		return err;
> >>>
> >>> -	return devlink_params_register(devlink, ice_devlink_params,
> >>> -				       ARRAY_SIZE(ice_devlink_params));
> >>> +	devl_lock(devlink);
> >>> +	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
> >>> +	devl_param_driverinit_value_set(devlink,
> >>> +					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
> >>> +					value);
> >>> +	devl_unlock(devlink);
> >>> +
> >>> +	return 0;
> >>> }
> >>>
> >>> void ice_devlink_unregister_params(struct ice_pf *pf)
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> index a30d2d2b51c1..4d5c3d699044 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> @@ -829,7 +829,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
> >>>  */
> >>> bool ice_is_rdma_ena(struct ice_pf *pf)
> >>> {
> >>> -	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
> >>> +	union devlink_param_value value;
> >>> +	int err;
> >>> +
> >>> +	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
> >>> +					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
> >>> +					      &value);
> >>> +	return err ? false : value.vbool;
> >>> }
> >>>
> >>> /**
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> >>> index 824732f16112..4dd59d888ec7 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> >>> @@ -5177,23 +5177,21 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> >>> 	if (err)
> >>> 		goto err_init;
> >>>
> >>> +	err = ice_init_devlink(pf);
> >>> +	if (err)
> >>> +		goto err_init_devlink;
> >>> +
> >>> 	devl_lock(priv_to_devlink(pf));
> >>> 	err = ice_load(pf);
> >>> 	devl_unlock(priv_to_devlink(pf));
> >>> 	if (err)
> >>> 		goto err_load;
> >>>
> >>> -	err = ice_init_devlink(pf);
> >>> -	if (err)
> >>> -		goto err_init_devlink;
> >>> -
> >>> 	return 0;
> >>>
> >>> -err_init_devlink:
> >>> -	devl_lock(priv_to_devlink(pf));
> >>> -	ice_unload(pf);
> >>> -	devl_unlock(priv_to_devlink(pf));
> >>> err_load:
> >>> +	ice_deinit_devlink(pf);
> >>> +err_init_devlink:
> >>> 	ice_deinit(pf);
> >>> err_init:
> >>> 	pci_disable_device(pdev);
> >>> @@ -5290,12 +5288,12 @@ static void ice_remove(struct pci_dev *pdev)
> >>> 	if (!ice_is_safe_mode(pf))
> >>> 		ice_remove_arfs(pf);
> >>>
> >>> -	ice_deinit_devlink(pf);
> >>> -
> >>> 	devl_lock(priv_to_devlink(pf));
> >>> 	ice_unload(pf);
> >>> 	devl_unlock(priv_to_devlink(pf));
> >>>
> >>> +	ice_deinit_devlink(pf);
> >>> +
> >>> 	ice_deinit(pf);
> >>> 	ice_vsi_release_all(pf);
> >>>
> >>> -- 
> >>> 2.42.0
> >>>
> >>>
