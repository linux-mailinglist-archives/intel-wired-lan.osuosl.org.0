Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B26A33F31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 13:32:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5FDA83AD4;
	Thu, 13 Feb 2025 12:32:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ocliDMmKXJj; Thu, 13 Feb 2025 12:32:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88DC283AF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739449971;
	bh=J8CClrlVk1sLc94by5RCIoZtGW6Y5Lar8CgxSN9bY50=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=USwRy3UL/cGJoDAWPqqd+ppSyWkLZbY+iPym2afAoDxmQbyO5E30AgMVA0lHdaWnM
	 lA/6K3rIkrij+NzXHdpXVHSgfQPE1xWVVaqzof2ScCTHychEixGh5YKH7QSJ9SPwUp
	 jAk7p1UttrbwSTxV5qa8keMt8mwHfM5aPPCuzxYYW00L6pAkbKW4F6UgjzNfDAGXjt
	 gbSS8XoIK2ifPl9gzUH2fhSOc/JL+a+BCYiFhRKHEz/WeTsEjBwQpO1xt7ga9rWRmy
	 eZOLdd5t2IYJkehChH2cIQve7cXkgbQPF9y15GXIskm5TCLx7xKcZOu1wXktmHspDc
	 GIyIDXX7DFd+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88DC283AF4;
	Thu, 13 Feb 2025 12:32:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 17A72199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:32:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC84440530
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:32:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LIYJjlhLJApk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 12:32:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A8FAA404EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8FAA404EF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8FAA404EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:32:47 +0000 (UTC)
X-CSE-ConnectionGUID: 957ZSEtsRuC/qvSsy2V+LQ==
X-CSE-MsgGUID: eVuX1VCTQv6F3HoCarzkGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40020061"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40020061"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 04:32:47 -0800
X-CSE-ConnectionGUID: mpO1Da2XTIez3KJCr4zVMw==
X-CSE-MsgGUID: mTEzOXx5TQeeZz0W6XJwdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117760734"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.21.71])
 ([10.246.21.71])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 04:32:45 -0800
Message-ID: <72975a9c-0daf-4100-b31a-cee0f52e2514@linux.intel.com>
Date: Thu, 13 Feb 2025 13:32:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
 <20250213105525.GJ1615191@kernel.org>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20250213105525.GJ1615191@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739449967; x=1770985967;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RcflCDrVyBPjEwqhw+sYDxD23XYRao4CSRuywRl9PrA=;
 b=QDR0b1j0sNcz/WMHPiICsv1sdi6l3omWiYrHyI9+sh6IYfCxdTpQhCkk
 EbahgUNVE6JpTdWgkPXVZL1/pNafjBvQKxUAZH820FWyGEQdGqGo0QFH6
 HFekLSgQ9fd2DMrjazf8QqAhF8XGLvWyc3PRan2qhvj1sAiYrMCdtGhBv
 zUecqRfRO2BB+oaJokkAL5vJKS5JF53oVyQNv1laztkoXeCi6GOtFC0NT
 HNXYHR7sewv+6Yay34IGHM1PmLfJBrq5geUINkaxHCdfBn1mUaYI25aj/
 Yl8dDB5xeAshcpdSK5v4Es21L3j7ZqVwFnIu8Gx1RaQByym6l1JzX/7qi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QDR0b1j0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix deinitializing
 VF in error path
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 13.02.2025 11:55, Simon Horman wrote:
> On Tue, Feb 11, 2025 at 06:43:21PM +0100, Marcin Szycik wrote:
>> If ice_ena_vfs() fails after calling ice_create_vf_entries(), it frees
>> all VFs without removing them from snapshot PF-VF mailbox list, leading
>> to list corruption.
>>
>> Reproducer:
>>   devlink dev eswitch set $PF1_PCI mode switchdev
>>   ip l s $PF1 up
>>   ip l s $PF1 promisc on
>>   sleep 1
>>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> 
> Should the line above be "echo 0" to remove the VFs before creating VFs
> below (I'm looking at sriov_numvfs_store())?

Both "echo 1" commands fail (I'm fixing it in patch 2/2), that's why there's
no "echo 0" in between. Also, in this minimal example I'm assuming no VFs
were initially present.

Thanks for reviewing!
Marcin

>>   sleep 1
>>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>>
>> Trace (minimized):
>>   list_add corruption. next->prev should be prev (ffff8882e241c6f0), but was 0000000000000000. (next=ffff888455da1330).
>>   kernel BUG at lib/list_debug.c:29!
>>   RIP: 0010:__list_add_valid_or_report+0xa6/0x100
>>    ice_mbx_init_vf_info+0xa7/0x180 [ice]
>>    ice_initialize_vf_entry+0x1fa/0x250 [ice]
>>    ice_sriov_configure+0x8d7/0x1520 [ice]
>>    ? __percpu_ref_switch_mode+0x1b1/0x5d0
>>    ? __pfx_ice_sriov_configure+0x10/0x10 [ice]
>>
>> Sometimes a KASAN report can be seen instead with a similar stack trace:
>>   BUG: KASAN: use-after-free in __list_add_valid_or_report+0xf1/0x100
>>
>> VFs are added to this list in ice_mbx_init_vf_info(), but only removed
>> in ice_free_vfs(). Move the removing to ice_free_vf_entries(), which is
>> also being called in other places where VFs are being removed (including
>> ice_free_vfs() itself).
>>
>> Fixes: 8cd8a6b17d27 ("ice: move VF overflow message count into struct ice_mbx_vf_info")
>> Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
>> Closes: https://lore.kernel.org/intel-wired-lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com
>> Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> The comment above notwithstanding, I agree that this addresses the
> bug you have described.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

