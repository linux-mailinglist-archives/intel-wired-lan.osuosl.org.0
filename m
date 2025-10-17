Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 477A3BE6F1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 09:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E8FA60B30;
	Fri, 17 Oct 2025 07:32:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7bAaXZWpiaiH; Fri, 17 Oct 2025 07:32:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00B1F60BB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760686364;
	bh=SNYrBQbZaq+/INhpka20Ssmr9abngrixG3H7Psot2NU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wvqd5DgtR/rMsKY8uqCL7hw8QmXzQA6wURV7Md3v33/WJPT0Y9ZAdb/dmvwNf0jvZ
	 +ixABc0lt1Cnp5duw5NJ6dpoHwpqudydl6a1WL0NM9IV/AISRUc0S4uQloDTKPheXI
	 j0PQqk/SE8ihH9hziWdifZnRq12K5yR8K5P//o/tdblIOoVMJ93FRukoZHSvxTiXJa
	 uS+8v3Enssu51I+LyrjBnrS8/zcRGse/a5Egt3argWHkvRvth5euDeTyx6/qTPXAQF
	 ot5fiFSNc+IEvF7NfuKXrJL5U3RVIyqQNCLfQVGO6aC5UdcbLq6jjWe1zjjOr6X/Zm
	 VzulJFUaArWtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00B1F60BB1;
	Fri, 17 Oct 2025 07:32:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BC901EB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 07:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D80960AE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 07:32:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CG265HVn1hor for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Oct 2025 07:32:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0EBD560B30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EBD560B30
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EBD560B30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 07:32:40 +0000 (UTC)
X-CSE-ConnectionGUID: rqyi9YYCRyydGgiUKRDccw==
X-CSE-MsgGUID: P1GyGmWRQBysDvi4u23w8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73498432"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73498432"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 00:32:40 -0700
X-CSE-ConnectionGUID: 0tLhmyWZTJSKHwYpA3zQIw==
X-CSE-MsgGUID: S7lChEuySFKd/etjNlF/fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="183074745"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 00:32:39 -0700
Date: Fri, 17 Oct 2025 09:30:44 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <aPHwpE+YuxfWZjft@mev-dev.igk.intel.com>
References: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
 <5d739d1f-faa7-4734-b5e7-8e35b5556ce7@intel.com>
 <34268765-6cc5-4816-9ba7-4f00e8f353a0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <34268765-6cc5-4816-9ba7-4f00e8f353a0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760686361; x=1792222361;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1kgDxzclXPbdMWDj3OqGrnssQMYk+9cFkc1u0uTTXGw=;
 b=QBMfNf224tlLV+vXd4ylYWuxkURQBNGNuvgvfaEVp4VNNy/4ysHP4xbp
 8AKeO/gx3akOrcNdRfz2tJF0GEbsolraqDeI/0ScNcZ+EAEZzFJl+jx37
 CcLWWACW4Q9N8IVxVTozRqFrWzqL8V528AR0RQDbCcGSBtNHqtWyOHA4t
 v05+d7Q2RWHQOhgk6AJXnVsiukRDsvN+9oN4z4sH8mcXkj2ooh9cpdtVN
 0UaRsJuO9lOYCVyUP46DAM6TH4pS/eps+bnlbSDl3Lyto/RKQNpZ+Rc5k
 O5l13p9KELFCtTnnYKbLaKYSbQetz7ZpRboaUxhSha8nJZQ33BvrlH530
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QBMfNf22
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default
 irq/queue counts on high-core systems
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

On Fri, Oct 17, 2025 at 07:03:31AM +0200, Przemek Kitszel wrote:
> On 10/16/25 17:36, Alexander Lobakin wrote:
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Date: Thu, 16 Oct 2025 08:22:50 +0200
> > 
> > > On some high-core systems loading ice driver with default values can
> > > lead to queue/irq exhaustion. It will result in no additional resources
> > > for SR-IOV.
> > > 
> > > In most cases there is no performance reason for more than 64 queues.
> > > Limit the default value to 64. Still, using ethtool the number of
> > > queues can be changed up to num_online_cpus().
> > > 
> > > This change affects only the default queue amount on systems with more
> > > than 64 cores.
> > > 
> > > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
> > >   drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
> > >   drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
> > >   3 files changed, 28 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> > > index 3d4d8b88631b..354ec2950ff3 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > > @@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
> > >   	else
> > >   		return &pf->adapter->ctrl_pf->hw;
> > >   }
> > > +
> > > +/**
> > > + * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
> > > + *
> > > + * This function returns the number of online CPUs, but caps it at suitable
> > > + * default to prevent excessive resource allocation on systems with very high
> > > + * CPU counts.
> > > + *
> > > + * Note: suitable default is currently at 64, which is reflected in default_cpus
> > > + * constant. In most cases there is no much benefit for more than 64 and it is a
> > > + * power of 2 number.
> > > + *
> > > + * Return: number of online CPUs, capped at suitable default.
> > > + */
> > > +static inline u16 ice_capped_num_cpus(void)
> > > +{
> > > +	const int default_cpus = 64;
> > 
> > Maybe we should just use netif_get_num_default_rss_queues() like I did
> > in idpf?
> > 
> > Or it still can be too high e.g. on clusters with > 256 CPUs?
> 
> good point,
> perhaps we should both use it and change the (kernel) func to cap at 64
> 

Sounds good, thanks for pointing the function.

Do you think it is ok to cap the generic function? Maybe other vendors
want more default queues.

What about capping netif_get_num_default_rss_queues() at 64 just for
ice?

> > 
> > > +
> > > +	return min(num_online_cpus(), default_cpus);
> > > +}
> > >   #endif /* _ICE_H_ */
> > Thanks,
> > Olek
> > 
> 
