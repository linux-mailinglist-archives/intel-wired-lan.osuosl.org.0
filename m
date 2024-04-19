Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C668AB448
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 19:23:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6B7E416B5;
	Fri, 19 Apr 2024 17:23:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRtID-vfmloE; Fri, 19 Apr 2024 17:23:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96B484168B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713547383;
	bh=4G4bhRp64jeXdBgV1XAM39mv/PY9uckjk1nLQlxcocY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4oR1puYqPssqtRjVJeG0DtxlL4IWe5W0f9iwmQ43Amxqikc9ktTTlaO0JKRbTnw5U
	 MAI8nu/ftLLnj9Xk1zbrIiW4P5+asv2vnVszGCNX7MGtkopm75s8sGwicS1fGgWDoe
	 UpGYYXP5FZTYtlnM3Vi4Itm35DqCek4RGW5eNmJHcgsdZzHY6a+A8UjJeD5bt6yOo/
	 IduD8990Iyaspswjth583bK7q/O91s4snXqcgCtnERdNM7ai2m0g50k0tF4BlHqT/5
	 IDKUCXeykXuk2MMcO3gg3O1FyWLGNw7E/LYGp5043wS1cl5T4avLV4hK/Vb9FEWF/l
	 3/4w6fO7rruew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96B484168B;
	Fri, 19 Apr 2024 17:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C56FA1BF314
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE09E60720
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:23:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1jZX11s2w0L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 17:22:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 925E9606DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 925E9606DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 925E9606DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:22:59 +0000 (UTC)
X-CSE-ConnectionGUID: lgXIOrcKS/m+M6qmug0fAg==
X-CSE-MsgGUID: ffYT2HrrQji9ORtj1Lj4qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="12102609"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="12102609"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:22:59 -0700
X-CSE-ConnectionGUID: gzAPrmMVQBig+ZiEozCUbQ==
X-CSE-MsgGUID: +b4NXs07R6m9hOAvrYTgFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23839109"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:22:56 -0700
Date: Fri, 19 Apr 2024 19:22:34 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZiKoWmX34QEdEgJO@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho> <ZiEWtQ2bnfSO6Da7@mev-dev>
 <ZiEZ-UKL0kYtEtOp@nanopsycho> <ZiEyP+t9uarUrLGO@mev-dev>
 <ZiE_nUEsGT8Cd3BK@nanopsycho> <ZiFGOkSMWs+/N2vI@mev-dev>
 <ZiFXj-58u2shLL3g@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiFXj-58u2shLL3g@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713547380; x=1745083380;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EdUArIxLmi4/cUNcCa5z9WDKuFyxGLnYbAFYnofKHqc=;
 b=jdX9R9Lr0jIDkF/oABnUHUgITKxoDdjp1EtFDsixmcEEtVd84RNvljMI
 Urkp0k80mMZNVAN+XIFGxk8uLfG/B51UBHCGOud6rRMhv8Or17AXEH4iH
 Mw6TBX9WjqQapcu49pj1PlTpt9wNQj1+9mMi8AMGAvkBMpj2zIfYPbXiY
 nzKKldW+gA4CgaVh2MWQSZAB4AuXTcZd3V1Ev0Gza7Rx8Zs7mbDKCoPew
 B4Sa0pgTmQ0amL6YGVVS0PQ8miFTKkNGEL1SOdr1dnmqwN5H/lT5d3fau
 clN5oz27f+6lo45ErBGJbhvAgJjeoO11no4Dx6FhRN3bhjIh9wKhK9F/T
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jdX9R9Lr
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

On Thu, Apr 18, 2024 at 07:25:35PM +0200, Jiri Pirko wrote:
> Thu, Apr 18, 2024 at 06:11:38PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Thu, Apr 18, 2024 at 05:43:25PM +0200, Jiri Pirko wrote:
> >> Thu, Apr 18, 2024 at 04:46:23PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >On Thu, Apr 18, 2024 at 03:02:49PM +0200, Jiri Pirko wrote:
> >> >> Thu, Apr 18, 2024 at 02:48:53PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >> >On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
> >> >> >> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >> >> 
> >> >> >> [...]
> >> >> >> 
> >> >> >> >+/**
> >> >> >> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
> >> >> >> >+ * @dev: the device to allocate for
> >> >> >> >+ *
> >> >> >> >+ * Allocate a devlink instance for SF.
> >> >> >> >+ *
> >> >> >> >+ * Return: void pointer to allocated memory
> >> >> >> >+ */
> >> >> >> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> >> >> >> 
> >> >> >> This is devlink instance for SF auxdev. Please make sure it is properly
> >> >> >> linked with the devlink port instance using devl_port_fn_devlink_set()
> >> >> >> See mlx5 implementation for inspiration.
> >> >> >> 
> >> >> >> 
> >> >> >
> >> >> >I am going to do it in the last patchset. I know that it isn't the best
> >> >> 
> >> >> Where? Either I'm blind or you don't do it.
> >> >> 
> >> >> 
> >> >
> >> >You told me to split few patches from first patchset [1]. We agree that
> >> >there will be too many patches for one submission, so I split it into
> >> >3:
> >> >- 1/3 devlink prework (already accepted)
> >> >- 2/3 base subfunction (this patchset)
> >> >- 3/3 port representor refactor to support subfunction (I am going to
> >> >  include it there)
> >> 
> >> Sorry, but how is this relevant to my suggestion to use
> >> devl_port_fn_devlink_set() which you apparently don't?
> >> 
> >
> >Devlink port to link with is introduced in the port representor part.
> >Strange, but it fitted to my splitting. I can move
> >activation/deactivation part also to this patchset (as there is no
> >devlink port to call it on) if you want.
> 
> You have 7 more patches to use in this set. No problem. Please do it all
> at once.
> 

Ok, as whole will still not fit into 15 I sent preparation patchset for
representor [1].

Now the patchset based on this preparation have 14 patches, so I hope it
is fine (including linking that you mentioned). I will send it right
after the preparation patchset is applied.

I am going on the 2 weeks vacation, so my replies will be delayed.

[1] https://lore.kernel.org/netdev/20240419171336.11617-1-michal.swiatkowski@linux.intel.com/T/#t

Thanks,
Michal

> 
> >
> >> 
> >> >
> >> >[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/
> >> >
> >> >Thanks,
> >> >Michal
> >> >
> >> >> >option to split patchesets like that, but it was hard to do it differently.
> >> >> >
> >> >> >Thanks,
> >> >> >Michal
> >> >> >
> >> >> >> >+{
> >> >> >> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> >> >> >> >+				 &ice_sf_devlink_ops);
> >> >> >> >+}
> >> >> >> >+
> >> >> >> 
> >> >> >> [...]
