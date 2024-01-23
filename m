Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A11839739
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 19:06:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 319A940620;
	Tue, 23 Jan 2024 18:06:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 319A940620
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706033201;
	bh=7ssa/j3dpmDkZ3OgBuIT0XpwLPpx9/Pz3jRWEPzs1hQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HDd6A1CsZgcOzQhs53t0/oJ3oFuww62BiEC9H6AFTj98PNgV4coPiBT8+39EUsj58
	 yS1xJGMoglFB+y+dPm+8whDOGG/p+Id6q7/zf63jrBa4tHQSQQbLtR+AtUpDJ6CYGn
	 S8MDJy73JODe6MAOcwzFcC0EQBpHbmmhj0qjHO3XzU1RYdiFDRyG4+Soe7MNijM6ur
	 P8ts1ZZPX3gGZLFlL3mqbC0U5deUuZZTuliEkirUViOUxNk3MWg4IoaviMjWjgQQUs
	 0kffqJLGH/HfnUBZB/gKO6EPrLiDn7ghvWzleXtvpW6PJ2GWhrH11byN/WgVoBdoYX
	 sB1rnp4elsdiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtM8Kk0zMzOA; Tue, 23 Jan 2024 18:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 014A14016D;
	Tue, 23 Jan 2024 18:06:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 014A14016D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B14751BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 18:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87F674092D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 18:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87F674092D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eoC8qm8JxbfM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 18:06:33 +0000 (UTC)
X-Greylist: delayed 324 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 23 Jan 2024 18:06:32 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA5094091A
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com
 [95.215.58.179])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA5094091A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 18:06:32 +0000 (UTC)
Message-ID: <6b8ade34-d7f4-452d-9893-ace80c97dfed@linux.dev>
Date: Tue, 23 Jan 2024 18:00:57 +0000
MIME-Version: 1.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240123111849.9367-1-wojciech.drewek@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20240123111849.9367-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1706032861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7ssa/j3dpmDkZ3OgBuIT0XpwLPpx9/Pz3jRWEPzs1hQ=;
 b=N2sVSMFycdcjLYUK54iPsNp1bCJQ4+B/mlsOEmOERuS39v1z076zSJdJRoc8X4sXNN7sOu
 gU92ZM2dVq+uhOGmDQJUmUj4oZJI4/gDA8rLiN+pnXfMzmyk413KVq+etiiBMKei17kT8z
 osAgyQ8zjwhmjdCz7m8VgpGap/kwpO0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=N2sVSMFy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Remove and readd netdev
 during devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 23/01/2024 11:18, Wojciech Drewek wrote:
> Recent changes to the devlink reload (commit 9b2348e2d6c9
> ("devlink: warn about existing entities during reload-reinit"))
> force the drivers to destroy devlink ports during reinit.
> Adjust ice driver to this requirement, unregister netdvice, destroy
> devlink port. ice_init_eth() was removed and all the common code
> between probe and reload was moved to ice_load().
> 
> During devlink reload we can't take devl_lock (it's already taken)
> and in ice_probe() we have to lock it. Use devl_* variant of the API
> which does not acquire and release devl_lock. Guard ice_load()
> with devl_lock only in case of probe.
> 
> Introduce ice_debugfs_fwlog_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
> 
> Suggested-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |   3 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>   drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>   5 files changed, 139 insertions(+), 133 deletions(-)
> 

[...]

> +/**
> + * ice_devlink_reinit_up - do reinit of the given PF
> + * @pf: pointer to the PF struct
> + */
> +static int ice_devlink_reinit_up(struct ice_pf *pf)
> +{
> +	struct ice_vsi *vsi = ice_get_main_vsi(pf);
> +	struct ice_vsi_cfg_params params = {};

no need for empy init here ...

> +	int err;
> +
> +	err = ice_init_dev(pf);
> +	if (err)
> +		return err;
> +
> +	params = ice_vsi_to_params(vsi);

... because it's completely overwritten here.

> +	params.flags = ICE_VSI_FLAG_INIT;
> +
> +	rtnl_lock();
> +	err = ice_vsi_cfg(vsi, &params);
> +	if (err)
> +		goto err_vsi_cfg;
> +	rtnl_unlock();
> +
> +	/* No need to take devl_lock, it's already taken by devlink API */
> +	err = ice_load(pf);
> +	if (err)
> +		goto err_load;
> +
> +	return 0;
> +
> +err_load:
> +	rtnl_lock();
> +	ice_vsi_decfg(vsi);
> +err_vsi_cfg:
> +	rtnl_unlock();
> +	ice_deinit_dev(pf);
> +	return err;
> +}
> +


