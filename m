Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043B48A9A56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 14:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 121DD416AC;
	Thu, 18 Apr 2024 12:49:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mbW9UpGZ-jOK; Thu, 18 Apr 2024 12:49:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E086416A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713444562;
	bh=2HqY35xvvXJlcRIjMKxb1Stq2V4MshxuxZszRzRjBXw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CIfMxVHGR5a8wsk97lhDjSeKZT50dt7zXiZU48xVJKo7FFds2uRTRj/liOJCV1DFa
	 G2zjz0zIWBuqBJIPXaAektprjuxjjT8hVlGCptVjt0maIO0Fgd0S1q3OWWQUPlv3VR
	 saxo575Wpx/QSaqHTBHzbiGoOb6fUVlyl03XwVINoaZTT0ePQnHdVTtYnGMwkepWu2
	 0TnFz5LZA/P+k3f9pVi/uV62Vhk/ntX2AthPlSKPWRXP3srTgK1EP32ajXYShjQPNV
	 JLVEMVGt28Z5Wys2Et8TgslobVf4hFP/xryCFwiRg7Oo8jGAmG9sMfjSyaNN4OCSi/
	 40jnslIEJf8BQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E086416A9;
	Thu, 18 Apr 2024 12:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7400D1BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E1C6811F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lqzdclW_zCtt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 12:49:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7606081089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7606081089
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7606081089
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:49:19 +0000 (UTC)
X-CSE-ConnectionGUID: MCdfLpOAQc29FkV9VdwinA==
X-CSE-MsgGUID: 0rOao7ZZRrSt/DpTCUGMBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12824972"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="12824972"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 05:49:18 -0700
X-CSE-ConnectionGUID: gBTlaMjdS/KV7woqN3338A==
X-CSE-MsgGUID: 0Gjiugo8Q4evX45T9Z8L8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23049434"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 05:49:15 -0700
Date: Thu, 18 Apr 2024 14:48:53 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZiEWtQ2bnfSO6Da7@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiEMRcP7QN5zVd8Z@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713444560; x=1744980560;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=It5CVBJBDHmvLdbhevY3rpHcqCEKRwZ84y+s65qBu+s=;
 b=mb5buyF+0HSiuzQCSNsqFjPPrId5U/JO9qHv8YuT6ypTi3TPrQ55gcUt
 vUhiWq8LuAKs9OB7zTbjblrHCx96jbhYtuZrCfeHEeEUKA4ZqD1v1TG3t
 P2GJUIsLyfnmOCCYe/cCoAMDdIp++rOOu/BVO2Fuks/H7HIrHWOs7ujqz
 /LH1aCqVBzQXBFz8Kb2ZNAXC5lqjKEmmoDYQNNERinP6yNHdSrFayRlCl
 0xFd5uGasaPXGL69zP+/fLHutSd+zoSGcM46jrBQ8qIxMluaiM2JQUtax
 QIsnRoa3XVoBwE/3L6PqC0Eq88vX9pca0duJNI824eX398VWLtO6r8ZOa
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mb5buyF+
Subject: Re: [Intel-wired-lan] [iwl-next v4 5/8] ice: allocate devlink for
 subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> [...]
> 
> >+/**
> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
> >+ * @dev: the device to allocate for
> >+ *
> >+ * Allocate a devlink instance for SF.
> >+ *
> >+ * Return: void pointer to allocated memory
> >+ */
> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> 
> This is devlink instance for SF auxdev. Please make sure it is properly
> linked with the devlink port instance using devl_port_fn_devlink_set()
> See mlx5 implementation for inspiration.
> 
> 

I am going to do it in the last patchset. I know that it isn't the best
option to split patchesets like that, but it was hard to do it differently.

Thanks,
Michal

> >+{
> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> >+				 &ice_sf_devlink_ops);
> >+}
> >+
> 
> [...]
