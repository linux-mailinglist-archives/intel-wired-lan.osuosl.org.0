Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E229E6D9538
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Apr 2023 13:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C9CC41DDA;
	Thu,  6 Apr 2023 11:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C9CC41DDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680780737;
	bh=EQR5y5zxU9oQ7+m6A4i7PXBXxIG3aWUg9c4EmY2JhDg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mss4m6dI/PcXUE9Dw+WbQOiXaz8mjdLFw1uSiJBdzTgCxJdUe321oacYWn62NMn9S
	 EySwSCuEySgdQtaI6r2k9116RCJSSOkxjz8htRpFu1wTgTWsbwuoXWz/zKoMR+BEK1
	 dNTx7/lmKMyU5nZGkYUT45WVxt/rixqSsPMZPUxuKxkwMkTwiWIDCqeA54Jn3qS5tN
	 qvALKWfdxwcrZNj9XIJT6LIPvKW9iCCn65TLp87mS3CIKqSSVQvG+tmLLzp2oZt9ec
	 hknHs70+3r3AU6QNvQq1aD5GyfKDLLgQ0TFQLO88/aKqFvpAw5l+w8CoA3hC5ipgNj
	 9DzH71aCDPEbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcV6hGN8HFxC; Thu,  6 Apr 2023 11:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4233141D92;
	Thu,  6 Apr 2023 11:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4233141D92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5E881C2D01
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 11:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B9DD41D96
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 11:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B9DD41D96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9UmCPxcMZ4r for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Apr 2023 11:32:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A42F641DD8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A42F641DD8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 11:32:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="331323667"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331323667"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 04:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="717417206"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="717417206"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 04:32:07 -0700
Date: Thu, 6 Apr 2023 13:32:04 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZC6ttC+qX/Z0UZb2@localhost.localdomain>
References: <20230405075113.455662-1-michal.swiatkowski@linux.intel.com>
 <20230405075113.455662-4-michal.swiatkowski@linux.intel.com>
 <8559d4df-71a8-8d4f-b2f6-91f69281f2d9@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8559d4df-71a8-8d4f-b2f6-91f69281f2d9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680780729; x=1712316729;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iek0YMET6BA2WBV/5OtxKMjiMxedxx7tDo0er7rQnM0=;
 b=ahhfqFokd/PQW4e+YaWK1FOdqDTqCJcoik67g/01y+1EiS8IJ7OSZE0m
 x4BakqtCYmF/l3N6O8rEa1iqLvTY2+T1l22Uag2niwywCOoBkx01csO2Q
 fFY3S9rzI+AZxjPDvdQs4K66au5eh46tQ+ge6aAzIvjzzj+RLCLiBa+iQ
 /Cg/9QodrA/dWRg9fYlKFTrPLSjwMq6IMal9bQYBw/2nwSd5G/WBzMlLD
 t/JLCkJJSVfF+1y/fDqwOOHuEJGlptq5CfWevBqyJKXFE8myEcCtxOMX5
 jHDZ7Y3PMhscr30XUZh/Ic9Bt/KbPufraphpXAhHJVgJRsG/4vETKr3wa
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ahhfqFok
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/5] ice: allow matching
 on meta data
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
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 05, 2023 at 03:31:01PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Wed, 5 Apr 2023 09:51:11 +0200
> 
> > Add meta data matching criteria in the same place as protocol matching
> > criteria. There is no need to add meta data as special words after
> > parsing all lookups. Trade meta data in the same why as other lookups.
> > 
> > The one difference between meta data lookups and protocol lookups is
> > that meta data doesn't impact how the packets looks like. Because of that
> > ignore it when filling testing packet.
> 
> [...]
> 
> > --- a/drivers/net/ethernet/intel/ice/ice_switch.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_switch.h
> > @@ -186,12 +186,14 @@ struct ice_adv_rule_flags_info {
> >  };
> >  
> >  struct ice_adv_rule_info {
> > +	/* Store metadata values in rule info */
> >  	enum ice_sw_tunnel_type tun_type;
> >  	u16 vlan_type;
> >  	u16 fltr_rule_id;
> >  	u32 priority;
> >  	struct ice_sw_act_ctrl sw_act;
> >  	struct ice_adv_rule_flags_info flags_info;
> > +	u16 src_vsi;
> 
> Minor: since these 2 bytes will introduce 2-byte hole or padding either
> way, I think it's okay to put this field somewhere around rule ID or
> priority, i.e. other primitives. So that when someone is adding new
> short field, he'll see there is a hole and use it. u16 after 2 big
> structures looks a bit off to me, sorry for the initial confusion with
> this "please no holes at all!11" -- it's highly desired, but not by
> sacrificing logical grouping :D
> 

Good point, it looks a little strange, I will move it :)

Thanks,
Michal

> >  };
> >  
> >  /* A collection of one or more four word recipe */
> [...]
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
