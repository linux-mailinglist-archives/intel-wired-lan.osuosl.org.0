Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D534A8822
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 16:57:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7366541704;
	Thu,  3 Feb 2022 15:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AyixDEakV1WZ; Thu,  3 Feb 2022 15:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CB6E416DE;
	Thu,  3 Feb 2022 15:57:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 486101BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 15:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35F1A416DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 15:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aVsR3RNmo_zf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 15:57:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B2E8416C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 15:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643903851; x=1675439851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rzb9oI51QxpMaUa1oKlYxNEhqyc8jm8VptrjoGTTVWc=;
 b=ISQuuOY282x9K6s3XuO3LJjY9E5Lu1+QaEj3HzcZr/h0ewzL7QUWy0mZ
 P+StqZ4zJxrmxJitf3Tgs3/zKwSxjqnVc2PCi1w2R8JAZC+2vwAezVx9F
 Bw9WMI5pyVYtJzoertwl68+B38pYhe9WfdsIouiH6MnZ5Ynskp/TWm3O4
 quDNQAB7wlUY8x587BXvfU6SX+wLk1z7z0Zp0wVi2Zus/k2JE3cBM3bs+
 Hnd/3WsYLjFoyU8SuyQVAtBzDHmOdcjJI7uDatdh3sDExjZU4EtikScn+
 v74TDgPK3bUSqSvDdC3/gZ404nuBpdaoFdDQWNRlcuWuMwnXbOVo2dhp5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="231742296"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231742296"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 07:57:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="480525918"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2022 07:57:16 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 213FvFhV010353; Thu, 3 Feb 2022 15:57:15 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Thu,  3 Feb 2022 16:55:24 +0100
Message-Id: <20220203155524.12315-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB5186871FE0AD93739C834B3D8F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-9-alan.brady@intel.com>
 <20220128133447.22242-1-alexandr.lobakin@intel.com>
 <CO1PR11MB5186871FE0AD93739C834B3D8F279@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 08/19] iecm: add interrupts
 and configure netdev
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
Cc: Madhu Chittim <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 00:17:37 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 5:35 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Linga, Pavan Kumar <pavan.kumar.linga@intel.com>;
> > Chittim, Madhu <madhu.chittim@intel.com>; Burra, Phani R
> > <phani.r.burra@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 08/19] iecm: add interrupts and
> > configure netdev
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:09:58 -0800
> > 
> > > This finishes implementing init_task by adding everything we need to
> > > configure the netdevice for the vport and setup its interrupts.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alice Michael <alice.michael@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 813 +++++++++++++++++-
> > >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  17 +
> > >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 165 ++++
> > >  drivers/net/ethernet/intel/include/iecm.h     | 112 ++-
> > >  .../net/ethernet/intel/include/iecm_txrx.h    |   2 +
> > >  5 files changed, 1104 insertions(+), 5 deletions(-)
> > >

--- 8< ---

> > > +/**
> > > + * iecm_find_mac_filter - Search filter list for specific mac filter
> > > + * @vport: main vport structure
> > > + * @macaddr: the MAC address
> > > + *
> > > + * Returns ptr to the filter object or NULL. Must be called while
> > > +holding the
> > > + * mac_filter_list_lock.
> > > + **/
> > > +static struct
> > > +iecm_mac_filter *iecm_find_mac_filter(struct iecm_vport *vport,
> > > +				      const u8 *macaddr)
> > > +{
> > > +	struct iecm_adapter *adapter = vport->adapter;
> > > +	struct iecm_mac_filter *f;
> > > +
> > > +	if (!macaddr)
> > > +		return NULL;
> > > +
> > > +	list_for_each_entry(f, &adapter->config_data.mac_filter_list, list) {
> > > +		if (ether_addr_equal(macaddr, f->macaddr))
> > > +			return f;
> > > +	}
> > 
> > Excessive braces again.
> > 
> 
> Will not fix.

I'd like to remind here that it's a technical discussion in a public
list, and every participant should keep it sane, with sane arguments
and reasoning.

My arguments are:
 * it adds chars and locs for no reason;
 * it adds code complexity -> lowers readability a tiny bit;
 * checkpatch and/or cocchinelle may complain on this.

I'd double-check the last bullet at first. If it's the case, there's
no other choice except for deleting them. Otherwise I'd like to hear
reasoning for keeping those braces and some other folks' opinions as
well.

> 
> > > +	return NULL;
> > > +}
> > > +
> > > +/**
> > > + * __iecm_add_mac_filter - Add mac filter helper function

--- 8< ---

> > > +		dflt_features |= NETIF_F_TSO6;
> > > +	if (iecm_is_cap_ena_all(adapter, IECM_SEG_CAPS,
> > > +				VIRTCHNL2_CAP_SEG_IPV4_UDP |
> > > +				VIRTCHNL2_CAP_SEG_IPV6_UDP))
> > > +		dflt_features |= NETIF_F_GSO_UDP_L4;
> > > +	if (iecm_is_cap_ena_all(adapter, IECM_RSC_CAPS, IECM_CAP_RSC))
> > > +		offloads |= NETIF_F_GRO_HW;
> > 
> > I see `offloads` being used only here, |= -> =.
> > 
> 
> It makes it easier to add others in future or if some happen to get stripped in/out in the future it makes the code more resilient.  We prefer to keep it this way.

Ah, again.
It's not that usual in the kernel to make some thing more
complicated due to some kind of a hypothetical case in the future.
That case may never happen, while code burden will still be there.

Also, a problem might occur *only* if someone places `offloads`
modification before this sentence. If it gets deleted, if `offloads`
gets modified later, assignment is still correct here.
And it's a developer's duty then to check for this.

The last thing. Assignment is a pure single store. OR is load +
store, 2 operations. Compilers *probably* optimize this on -O2,
but that's up to them.
The function itself is cold, yet still this is avoidable.

> 
> > > +	netdev->features |= dflt_features;
> > > +	netdev->hw_features |= dflt_features | offloads;
> > > +	netdev->hw_enc_features |= dflt_features | offloads;

--- 8< ---

> > > +	.ndo_set_mac_address = NULL,
> > > +	.ndo_change_mtu = NULL,
> > > +	.ndo_get_stats64 = NULL,
> > > +	.ndo_fix_features = NULL,
> > > +	.ndo_set_features = NULL,
> > > +	.ndo_vlan_rx_add_vid = NULL,
> > > +	.ndo_vlan_rx_kill_vid = NULL,
> > > +	.ndo_setup_tc = NULL,
> > 
> > Non-initialized members get zeroed by default, NULLing them is excessive.
> > 
> 
> The next patches will add these, they're placeholders. I left it like that because as you read the patches you can know what functions are there yet (as well as a checklist for myself as made the patches).

As I wrote in one of my prevous replies, each patch is
a self-contained/self-complete entity.
With those NULLs being present newly implemented callbacks
will result in

 .ndo_old_function_1 = iecm_old_function_1,
-.ndo_new_function_2 = NULL,
-.ndo_new_function_3 = NULL,
+.ndo_new_function_2 = iecm_new_function_2,
+.ndo_new_function_3 = iecm_new_function_3,
 .ndo_old_function_4 = iecm_old_function_4,

instead of

 .ndo_old_function_1 = iecm_old_function_1,
+.ndo_new_function_2 = iecm_new_function_2,
+.ndo_new_function_3 = iecm_new_function_3,
 .ndo_old_function_4 = iecm_old_function_4,

This makes a lot of sense, at least to me.

> 
> > > +};
> > > +
> > > +static const struct net_device_ops iecm_netdev_ops_singleq = {
> > > +	.ndo_open = NULL,
> > > +	.ndo_stop = NULL,
> > > +	.ndo_start_xmit = NULL,
> > > +	.ndo_set_rx_mode = NULL,
> > > +	.ndo_validate_addr = eth_validate_addr,
> > > +	.ndo_set_mac_address = NULL,
> > > +	.ndo_change_mtu = NULL,
> > > +	.ndo_get_stats64 = NULL,
> > > +	.ndo_fix_features = NULL,
> > > +	.ndo_set_features = NULL,
> > > +	.ndo_vlan_rx_add_vid = NULL,
> > > +	.ndo_vlan_rx_kill_vid = NULL,
> > > +	.ndo_setup_tc           = NULL,
> > 
> > Same 2 previous points.
> > 
> > .ndo_setup_tc assignment indentation is weird. Either align all the initializers
> > with tabs or don't align at all (both are valid cases).
> > 
> > > +};

--- 8< ---

> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
