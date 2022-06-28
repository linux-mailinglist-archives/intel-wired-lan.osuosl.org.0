Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7356C55BDFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 06:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E00441505;
	Tue, 28 Jun 2022 04:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E00441505
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656389983;
	bh=ss/bAaehRp6af/MrN8EbBjXfYvdaUf5FvtTMeEtvlac=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OPoH4vOEig4Y2fiXHkk7hcDmHar2lREYGTDA3K3ZEjuI1BTa1y3qY3xm7gr5HHIeW
	 aMQX3qMAEgl6J6OtlsXPm9A7KJ7ATbjGawnb6QxcGM6gwo4VSuIo+YEv5DbVFoCMdq
	 w+YARqtEmRnBX3sryZw/8K1alfi0eMDPjIBpQ/8X9MsLo0lEtd36kxkb05yCnYfT4C
	 Vh7RpNyWvvNLwbXl6kW/z+ijjoolPZdXzkXbd9ygo+S3BMtIm/yVoSVWFzfP2TYF90
	 BS54DuZuVDqueKJB/7PQ3tz7pMl8XHFZ3wksZ8gGUhvwna28gUHPbNIj1C8qGphkyK
	 ZhDBiqj9bGOSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8IdiDnTNbDOJ; Tue, 28 Jun 2022 04:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DB2C410A7;
	Tue, 28 Jun 2022 04:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DB2C410A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E06751BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 04:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2A084010D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 04:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2A084010D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doyqIRoRkpmK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 04:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53D1840017
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53D1840017
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 04:19:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261432603"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261432603"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 21:19:33 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="646728998"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 21:19:32 -0700
Date: Mon, 27 Jun 2022 21:21:59 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>
Message-ID: <YrpXt4ilunpf0T+A@localhost.localdomain>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
 <YrAGdQB2np+/P/Ia@localhost.localdomain>
 <BYAPR11MB31759A9BE889898BC553CFD482B39@BYAPR11MB3175.namprd11.prod.outlook.com>
 <YrJw6lqq51hHBXxZ@localhost.localdomain>
 <BYAPR11MB3175D362F16CCBC61C52B22C82B29@BYAPR11MB3175.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR11MB3175D362F16CCBC61C52B22C82B29@BYAPR11MB3175.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656389974; x=1687925974;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0DN35mXm4AUJYH99VUkld8aHTFsbVAuKIg7jJV+4lHc=;
 b=i1AnaQfyRnZokvKSvZhWWLmY8En+24U0UPd5/H1pTiTxFZ05DZu9ZWYg
 qflfeR0apSHnsHMzszKTVGPGp3Xe0BpRLnvuVMaRT7Sdd0c9ZWaU0sQNr
 r+wZLFiCsjiE21FVehBYl58iOTV/Z60K0CAFiHH+39Be/a/gT+28yrMVj
 +h/RZQszw1aChp8XhRXsWRBwh9LG2gtj0UJuyyUWSvMi90elc8/WX8B1B
 3IHuDRohU1PUtjJOonoQ/fF7/M195vkCtNZAipJzBXqHCg9jeyLvEKGTm
 /F2VVQyh3CoXfRGfn8d2oLY+UKHhvO4rxUgVkD+pNZwQa8iGFJRPw8ycr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i1AnaQfy
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Kiran Patil <kiran.patil@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 22, 2022 at 10:31:42PM +0000, Zhang, Xuejun wrote:
> Hi Michal, 
> 
> Thanks for the reply.
> 
> The lock is access lock for both mac_filter_list & vlan_filter_list. Access to anyone of the two filter lists requires holding the lock per current code design. 

Ok, thanks for explanation.

> 
> Regards 
> 
> Jun
> 
> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
> Sent: Tuesday, June 21, 2022 6:31 PM
> To: Zhang, Xuejun <xuejun.zhang@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil <kiran.patil@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN from tc-filter code path
> 
> On Tue, Jun 21, 2022 at 08:21:42PM +0000, Zhang, Xuejun wrote:
> > Hi Michal,
> 
> Hi Jun
> > 
> > Pls add your comments whenever you have a chance.
> 
> Sorry, I am confused, comments about what? Did I miss replay to my previous one? I didn't receive any replay to my question about why we need this spin lock when there is only check for filter.
> 
> Please resend it to me if You can.
> 
> Regards
> Michal
> 
> > 
> > Regards,
> > 
> > Jun
> > 
> > -----Original Message-----
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Sent: Sunday, June 19, 2022 10:33 PM
> > To: Zhang, Xuejun <xuejun.zhang@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil 
> > <kiran.patil@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC 
> > and VLAN from tc-filter code path
> > 
> > On Fri, Jun 17, 2022 at 01:50:00PM -0400, Jun Zhang wrote:
> > > From: Kiran Patil <kiran.patil@intel.com>
> > > 
> > > Before allowing tc-filter using dest MAC, VLAN - check to make sure 
> > > there is basic active filter using specified dest MAC and likewise 
> > > for VLAN.
> > > 
> > > This check is must to allow only legit filter via tc-filter code 
> > > path with or without ADQ.
> > > 
> > > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > > Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> > > Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 62
> > > ++++++++++++++++++++-
> > >  1 file changed, 61 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > index 57c51a15bcbc..287c3e4bf8af 100644
> > > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
> > >  	return ret;
> > >  }
> > >  
> > > +/**
> > > + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using 
> > > +VLAN
> > > + * @adapter: board private structure
> > > + * @vlan: VLAN to verify
> > > + *
> > > + * Using specified "vlan" ID, there must be active VLAN filter in 
> > > +VF's
> > > + * MAC-VLAN filter list.
> > > + */
> > > +static bool
> > > +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16
> > > +vlan) {
> > > +	struct iavf_vlan_filter *f;
> > > +	bool allowed;
> > > +
> > > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> > Why do we need lock here?
> > 
> > > +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> > > +	allowed = (f && f->add && !f->remove);
> > > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > > +	return allowed;
> > > +}
> > > +
> > > +/**
> > > + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using 
> > > +MAC addr
> > > + * @adapter: board private structure
> > > + * @macaddr: MAC address
> > > + *
> > > + * Using specified MAC address, there must be active MAC filter in 
> > > +VF's
> > > + * MAC-VLAN filter list.
> > > + */
> > > +static bool
> > > +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const 
> > > +u8
> > > +*macaddr) {
> > > +	struct iavf_mac_filter *f;
> > > +	bool allowed;
> > > +
> > > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> > > +	f = iavf_find_filter(adapter, macaddr);
> > > +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> > > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > > +	return allowed;
> > > +}
> > > +
> > >  /**
> > >   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
> > >   * @adapter: board private structure @@ -3651,7 +3693,15 @@ static 
> > > int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > >  			}
> > >  		}
> > >  
> > > -		if (!is_zero_ether_addr(match.key->dst))
> > > +		if (!is_zero_ether_addr(match.key->dst)) {
> > > +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> > > +							   match.key->dst)) {
> > > +				dev_err(&adapter->pdev->dev,
> > > +					"Dest MAC %pM doesn't belong to this VF\n",
> > > +					match.mask->dst);
> > > +				return -EINVAL;
> > > +			}
> > > +
> > >  			if (is_valid_ether_addr(match.key->dst) ||
> > >  			    is_multicast_ether_addr(match.key->dst)) {
> > >  				/* set the mask if a valid dst_mac address */ @@ -3660,6 
> > > +3710,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > >  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
> > >  						match.key->dst);
> > >  			}
> > > +		}
> > >  
> > >  		if (!is_zero_ether_addr(match.key->src))
> > >  			if (is_valid_ether_addr(match.key->src) || @@ -3677,6 +3728,8 @@ 
> > > static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > >  
> > >  		flow_rule_match_vlan(rule, &match);
> > >  		if (match.mask->vlan_id) {
> > > +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> > > +
> > >  			if (match.mask->vlan_id == VLAN_VID_MASK) {
> > >  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
> > >  			} else {
> > > @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > >  					match.mask->vlan_id);
> > >  				return -EINVAL;
> > >  			}
> > > +
> > > +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> > > +				dev_err(&adapter->pdev->dev,
> > > +					"VLAN %u doesn't belong to this VF\n",
> > > +					vlan);
> > > +				return -EINVAL;
> > > +			}
> > >  		}
> > >  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
> > >  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> > > --
> > > 2.35.3
> > > 
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
