Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3E8669CD2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 16:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5290F415AD;
	Fri, 13 Jan 2023 15:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5290F415AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673624946;
	bh=2H1iEt6H6XGbxny9H8VXuUkk5/iCfbwGmgnuOxy63ao=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mzrzTWYq0J+NkARFcB1cYus3AXb+vVCfgWISeIjiOCJdotaG5LGnOzQ+QkZEbId97
	 S0oYt2PYxjyDBnlmIEOyAv6FLjcuAi4CWYZnluAAD5hvQxlnMaG6Qb7Qm5TCsI4ccT
	 Tbo9GnmlWJeV3fU66I3lLDlo/VZGJ8qIYNEfyP+iou6auvcT/GaYrvHd2Xb2z/Idvh
	 AaOS9YV3pK7bWxm2XruKvmWpTIQiR3wM4mHfIxpjy/VAywocK1rSe0lZ2jgASkzPHV
	 wURwHpH8Nt0CN72Um+X6vcQJaQrSa/ZYUdH69YjWrj6ZrDwwhyyygH+u1Cd50g8CGH
	 G0qUTOWZUMRgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0gpiY4EuSQS; Fri, 13 Jan 2023 15:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AF2B4158B;
	Fri, 13 Jan 2023 15:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AF2B4158B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8251F1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 15:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6917381416
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 15:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6917381416
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfWsL-QICbm3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 15:48:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAE76813FE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAE76813FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 15:48:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="307565371"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="307565371"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 07:48:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="688784475"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="688784475"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 07:48:58 -0800
Date: Fri, 13 Jan 2023 16:48:54 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <Y8F9ZrcNc9lU4IpD@localhost.localdomain>
References: <20230111110111.20099-1-michal.swiatkowski@linux.intel.com>
 <4662dbfc-171e-cdc2-7558-137567e05c25@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4662dbfc-171e-cdc2-7558-137567e05c25@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673624939; x=1705160939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dSlqsRO0rDPg2O/4KoWKU8v8jMVvUZb5jyiDtXv/ppQ=;
 b=ZXv9f/NeGUrX4mQkdXhatxdMoI5vLPmiysoREoa+bQnhY5uxnyw5K/LM
 eQkB5+4F0qui8w9dYxTI8HQS6FwXiV6In3ABlNPKnT65IbQuWnOa94SHe
 TOF2gMzIQvdQpuJNPLkareS3vp+nzOATbs5aoljWT3dAqZEVJQVDUJ1QA
 3UbvO4wnxIXbhCNS0pv5839gFVyNk2zZ/BLMTeVyWDE3f38TbZRIxAMZ4
 Vy5nei2dZXqs+BEHxBwImlB0FKy2nlGOD30xJe2iDfZFGMG8GqZLcayW7
 E2XOxIlhsrR1U1SkRngp6ztQVYeMRSVNFsp4CZ/RNRCnljeuoLAXa//G/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZXv9f/Ne
Subject: Re: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
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

On Thu, Jan 12, 2023 at 05:11:04PM -0800, Jesse Brandeburg wrote:
> On 1/11/2023 3:01 AM, Michal Swiatkowski wrote:
> > Re: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
> 
> Looks good but title should always contain PATCH net-next or PATCH net. Also
> doesn't hurt especially for net fixes to use --base net/master (assuming
> your remote for netdev net tree is 'net')
> 
> 

Sure, sorry, I forgot to add net tag, it is in v2. Will remember,
thanks.

> > Call trace:
> > ice_set_channel() --> mutex_lock(adev_mutex)
> > ice_vsi_recfg_qs()
> > ice_pf_dcb_recfg()
> > ice_send_event_to_aux() --> another mutex_lock(adev_mutex)
> 
> Ouch, didn't lockdep identify this? Let's hope it would find it if we turned
> it on.
> 

I haven't got lockdep compiled into my kernel, probably I should start
adding it.

> > 
> > This call trace is reached when user try to change queues amount using
> > ethtool:
> > $ ethtool -L enp24s0f0np0 tx 64 rx 32
> > 
> > Avoid double lock by unlocking after checking if RDMA is active.
> > 
> > Fixes: a49a2713f00e ("ice: Prevent set_channel from changing queues while RDMA active")
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> thanks for fixing this!
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
