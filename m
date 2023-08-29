Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B41978C27D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 12:43:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F69D60C0E;
	Tue, 29 Aug 2023 10:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F69D60C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693305798;
	bh=hBv9V/BX5BhGO/KAYPLxjmJAPUxESqZbc0nuuZxwquI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nR3lh4sBcFLLaxthIsOzL8wTCkWkncXAHpewGyzeGyIAgZuPjkJY2tXhsu9XldQwC
	 Mvsy3a9u10ky0q7v/0+DMQwxtbJYhEnDhNjKWSPEbNGhJb2SiQafL9s0DqOhrhya+h
	 n+7zWx0gezaDS7M8zMYS/STdZA63prKKtvaNsu307UVlv70jGcHReJyGz78n6OpWgL
	 O+KkG5QT8sAyV34NDzX8sJiXCiTqvClIPmuUnT221R10UkxCP4pe0pImEeRoOYDn/o
	 szdjuyt6NE0qKueAI+a8jf/f6ExYZ8zJdYztUY+5VS5K7W6WWdN3U/gd4KpbO4dK1p
	 BHru7wQK5MKHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJaDe5O74nFT; Tue, 29 Aug 2023 10:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 832FF60AE1;
	Tue, 29 Aug 2023 10:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 832FF60AE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A96841BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 802BD401B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 802BD401B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ebZeIgL9CkmK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 10:43:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B170401B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:43:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B170401B3
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="372748303"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="372748303"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 03:43:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="715484791"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="715484791"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.249.132.148])
 ([10.249.132.148])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 03:43:04 -0700
Message-ID: <ebb004ea-bd9e-aa42-530e-ccfdb086ec9f@linux.intel.com>
Date: Tue, 29 Aug 2023 12:42:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <CO1PR18MB46668B13A44DD677B6A241F0A1E7A@CO1PR18MB4666.namprd18.prod.outlook.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <CO1PR18MB46668B13A44DD677B6A241F0A1E7A@CO1PR18MB4666.namprd18.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693305791; x=1724841791;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MsxR7QKpIt5CsxpWBb9Z6qvDwri7o9tBTG/pV/U9iuo=;
 b=KwZV0svxzHcxG0wQAbgxJf6xJukn83dCRpHKPDKzGQFQ3o4b7bNpFvE0
 cWUQMMkFgAzlXMOcD4Z1kH/OuLS9/t9joWB05h8Qc7ZI2/9DeP4D2Md02
 +/oBmweKJW7ProGUvoggJODjt5Zl2dSQD84xJKVVgTOcjbvlIPJEvxMuo
 fP9OrlY190I/ZwWi0cC88G+UefcaGEkjVfEsnMry/KFhP4Pt8+3lUyLu/
 SZ6Jl9GVpuLykJA5KUFqos3W3Km32f+hpNSc1z20e5pJ0HXXUEf5Q0Mks
 voXMPwscmLe6gFZnUquhDf67y7egGXlh14dbHV1CydVvKLQd4jRrzTGfX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KwZV0svx
Subject: Re: [Intel-wired-lan] hardware filter for matching GTP-U TEID
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
Cc: Ratheesh Kannoth <rkannoth@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Naveen Mamindlapalli <naveenm@marvell.com>,
 Hariprasad Kelam <hkelam@marvell.com>,
 Geethasowjanya Akula <gakula@marvell.com>,
 "edumazet@google.com" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>, Suman Ghosh <sumang@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 29.08.2023 08:18, Subbaraya Sundeep Bhatta wrote:
> Hi Marcin Szycik,
> 
> Below commit demonstrates that we need to create a GTP tunnel netdev and
> create a tc filter on top of it. I am unable to understand how the tc filter on top of
> tunnel netdev $GTP0 propagates to the interface $PF0 for hardware offload?

It propagates via a notification from tunnel netdev to PF, and then to driver.
 
> commit 97aeb877de7f14f819fc2cf8388d7a2d8090489d
> Merge: 4d17d43 9a225f8
> Author: David S. Miller <davem@davemloft.net>
> Date:   Sat Mar 12 11:54:29 2022 +0000
> 
>     Merge branch '100GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue
> 
>     Tony Nguyen says:
> 
>     ====================
>     ice: GTP support in switchdev
> 
>     Marcin Szycik says:
> 
>     Add support for adding GTP-C and GTP-U filters in switchdev mode.
> 
>     To create a filter for GTP, create a GTP-type netdev with ip tool, enable
>     hardware offload, add qdisc and add a filter in tc:
> 
>     ip link add $GTP0 type gtp role <sgsn/ggsn> hsize <hsize>
>     ethtool -K $PF0 hw-tc-offload on
>     tc qdisc add dev $GTP0 ingress
>     tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
>     action mirred egress redirect dev $VF1_PR
> 
> 
> I have to redirect GTP-U packets with a TEID to a VF which may be in guest using hardware tc filter on PF.
>>From my understanding current TC and ethtool cannot specify match filters beyond L4 header fields.
> Can I add new command something like gtp-teid to tc filter?
> Please help me understand this.

You can specify TEID field with the enc_key_id option in tc (like in above
example). Meaning of that option changes depending on tunnel used, in case of
GTP it's TEID.

> 
> Thanks,
> Sundeep
> 
> 

I hope that answers your questions,
Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
