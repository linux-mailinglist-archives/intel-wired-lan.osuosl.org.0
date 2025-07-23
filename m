Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E75B0E9CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 06:48:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDBD280CCB;
	Wed, 23 Jul 2025 04:48:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_mPWOQjOyhf; Wed, 23 Jul 2025 04:48:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 511B380CCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753246119;
	bh=b+GT+S1VonwXFIy8ZT9VZzn25ILjotrI37Uxrba5dpk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sxcAVPBJp9cV+NYuGQq8BqNHM5N2b4kVzDC9Ei5L3YfYEMZRqedVQV9rzfPd2IsWR
	 f7b5L+O4+fF2jMzzaSVzY6PLGb4JG6UzbWIcxXUja8xUsUWVU7MAQ68Zo/TP6i60y0
	 ZQ/9Vg+VvLsRcorpiZZRDISFPwMqLOURv+iio2ybrTMf1uxjeq96blZXiTQJxkAByX
	 mWxxumLRfsbwarZ/BIBqVXCg227utqqSBuOU9+5DJZ3CkZxWbO7xnbmDMEYOMVu0Nj
	 kKmOu125UTpYOj+ZbmepkHo3PeyWnPzcYEMSoqOdLKGKWko2VRTZHLwkNfrZumotr8
	 wVGmDWMBlNeFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 511B380CCC;
	Wed, 23 Jul 2025 04:48:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 110C1DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB98E40FAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4xNtaLbH3AE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 04:48:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DA5C40C93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DA5C40C93
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DA5C40C93
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:48:36 +0000 (UTC)
X-CSE-ConnectionGUID: EYou51E7TAS3CTsFaabLuQ==
X-CSE-MsgGUID: ECaVzh+UQRSoc1mypOnVyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="54613673"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="54613673"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 21:48:36 -0700
X-CSE-ConnectionGUID: sNJc5pEmTV238Zug66iE+w==
X-CSE-MsgGUID: 5xsNh3H2RwSNGd3ttfay0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="164973226"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 21:48:34 -0700
Date: Wed, 23 Jul 2025 06:47:25 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com
Message-ID: <aIBpMBCIab9WMUvp@mev-dev.igk.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-10-michal.swiatkowski@linux.intel.com>
 <20250722145428.GM2459@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722145428.GM2459@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753246116; x=1784782116;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qNjmRPPIJN5Zjpha05dmWoSkyDjdBWOVgWeDdaqiQpY=;
 b=SwoNWemPJu1AFwMgjOlqUcS15Lo7BQ6/K8XfuFVvP4idhzRYfjejIe9m
 sxXyQM6CsjijCle54cbqw4nohj7cQoY0nZiWjbdkG0GHXN9WY0J0cCvRp
 4G8iLcAqJUYhNy7lQoHRJEl2KL+olSETnaFttBZeDYJwb46yuPWAO0GxN
 AVY/bzjhk2McX8uhaCMhBTuh8uQ5ksfYkLlDt89TfIs3L3wH4kgAVvJdi
 uSFKWnh6+bodP3CsYTVnypXqrhVdOL96fAZm34pjQZN25GdC3isARQdWI
 0ST1GuX4b1q97pAnI8l/BSUPJsBUWjKwVMQupMYhUhv6TZ825X/gk8AyP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SwoNWemP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: drop driver
 specific structure from fwlog code
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 22, 2025 at 03:54:28PM +0100, Simon Horman wrote:
> On Tue, Jul 22, 2025 at 12:45:54PM +0200, Michal Swiatkowski wrote:
> > In debugfs pass ice_fwlog structure instead of ice_pf.
> > 
> > The debgufs dirs specific for fwlog can be stored in fwlog structure.
> > 
> > Add debugfs entry point to fwlog api.
> > 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> 
> ...
> 
> > @@ -580,9 +569,10 @@ static const struct file_operations ice_debugfs_data_fops = {
> >  
> >  /**
> >   * ice_debugfs_fwlog_init - setup the debugfs directory
> > - * @pf: the ice that is starting up
> > + * @fwlog: pointer to the fwlog structure
> > + * @root: debugfs root entry on which fwlog director will be registered
> >   */
> > -void ice_debugfs_fwlog_init(struct ice_pf *pf)
> > +void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
> >  {
> >  	struct dentry *fw_modules_dir;
> >  	struct dentry **fw_modules;
> > @@ -598,41 +588,39 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
> >  
> >  	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
> >  						      pf->ice_debugfs_pf);
> 
> pf no longer exists in this context.
> 

Right, sorry, I missed that. I will build check each commit before
sending v2.

Thanks

> > -	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
> > +	if (IS_ERR(fwlog->debugfs))
> >  		goto err_create_module_files;
> >  
> > -	fw_modules_dir = debugfs_create_dir("modules",
> > -					    pf->ice_debugfs_pf_fwlog);
> > +	fw_modules_dir = debugfs_create_dir("modules", fwlog->debugfs);
> >  	if (IS_ERR(fw_modules_dir))
> >  		goto err_create_module_files;
> 
> ...
