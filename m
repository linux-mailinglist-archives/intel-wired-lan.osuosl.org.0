Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4398A9FB5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 18:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52A25416F4;
	Thu, 18 Apr 2024 16:12:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lnZU03FMenZA; Thu, 18 Apr 2024 16:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FBD6416F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713456730;
	bh=WTS/cMV4eSG9e4gzXl3hJhUJgWMyuJ1GgM1Fo28JXUw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=97WC8d4OF9C738lI2FJOVP+a8twGQeoxlf56A3H6FrRCw2JQ1PmghtDCabiJ4K9W2
	 5nf8v2SAiHZbzOrcr6talNeTz7GIwr5FSyA/Pgqa2XhFBudR7pNr+XxvsDPBHGIS+v
	 oraMnbzGUKdPADbEVlQNknwLJonp6Crhe4PFp/7f4Oir+e7qmw3WPBwo/nIMtTdH8X
	 ptNm+wea51efX+J7wG2aSDQ8KpUz6PEwupZXVbr5OgjvtqehtACzRAj+QLEMUzCICC
	 zWu6tod23mta/dURcJIUDvwAwYj4cSPafM2IjzRfjpjauuT2LtZB6ydfP+pHpV+Vsj
	 dNg9o6yqJVHPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FBD6416F8;
	Thu, 18 Apr 2024 16:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AC6F1BF983
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 16:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DD3D41551
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 16:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBjkzO9PwLTz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 16:12:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0763B4154F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0763B4154F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0763B4154F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 16:12:05 +0000 (UTC)
X-CSE-ConnectionGUID: xxQ58zbfSR2j3v3HpHKvCQ==
X-CSE-MsgGUID: fDIWblu/SSOsXmIQ/333zQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8885867"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="8885867"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 09:12:04 -0700
X-CSE-ConnectionGUID: uYtWlc6xSjGS2nDDTbNzXg==
X-CSE-MsgGUID: JqkKWJdxQVqjGgARR9DC6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="46316502"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 09:12:01 -0700
Date: Thu, 18 Apr 2024 18:11:38 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZiFGOkSMWs+/N2vI@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho> <ZiEWtQ2bnfSO6Da7@mev-dev>
 <ZiEZ-UKL0kYtEtOp@nanopsycho> <ZiEyP+t9uarUrLGO@mev-dev>
 <ZiE_nUEsGT8Cd3BK@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiE_nUEsGT8Cd3BK@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713456726; x=1744992726;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JCnrU8c7Zw1AtPOyyKJXkJJ32vAKwkBAsO6pur/ATc8=;
 b=GM8ibMfCVyz8lBsGtj4X8dlT8R6ly1b60PFS4SdIzwcGNkjSyRJkqdIc
 iFQ6LAqUqxYSkFxNuIgJnahicvf1SvZsKxRsBEWu3S5NOnYUQPSqATef4
 u7jL6B/dh4YWv5t0cONZhyZk+Q4C4e78OwaQCTf0caTTYFeHQVRVdseUC
 acezaXrzZ8lQ44XHIuVZYNpAO4HtVAh0z/IW+EkMGeHcoyNld0jQfGItH
 YEEHykekIcu0vA1Rnxordz17ejEewqlQ0kz172oHiOdV6WzEvjLFf2vcQ
 vTZl6RWV/mJ8DQfccxzxeuvGVr14EvKjnZvoTdpj+WFT9hPBPPVmAzQac
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GM8ibMfC
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

On Thu, Apr 18, 2024 at 05:43:25PM +0200, Jiri Pirko wrote:
> Thu, Apr 18, 2024 at 04:46:23PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Thu, Apr 18, 2024 at 03:02:49PM +0200, Jiri Pirko wrote:
> >> Thu, Apr 18, 2024 at 02:48:53PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
> >> >> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >> 
> >> >> [...]
> >> >> 
> >> >> >+/**
> >> >> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
> >> >> >+ * @dev: the device to allocate for
> >> >> >+ *
> >> >> >+ * Allocate a devlink instance for SF.
> >> >> >+ *
> >> >> >+ * Return: void pointer to allocated memory
> >> >> >+ */
> >> >> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> >> >> 
> >> >> This is devlink instance for SF auxdev. Please make sure it is properly
> >> >> linked with the devlink port instance using devl_port_fn_devlink_set()
> >> >> See mlx5 implementation for inspiration.
> >> >> 
> >> >> 
> >> >
> >> >I am going to do it in the last patchset. I know that it isn't the best
> >> 
> >> Where? Either I'm blind or you don't do it.
> >> 
> >> 
> >
> >You told me to split few patches from first patchset [1]. We agree that
> >there will be too many patches for one submission, so I split it into
> >3:
> >- 1/3 devlink prework (already accepted)
> >- 2/3 base subfunction (this patchset)
> >- 3/3 port representor refactor to support subfunction (I am going to
> >  include it there)
> 
> Sorry, but how is this relevant to my suggestion to use
> devl_port_fn_devlink_set() which you apparently don't?
> 

Devlink port to link with is introduced in the port representor part.
Strange, but it fitted to my splitting. I can move
activation/deactivation part also to this patchset (as there is no
devlink port to call it on) if you want.

> 
> >
> >[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/
> >
> >Thanks,
> >Michal
> >
> >> >option to split patchesets like that, but it was hard to do it differently.
> >> >
> >> >Thanks,
> >> >Michal
> >> >
> >> >> >+{
> >> >> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> >> >> >+				 &ice_sf_devlink_ops);
> >> >> >+}
> >> >> >+
> >> >> 
> >> >> [...]
