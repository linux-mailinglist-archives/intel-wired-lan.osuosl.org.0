Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AEAA7A07C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 11:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E17D40746;
	Thu,  3 Apr 2025 09:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qcfxGMjEy4d1; Thu,  3 Apr 2025 09:51:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 813C840768
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743673901;
	bh=VOUcwX2Qf0dnlwxiCfxbIeZXemCyy0MMPyXEFd1259Y=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nsB28UHXrF0RhXz4ZQN8Pq08GOMEj5jumji776ApOVFmaC4PMiUAakwW8U4AsGv9i
	 irvRYbaiU29QyJ2rybT1iot0BJaR1zcBNtNHWUcIVEiJmxsCA5ri19tgjBVvJaNtPx
	 sMmuUHDZ5sEcyZQyynn8jj6nDUrlj9p7P/wwSaoQWKvcI6OhNykG+lAQeVNwdnizs4
	 hBqvDx63SPfa/+RIfKMwftCeXqjsR2+YFTj4DVO2RUGuOzL2seyU/60qXLuoD/GOxL
	 lTf6YqvuHoAPAtVFGt7ZCNfow+ohlv6ewYzfOU+PP5wuA0VEAvHS0LSijjvSbevnGY
	 aNA0xY3yRhQIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 813C840768;
	Thu,  3 Apr 2025 09:51:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F2FBF119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 09:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E466883FF0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 09:51:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8KZ4WAXXOnOB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 09:51:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3FE4583FEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FE4583FEF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FE4583FEF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 09:51:39 +0000 (UTC)
X-CSE-ConnectionGUID: ID5MYXikQkK2EsPIrJw97w==
X-CSE-MsgGUID: +y2FzD1bQNao8meNQKCKjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="55701498"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="55701498"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:38 -0700
X-CSE-ConnectionGUID: EIPOIixUSbOSW6P+fdJU4g==
X-CSE-MsgGUID: GIjPAyN5TX+hQT/KPhPjKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="126952994"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.246.0.161])
 ([10.246.0.161])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:37 -0700
Message-ID: <125533c8-44fe-4a87-af16-d934800b82d2@linux.intel.com>
Date: Thu, 3 Apr 2025 11:51:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>,
 Simon Horman <horms@kernel.org>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250319121743.GB280585@kernel.org>
 <PH0PR11MB5013F63C43277D7466F4F95896AC2@PH0PR11MB5013.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <PH0PR11MB5013F63C43277D7466F4F95896AC2@PH0PR11MB5013.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673899; x=1775209899;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MtcQ7DZ5Rlv3F5xnlhEZiUe0iQ16fg6nrovE73Yt0LI=;
 b=AMV4S2ef8xwWeUaqZV5+rzBdKN54j6dOfLax+dkheYj/6OwMirENXuf3
 wLSfAwQ1FGSqJ1hmxvfaYDChhDRBe8ISLOGJ2kgnGuFaqqgnTTBOfaE0v
 z61cTVK603obcIhfCI52dqeikP97iNwhn7bUzKB7RakzpDzxkAhcymew4
 kSZdI+fcGryuzCytu0b4CGdYGbbieAPTm4yTWH4qR/xL1+EigPSmf5DeP
 9UFdgFUYQd1oZvbDfijDXFRV/MweTp822pW1rBoIaZr72fxpMLuIJbkB1
 XUPZn9UgnsIkNaxLDQqun6U5JIVk8nJEFK6JcA6kZ/lff1Yo+B0yw1nzR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AMV4S2ef
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message
 for insufficient filter space
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

Hi Sujai,

I reverified the issue, and with the patch, I am now getting the correct 
error about insufficient space, when attempting to add to many rules. 
The error you’re encountering might be caused by a different issue.

Could you please test it again or send me offline the set of rules you 
are adding? It seems to be working fine on my side.

Regards,
Martyna

On 4/1/2025 11:49 AM, Buvaneswaran, Sujai wrote:
> Hi,
> 
> I tried to add tc rules to the HW beyond the maximum limit and still noticing the below error message instead of error message mentioned in the patch.
> 
> [root@dell-cnv-sut ~]# tc filter add dev ens5f0np0 ingress protocol ip prio 0 flower skip_sw dst_mac 00:f0:01:00:00:0E action mirred egress redirect dev ens5f0npf0vf0
> Error: ice: Unable to add filter due to error.
> We have an error talking to the kernel
> 
> [root@dell-cnv-sut ~]# tc filter show dev ens5f0np0 root | grep -c in_hw
> 16306
> 
> Please check it.
> 
> Thanks,
> Sujai B
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Simon Horman
>> Sent: Wednesday, March 19, 2025 5:48 PM
>> To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Michal
>> Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message for
>> insufficient filter space
>>
>> On Fri, Mar 14, 2025 at 09:11:11AM +0100, Martyna Szapar-Mudlaw wrote:
>>> When adding a rule to switch through tc, if the operation fails due to
>>> not enough free recipes (-ENOSPC), provide a clearer error message:
>>> "Unable to add filter: insufficient space available."
>>>
>>> This improves user feedback by distinguishing space limitations from
>>> other generic failures.
>>>
>>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> Signed-off-by: Martyna Szapar-Mudlaw
>>> <martyna.szapar-mudlaw@linux.intel.com>
>>
>> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> 

