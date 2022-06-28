Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2CD55EAC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 19:15:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C03D418B0;
	Tue, 28 Jun 2022 17:15:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C03D418B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656436550;
	bh=pSc2sp1He1eYiQK3SO7EB90SreXHbu4uMgtHGjU3Qig=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=60he9Gyx2BHGCdJE1HW8gb3RkOCHVNx94oYBwafodT2k7q96EAWzuH/ZikxXtXIO7
	 dT7cmOej+0J2/xMNYe8TjbOJW0aUPsgySy7v8arEdXnm+i5XvlSo70AFXM1+abc3pK
	 kyjbD9Q1WXE2AdajUVkDeYXZKEm4FbG6axTCi5cBUZMAOhUDgKYU6XPRMcSchj7xpT
	 2lIGwPbkdOcuD2ueGbsuCCjZa7ay8ZEAjrIEfsUCGM9BpDbYE2WsgaVrdaLG/C/KAL
	 Nh5fOUQAkKAvFT14RlnRcmTXtOj67k8dtp6l9aaeIOpiHzdUWQTPbs9J2hyC1GyECT
	 9sFHISFspeJ6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-s5fcjujQND; Tue, 28 Jun 2022 17:15:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB7B8410DB;
	Tue, 28 Jun 2022 17:15:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB7B8410DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8361BF263
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 17:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 780794148F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 17:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 780794148F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGnP4rjsHGRH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 17:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3B11410DB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3B11410DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 17:15:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="282535778"
X-IronPort-AV: E=Sophos;i="5.92,229,1650956400"; d="scan'208";a="282535778"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 10:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,229,1650956400"; d="scan'208";a="617258194"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 28 Jun 2022 10:15:39 -0700
Date: Tue, 28 Jun 2022 19:15:38 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Yrs3OjxadBTxnDNd@boxer>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
 <YrAGdQB2np+/P/Ia@localhost.localdomain>
 <BYAPR11MB31759A9BE889898BC553CFD482B39@BYAPR11MB3175.namprd11.prod.outlook.com>
 <YrJw6lqq51hHBXxZ@localhost.localdomain>
 <BYAPR11MB3175D362F16CCBC61C52B22C82B29@BYAPR11MB3175.namprd11.prod.outlook.com>
 <YrpXt4ilunpf0T+A@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrpXt4ilunpf0T+A@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656436541; x=1687972541;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mBtwl/EfmTi1XmHUfWvpJSfNe5ej99UDZ/ImUOQH60w=;
 b=SG1W+LaaC1IDjYvql6WKZqifbiHW6I8c4wjFzu2S5co+4pMhe4I0nItA
 IkizIno682E5VANoHs/r6yO8bqsxwcuuMXgxnU/d8LIj39ZAVF4RhYQT4
 kDsA8VhzcF3pcQXDtpGZ4MEEtBIzJG4E3tTx+rz/ZNU5/oIuMHPfpRtvd
 QOE820EwkBTdQMaerGrmWzX7JRDXHl7pl69u9TNIRvA9AzJelJu+qNUUt
 ooBP4WZkPDyljyf8/wMJ7XkehA83ZcBdXXSDPGa0dKLqi+mYkXg+BEkrT
 Qu3SYZPsT65NYPmW35BVSVrOmehpRrMrbzf8WNZwCWbd9fM8IXl9bftp6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SG1W+Laa
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

On Mon, Jun 27, 2022 at 09:21:59PM -0400, Michal Swiatkowski wrote:
> On Wed, Jun 22, 2022 at 10:31:42PM +0000, Zhang, Xuejun wrote:
> > Hi Michal, 
> > 
> > Thanks for the reply.
> > 
> > The lock is access lock for both mac_filter_list & vlan_filter_list. Access to anyone of the two filter lists requires holding the lock per current code design. 
> 
> Ok, thanks for explanation.

This doesn't explain why spin_lock_bh() is used and what contexts are
being protected.

> 
> > 
> > Regards 
> > 
> > Jun
> > 
> > -----Original Message-----
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
> > Sent: Tuesday, June 21, 2022 6:31 PM
> > To: Zhang, Xuejun <xuejun.zhang@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil <kiran.patil@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN from tc-filter code path
> > 
> > On Tue, Jun 21, 2022 at 08:21:42PM +0000, Zhang, Xuejun wrote:
> > > Hi Michal,
> > 
> > Hi Jun
> > > 
> > > Pls add your comments whenever you have a chance.
> > 
> > Sorry, I am confused, comments about what? Did I miss replay to my previous one? I didn't receive any replay to my question about why we need this spin lock when there is only check for filter.
> > 
> > Please resend it to me if You can.
> > 
> > Regards
> > Michal
> > 
> > > 
> > > Regards,
> > > 
> > > Jun
> > > 
> > > -----Original Message-----
> > > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > Sent: Sunday, June 19, 2022 10:33 PM
> > > To: Zhang, Xuejun <xuejun.zhang@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil 
> > > <kiran.patil@intel.com>
> > > Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC 
> > > and VLAN from tc-filter code path
> > > 
> > > On Fri, Jun 17, 2022 at 01:50:00PM -0400, Jun Zhang wrote:
> > > > From: Kiran Patil <kiran.patil@intel.com>
> > > > 
> > > > Before allowing tc-filter using dest MAC, VLAN - check to make sure 
> > > > there is basic active filter using specified dest MAC and likewise 
> > > > for VLAN.
> > > > 
> > > > This check is must to allow only legit filter via tc-filter code 
> > > > path with or without ADQ.
> > > > 
> > > > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > > > Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> > > > Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 62
> > > > ++++++++++++++++++++-
> > > >  1 file changed, 61 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > index 57c51a15bcbc..287c3e4bf8af 100644
> > > > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
> > > >  	return ret;
> > > >  }
> > > >  
> > > > +/**
> > > > + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using 
> > > > +VLAN
> > > > + * @adapter: board private structure
> > > > + * @vlan: VLAN to verify
> > > > + *
> > > > + * Using specified "vlan" ID, there must be active VLAN filter in 
> > > > +VF's
> > > > + * MAC-VLAN filter list.
> > > > + */
> > > > +static bool
> > > > +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16
> > > > +vlan) {
> > > > +	struct iavf_vlan_filter *f;
> > > > +	bool allowed;
> > > > +
> > > > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> > > Why do we need lock here?
> > > 
> > > > +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> > > > +	allowed = (f && f->add && !f->remove);
> > > > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > > > +	return allowed;
> > > > +}
> > > > +
> > > > +/**
> > > > + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using 
> > > > +MAC addr
> > > > + * @adapter: board private structure
> > > > + * @macaddr: MAC address
> > > > + *
> > > > + * Using specified MAC address, there must be active MAC filter in 
> > > > +VF's
> > > > + * MAC-VLAN filter list.
> > > > + */
> > > > +static bool
> > > > +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const 
> > > > +u8
> > > > +*macaddr) {
> > > > +	struct iavf_mac_filter *f;
> > > > +	bool allowed;
> > > > +
> > > > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> > > > +	f = iavf_find_filter(adapter, macaddr);
> > > > +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> > > > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > > > +	return allowed;
> > > > +}
> > > > +
> > > >  /**
> > > >   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
> > > >   * @adapter: board private structure @@ -3651,7 +3693,15 @@ static 
> > > > int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > > >  			}
> > > >  		}
> > > >  
> > > > -		if (!is_zero_ether_addr(match.key->dst))
> > > > +		if (!is_zero_ether_addr(match.key->dst)) {
> > > > +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> > > > +							   match.key->dst)) {
> > > > +				dev_err(&adapter->pdev->dev,
> > > > +					"Dest MAC %pM doesn't belong to this VF\n",
> > > > +					match.mask->dst);
> > > > +				return -EINVAL;
> > > > +			}
> > > > +
> > > >  			if (is_valid_ether_addr(match.key->dst) ||
> > > >  			    is_multicast_ether_addr(match.key->dst)) {
> > > >  				/* set the mask if a valid dst_mac address */ @@ -3660,6 
> > > > +3710,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > > >  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
> > > >  						match.key->dst);
> > > >  			}
> > > > +		}
> > > >  
> > > >  		if (!is_zero_ether_addr(match.key->src))
> > > >  			if (is_valid_ether_addr(match.key->src) || @@ -3677,6 +3728,8 @@ 
> > > > static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > > >  
> > > >  		flow_rule_match_vlan(rule, &match);
> > > >  		if (match.mask->vlan_id) {
> > > > +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> > > > +
> > > >  			if (match.mask->vlan_id == VLAN_VID_MASK) {
> > > >  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
> > > >  			} else {
> > > > @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> > > >  					match.mask->vlan_id);
> > > >  				return -EINVAL;
> > > >  			}
> > > > +
> > > > +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> > > > +				dev_err(&adapter->pdev->dev,
> > > > +					"VLAN %u doesn't belong to this VF\n",
> > > > +					vlan);
> > > > +				return -EINVAL;
> > > > +			}
> > > >  		}
> > > >  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
> > > >  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> > > > --
> > > > 2.35.3
> > > > 
> > > > _______________________________________________
> > > > Intel-wired-lan mailing list
> > > > Intel-wired-lan@osuosl.org
> > > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
