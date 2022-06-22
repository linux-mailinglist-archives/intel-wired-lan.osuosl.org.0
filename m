Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0732F5541BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 06:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A448541CC7;
	Wed, 22 Jun 2022 04:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A448541CC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655872152;
	bh=teFSOu/BOxSXp20YaXHuLgAveErQWEemAOi1lzO6heU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=54RjMKugaeZmRpjwhgA8m55fNQrbi9NBJnBanmgNmEz58ua6nirPDNRORtO4Lv4Vg
	 grCznuC0GzwPZ6BRyxZTF5o0tKp/QMtHV2aTEJVC7fGpIFbQsmQhrAxm35cp84oZIu
	 EGvPDu1TXjjoSwEcCRKUXD7Z88lWHwB1UScvaZktc52wnEPT3YusMBuIZfRVoiGNbK
	 o4M7MHNdXcSQtVs/KDYadglGmkzJB3chH0Ei/eIKz4qtWx4C8/JC0RhR1qZ26/yL9V
	 DHA/HC+xUfIhsQbOOeBcQLOIrkQL7Lb4mUnzM5Zl5TWR86cr+38iP2EfLxxMFDtQTp
	 lD4dvxdQDjGQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0sj3fyhHy08; Wed, 22 Jun 2022 04:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F206441CB4;
	Wed, 22 Jun 2022 04:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F206441CB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 653441BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 04:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A37840339
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 04:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A37840339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFux5sw4tCgh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 04:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AD7B400DD
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AD7B400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 04:29:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="280356483"
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="280356483"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 21:28:59 -0700
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="643975115"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 21:28:58 -0700
Date: Tue, 21 Jun 2022 21:31:22 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>
Message-ID: <YrJw6lqq51hHBXxZ@localhost.localdomain>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
 <YrAGdQB2np+/P/Ia@localhost.localdomain>
 <BYAPR11MB31759A9BE889898BC553CFD482B39@BYAPR11MB3175.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR11MB31759A9BE889898BC553CFD482B39@BYAPR11MB3175.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655872144; x=1687408144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ISwouV3b2aDdelgGz5kiCdYnC3il5Ke+b6YWL0Pef70=;
 b=WUnujjl8maLMC+QzGVIKuroXhGdQvzJ6MtFNaoAG46G9jFTLYeeovnDX
 HvHNknH5OFJ/sl68rqR+ONOLK4e5nQ4jG/UdcccmV5Hq8FPhUa3yqypyH
 GVytRyijp9+AQTkgHyIBpNOX/h8aHwV9A88P4+6a63utaz/TqdVdTEMdm
 cPihhw/qT6qG2CvEiU4V+AolxRgbm4qRh/2be4qGqXzxomjxj62tUcDSR
 Z43cO/81Kswb7PcZa2XCvlI/mg5ws1DzLfw+aOW3qPhWqBmXYaA+VYJ2N
 /Z6A25/N0CHzoK6o5Nrnm33tXyZ00gS+dXfxx/kHOPHH+xGLMzy3xP2v7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WUnujjl8
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

On Tue, Jun 21, 2022 at 08:21:42PM +0000, Zhang, Xuejun wrote:
> Hi Michal,

Hi Jun
> 
> Pls add your comments whenever you have a chance.

Sorry, I am confused, comments about what? Did I miss replay to my
previous one? I didn't receive any replay to my question about why we
need this spin lock when there is only check for filter.

Please resend it to me if You can.

Regards
Michal

> 
> Regards,
> 
> Jun
> 
> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
> Sent: Sunday, June 19, 2022 10:33 PM
> To: Zhang, Xuejun <xuejun.zhang@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil <kiran.patil@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN from tc-filter code path
> 
> On Fri, Jun 17, 2022 at 01:50:00PM -0400, Jun Zhang wrote:
> > From: Kiran Patil <kiran.patil@intel.com>
> > 
> > Before allowing tc-filter using dest MAC, VLAN - check to make sure 
> > there is basic active filter using specified dest MAC and likewise for 
> > VLAN.
> > 
> > This check is must to allow only legit filter via tc-filter code path 
> > with or without ADQ.
> > 
> > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> > Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 62 
> > ++++++++++++++++++++-
> >  1 file changed, 61 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c 
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 57c51a15bcbc..287c3e4bf8af 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
> >  	return ret;
> >  }
> >  
> > +/**
> > + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using 
> > +VLAN
> > + * @adapter: board private structure
> > + * @vlan: VLAN to verify
> > + *
> > + * Using specified "vlan" ID, there must be active VLAN filter in 
> > +VF's
> > + * MAC-VLAN filter list.
> > + */
> > +static bool
> > +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16 
> > +vlan) {
> > +	struct iavf_vlan_filter *f;
> > +	bool allowed;
> > +
> > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> Why do we need lock here?
> 
> > +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> > +	allowed = (f && f->add && !f->remove);
> > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > +	return allowed;
> > +}
> > +
> > +/**
> > + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC 
> > +addr
> > + * @adapter: board private structure
> > + * @macaddr: MAC address
> > + *
> > + * Using specified MAC address, there must be active MAC filter in 
> > +VF's
> > + * MAC-VLAN filter list.
> > + */
> > +static bool
> > +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const u8 
> > +*macaddr) {
> > +	struct iavf_mac_filter *f;
> > +	bool allowed;
> > +
> > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> > +	f = iavf_find_filter(adapter, macaddr);
> > +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > +	return allowed;
> > +}
> > +
> >  /**
> >   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
> >   * @adapter: board private structure
> > @@ -3651,7 +3693,15 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  			}
> >  		}
> >  
> > -		if (!is_zero_ether_addr(match.key->dst))
> > +		if (!is_zero_ether_addr(match.key->dst)) {
> > +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> > +							   match.key->dst)) {
> > +				dev_err(&adapter->pdev->dev,
> > +					"Dest MAC %pM doesn't belong to this VF\n",
> > +					match.mask->dst);
> > +				return -EINVAL;
> > +			}
> > +
> >  			if (is_valid_ether_addr(match.key->dst) ||
> >  			    is_multicast_ether_addr(match.key->dst)) {
> >  				/* set the mask if a valid dst_mac address */ @@ -3660,6 +3710,7 
> > @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
> >  						match.key->dst);
> >  			}
> > +		}
> >  
> >  		if (!is_zero_ether_addr(match.key->src))
> >  			if (is_valid_ether_addr(match.key->src) || @@ -3677,6 +3728,8 @@ 
> > static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  
> >  		flow_rule_match_vlan(rule, &match);
> >  		if (match.mask->vlan_id) {
> > +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> > +
> >  			if (match.mask->vlan_id == VLAN_VID_MASK) {
> >  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
> >  			} else {
> > @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  					match.mask->vlan_id);
> >  				return -EINVAL;
> >  			}
> > +
> > +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> > +				dev_err(&adapter->pdev->dev,
> > +					"VLAN %u doesn't belong to this VF\n",
> > +					vlan);
> > +				return -EINVAL;
> > +			}
> >  		}
> >  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
> >  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> > --
> > 2.35.3
> > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
