Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3A09D8D57
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Nov 2024 21:19:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 515AE61631;
	Mon, 25 Nov 2024 20:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VEV5yu4sF8V1; Mon, 25 Nov 2024 20:19:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A91E56162A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732565982;
	bh=gvj8/daT4bm/MSDyzdQKh+TSEjqs2Vm77FYymcFX+dw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XtBO1Pble+WqlCOy+tXFA0M+zOB1WR2og4MaFIwhnULJtFYYxqHBXF7xPHSCKtEZh
	 ACnUGeEBFS+k9f4bng71ijx2WmNi62f2Byga3Y+mYu1DrcRDQrYD/2Y2db0YX10M6/
	 2fVmMI1YEfpCWGvBciT9zuF01cB4XyfYs9TxxBXypYvOlEkEA1Tp3Ylx+wGp+8QaNq
	 XUSe/FAlkGH86rcMPPMc1T2xChHq/HM6wHcltZnQJmc60S0WPQkm9llqqQwQzt9oDf
	 njBq0IUU7z7z48OqD3tRA7Zrw4HBqRlu/W9i2AN4M46222bHoBprtYYnrdhbkZDXz0
	 RhNROIfjwAD8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A91E56162A;
	Mon, 25 Nov 2024 20:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 396ED4961
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 20:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26C3980A5F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 20:19:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TI4hMRSFEguL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2024 20:19:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B98480A57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B98480A57
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B98480A57
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 20:19:39 +0000 (UTC)
X-CSE-ConnectionGUID: iFNMS7cjQnmIgxEcjYAGHA==
X-CSE-MsgGUID: gcBHtonhRMOXsOHIvLbELA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="36624740"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="36624740"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 12:19:38 -0800
X-CSE-ConnectionGUID: OgSz/mjLSXGkoj2itWL4uw==
X-CSE-MsgGUID: +CZ+MvLnQ6eBVsIJpgvNVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="122238582"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.84.66])
 ([10.245.84.66])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 12:19:37 -0800
Message-ID: <c661b2cb-871e-48da-80e6-df7d011024fd@linux.intel.com>
Date: Mon, 25 Nov 2024 21:19:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
References: <20241122121317.2117826-1-martyna.szapar-mudlaw@linux.intel.com>
 <DM4PR11MB61173CA962D7D88040365DA082232@DM4PR11MB6117.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <DM4PR11MB61173CA962D7D88040365DA082232@DM4PR11MB6117.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732565980; x=1764101980;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KJlb6x3NhUymu+6Y8syLqBjVhnjn19yo6hROLMRBuDM=;
 b=JA4ybip3CQbrGkBFtnW4J60RknnFn98o2IJtwK8MY6sITvMyYPI2nkqv
 5g+zsNzMTgu+xa2KOJMo6o+ZHZzLXnM7b8O/kA0HWCks9adYesEe7zhiV
 pZCny96KiIfK/CzMWFeDURDgWSBLuMRfKFxcVcXgfrrHAG1oS8vvw0RBI
 0pVPcc30o+3WHMIC1nPWQ8N8BCQ9LxCZtFkA3cYEJvD7VmV4/eVEq6BbH
 ZumZoLngQMYZU3UKkFbUmwQsqoqEBWZ93lkUaYu7PGjFobSp6QiN18D8j
 9/ErgFLtFQ/Z3P1wq5caYvT2vbgL8OS1DWLHIT7Y91uf7bQXRi31Zh5g3
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JA4ybip3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Enable XDP support
 when SRIOV is enabled
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


On 11/22/2024 4:56 PM, Fijalkowski, Maciej wrote:
>> Remove the check that prevents XDP support when SRIOV is enabled.
>> There is no reason to completely forbid the user from using XDP
>> with SRIOV.
> I think we need some more context here in commit message.
> ixgbe HW was really short on HW queues that's why probably this restriction
> was introduced in the first place.
>
> Now I believe that driver has an ability to share XDP Tx resources with locking
> being involved and that's why you can relax the previous limitation.
>
> Correct?

Right, ixgbe hardware has a limited number of hw queues. There is 
locking in place now. The reasoning behind this change is to give users 
the flexibility to use XDP with SRIOV, there may be use cases for such 
constrained scenarios, where this tradeoff is acceptable...

I'll update commit msg.

>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
>> mudlaw@linux.intel.com>
>>
>> ---
>>
>> Added CC netdev
>>
>> ---
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
>>   1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 459a539cf8db..a07e28107a42 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -10637,9 +10637,6 @@ static int ixgbe_xdp_setup(struct net_device
>> *dev, struct bpf_prog *prog)
>>   	bool need_reset;
>>   	int num_queues;
>>
>> -	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
>> -		return -EINVAL;
>> -
>>   	if (adapter->flags & IXGBE_FLAG_DCB_ENABLED)
>>   		return -EINVAL;
>>
>> --
>> 2.36.1
>>
