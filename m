Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDE68C24CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 14:26:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAD444201F;
	Fri, 10 May 2024 12:26:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RTq6kC6d7DwU; Fri, 10 May 2024 12:26:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0972C41FE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715343987;
	bh=2SZJtmE8C6+dAgdEo8KhAYHTQL3xndm1EuqIyJ0tcOc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i9sl+ZTe7ShbepM8V//mxvLIXfE052FIAc7s8EPKR+bFzDXUFqIgneyT9XMI40XpO
	 MErWuzLM8EDrziCmkAZTgtO4tXGA4YLo/jCepLRVpTXmc4SvCMGGzD2BCEdaRhVBX5
	 BkbOBLFlib7EMQIpKsgMD9xN5uv3WewXAD6ER6Ke4FP8/jIrgxWirEfpYsf2vXht1d
	 is0NZxtM8vFp3d/VLd5Ra9Ha18yNi46aT0HnkhF5KV5AOu/wE6s+CiiwwCFXMXzaLb
	 ryOj5Kw8FU4VcZNCMUyYOZuAehEEOpEL5713t4SAXMu2prK9CmkVkGs4i0Yo/WnN4O
	 5ykZpftTFgZ5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0972C41FE8;
	Fri, 10 May 2024 12:26:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 368CD1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EE0141FD0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:26:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TmdIMuhq6Wi0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 12:26:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3F9141FCA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3F9141FCA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3F9141FCA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:26:22 +0000 (UTC)
X-CSE-ConnectionGUID: IqOALnilSUuw/M5fkvFJuw==
X-CSE-MsgGUID: /k1J3QQbTWaAvjQ4bVQNoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36701485"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="36701485"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:26:22 -0700
X-CSE-ConnectionGUID: 4Zyxxi2eSjmg5/RJNmA1EA==
X-CSE-MsgGUID: wTAdXrR5RYiLfbXSmP8ISQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29988170"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:26:19 -0700
Date: Fri, 10 May 2024 14:25:47 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zj4SS6hPPDEhvBCX@mev-dev>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-9-michal.swiatkowski@linux.intel.com>
 <ZjywddcaIae0W_w3@nanopsycho.orion> <Zj3NQw1BxqtOS9VG@mev-dev>
 <Zj4AAFwZudmyOWTm@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj4AAFwZudmyOWTm@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715343983; x=1746879983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Hnq+191h8FhyyUIpxrV6q5jxz+UIi9bgn2as7lK3+F0=;
 b=BOhntd2n6qkgR4kXmEMmflr+kZhoAYI0FWeXMN6TPSKyy28OjHa15Tov
 UoQM2+hidtaEY9IS5D/aHUiXjQle+4fgGHIROcR7ZKOc5nEuhclNsrS7Q
 9lgkUT5lcbvWyfh0uikN7axPdGoQpLTe1nN6Tiie3Pg5fftnMd+GzHbT9
 hsJQKabgnlti1JcenlClV2Qs2D7OdLNIFOuKLp+BXTGao/a6VtNRPCCML
 6VQ2NdlZ/my9L2kzdGFrogTziFhWRRN/y4K0SLKYU/wjfB7Mp2FFYmeKP
 lM68L/W5dNAnx7KaGeW+/9rlTgAHkB4p1OToUsD6vLMDbe93mLkCj7xwo
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BOhntd2n
Subject: Re: [Intel-wired-lan] [iwl-next v1 08/14] ice: create port
 representor for SF
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, mateusz.polchlopek@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com, jiri@nvidia.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com, michal.kubiak@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 10, 2024 at 01:07:44PM +0200, Jiri Pirko wrote:
> Fri, May 10, 2024 at 09:31:15AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Thu, May 09, 2024 at 01:16:05PM +0200, Jiri Pirko wrote:
> >> Tue, May 07, 2024 at 01:45:09PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >Store subfunction and VF pointer in port representor structure as an
> >> >union. Add port representor type to distinguish between each of them.
> >> >
> >> >Keep the same flow of port representor creation, but instead of general
> >> >attach function create helpers for VF and subfunction attach function.
> >> >
> >> >Type of port representor can be also known based on VSI type, but it
> >> >is more clean to have it directly saved in port representor structure.
> >> >
> >> >Create port representor when subfunction port is created.
> >> >
> >> >Add devlink lock for whole VF port representor creation and destruction.
> >> >It is done to be symmetric with what happens in case of SF port
> >> >representor. SF port representor is always added or removed with devlink
> >> >lock taken. Doing the same with VF port representor simplify logic.
> >> >
> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> >---
> >> > .../ethernet/intel/ice/devlink/devlink_port.c |   6 +-
> >> > .../ethernet/intel/ice/devlink/devlink_port.h |   1 +
> >> > drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 +++++++++---
> >> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +++-
> >> > drivers/net/ethernet/intel/ice/ice_repr.c     | 124 +++++++++++-------
> >> > drivers/net/ethernet/intel/ice/ice_repr.h     |  21 ++-
> >> > drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> >> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> >> > 8 files changed, 187 insertions(+), 80 deletions(-)
> >> 
> >> This calls for a split to at least 2 patches. One patch to prepare and
> >> one to add the SF support?
> >
> >Is 187 insertions and 80 deletions too many for one patch? Or the
> >problem is with number of files changed?
> 
> The patch is hard to follow, that's the problem.
> 

Ok, I will do my best to make it easier to read in next version.

> 
> >
> >I don't see what here can be moved to preparation part as most changes
> >depends on each other. Do you want me to have one patch with unused
> >functions that are adding/removing SF repr and another with calling
> >them?
> >
> >Thanks,
> >Michal
