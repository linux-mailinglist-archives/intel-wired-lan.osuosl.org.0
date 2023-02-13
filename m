Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEADD694191
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 10:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50A11405D0;
	Mon, 13 Feb 2023 09:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50A11405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676281420;
	bh=losh1CqsmEPg+F+qGE1GRJnVfvTyV3yzBrBggte9j+A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jcMHTVqIWOH6EZftyLduPuslAgouwGbc7UAMJQOCwfrucbpa3qIKTvKahRnDTv85w
	 kYJqDMMShcjKaEoGqdayk/pmlpbe8rGD2drGatN8pY0otkq8XbUvx1xszWlYHmRhql
	 q2/drbnxSvb3V3ucxqdK3GktRRM8vK2ODD61Aqg/dMED5ZP2Zgok3wM07QZ2shTETC
	 rhpCLMWkt7LXxJyvBUkjxVqpfaWxuSyFizjo68Pza1Ap7nJLbRcUJ8/i6/RCKgmdXw
	 wCI3grRXshryy2lCa6eJl+Q56ykJ28DFCa6mGq3zi5CLxXjtVJiVgEwLiMceNCFap2
	 M9JzdQVd+NEng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgZhXY0usu1q; Mon, 13 Feb 2023 09:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5F514010D;
	Mon, 13 Feb 2023 09:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5F514010D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B93531BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 09:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91ACB40253
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 09:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91ACB40253
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6CM3E1IKHp1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 09:43:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E926E40246
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E926E40246
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 09:43:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="328559575"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="328559575"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:43:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="914261323"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="914261323"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:43:23 -0800
Date: Mon, 13 Feb 2023 10:43:14 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <Y+oGKz4VnD6u1V24@localhost.localdomain>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
 <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
 <Y+Xep2FQgmEWdzs0@localhost.localdomain>
 <831dc822-5464-ea60-a688-43be86e55474@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <831dc822-5464-ea60-a688-43be86e55474@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676281404; x=1707817404;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lqjAUkH8OPM+35klAUMkxmvJoE1oHCmi45fxJdQkBTo=;
 b=MbNnwV9Wf+MvlVY0Q+0uC53KkudUblnXbUc+FBTq1JdQ/GgJ3+3RlvwO
 +hljfeGSa8x46j2ZG3jpn4QzbIYh3IDua6UrK8brH7/w3A/kslOYD0hkK
 yTfDIFgS2O5z5UfDvoNRXvKGaseLt8LiTC5VEYV6B77iKEN2V9MYWbH6x
 y6gnl8MtWWi7dT3CCYaPL9+LRJda3ZtP5GqGpsDvCrIIH9BsdXbfS2enV
 vIWrZ58E8xxPQMv497woS4l7cWlSmu5WQfLkNoJjsaIDdLc1c/gTCVVsm
 LVEyCnsfr2ah5026n3hFSjkXTTlrj62wfYUCK0bkiiDcb3197+I6zteLP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MbNnwV9W
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 10, 2023 at 09:09:19AM -0800, Jesse Brandeburg wrote:
> On 2/9/2023 10:05 PM, Michal Swiatkowski wrote:
> > On Thu, Feb 09, 2023 at 06:08:45PM -0800, Jesse Brandeburg wrote:
> > > Yep, it's always how it should have worked, but it wasn't quite working
> > > right, and using bridge "fixed" it because bridge sets both PROMISC and
> > > ALLMULTI bits.
> > > 
> > > 
> > 
> > Ok, thanks for explanation.
> > 
> >  From commit message:
> > "The root cause of the issue is that if the PF is asked to be in IFF_PROMISC
> > mode (promiscuous mode) and it had an ipv6 address that needed the
> > 33:33:ff:00:00:04 multicast address to work, then when the VF was added
> > with the need for the same multicast address, the VF would steal all the
> > traffic destined for that address."
> > 
> > I wonder why there is no "perfect filter" for multicast ipv6 on PF if PF
> > have an ipv6 address? It is deleted by kernel in this configuration? Two
> > "perfect filters" for the same MAC results in packet replication (if
> > they have the same priority, but in our driver they have).
> 
> If you have a look at the script I posted earlier in this thread, you'll see
> the tree of devices that was created.
> 
> PF ens259f0
>   VLAN ens259f0.3 (VID=3)
>     OVS ovs-br0 (child device ens259f0.3)
>       IPv6 addr something::4
> 
> This combination ends up not creating perfect filters on the PF for the MAC
> address in question, maybe due to how OVS works?
> 
> 

Ok, understand, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
