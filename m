Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 985269F6E1C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 20:21:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1669A416CC;
	Wed, 18 Dec 2024 19:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MI5qgJrzHdcI; Wed, 18 Dec 2024 19:21:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54F6F40604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734549694;
	bh=fjmkeAFTdbSZjtHMJws8A6MlB+V8KeXQTp/OqbPGH+s=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CrkRpCCDCZFLgph3elVgWSanvrogCABadud6elU44rh5c0RCt81AdCNv0gBAQzWHg
	 mBDKeTEzFKexcD+4KjlNUgOz0Bnmmf14j8vD4q7yE9vq+p1rhfNdmpAj1Lbnxy9OVc
	 XQabIHYUmD0CyIHy37vM/lMkIrUL4uYSSCgSIJVGN01CYY+Va8DIqI7evJtFmkbUES
	 xMd5w6E22zMyIAfiyJmQkgzp+Q1Soh78R0uCjOrsRELHtfi486wSRu4Cy9YNFgaZuR
	 DIQSEddhqz4W6TC8lrtC/hsJvwKVJRiEhijXMBBYLDMFJQBqL3SZknM1+Zdg9vjrCP
	 22oXKu9v4ufpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54F6F40604;
	Wed, 18 Dec 2024 19:21:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 62FEBCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 42F1C80CA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f9D05LNug9XC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 19:21:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.135;
 helo=mx25lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F0A380C5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F0A380C5A
Received: from mx25lb.world4you.com (mx25lb.world4you.com [81.19.149.135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F0A380C5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:21:31 +0000 (UTC)
Received: from [88.117.62.55] (helo=[10.0.0.160])
 by mx25lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tNzbi-000000006xh-3u82; Wed, 18 Dec 2024 20:21:19 +0100
Message-ID: <af154371-8513-4ff2-a288-c8301cc8c65c@engleder-embedded.com>
Date: Wed, 18 Dec 2024 20:21:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 kuba@kernel.org, linux-pci@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, bhelgaas@google.com, pmenzel@molgen.mpg.de,
 Gerhard Engleder <eg@keba.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <20241214191623.7256-1-gerhard@engleder-embedded.com>
 <231abdb7-3b16-4c3c-be17-5d0e6a556f28@intel.com>
 <047738af-69af-49aa-ae91-7dbca40ae559@engleder-embedded.com>
 <57948d32-bd6f-473c-a7e6-90185ea41986@intel.com>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <57948d32-bd6f-473c-a7e6-90185ea41986@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fjmkeAFTdbSZjtHMJws8A6MlB+V8KeXQTp/OqbPGH+s=; b=eJPK66ZAJK3ZdxXkkqMYNnOrxS
 HjjOJcgNF8Pf3MSKvY+LdxvtevtvjVHCeAMFPJahbVeRz5VTEL7VlOnhDcNzYzOKq433lDDxR37Ye
 DduaYmpqLAeus/2CTgRSOcW3zogsQdHZ1Aa/xr3ppq+/1uAh/jzuSmPrZVMjBFiNUv4M=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=eJPK66ZA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Fix real-time
 violations on link up
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

On 18.12.24 09:36, Przemek Kitszel wrote:
> On 12/16/24 20:23, Gerhard Engleder wrote:
>>>> @@ -331,8 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct 
>>>> e1000_hw *hw,
>>>>       }
>>>>       /* replace the entire MTA table */
>>>> -    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
>>>> +    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>>>>           E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw- 
>>>> >mac.mta_shadow[i]);
>>>> +
>>>> +        /* do not queue up too many posted writes to prevent increased
>>>> +         * latency for other devices on the interconnect
>>>> +         */
>>>> +        if ((i % 8) == 0 && i != 0)
>>>> +            e1e_flush();
>>>
>>>
>>> I would prefer to avoid adding this code to all devices, particularly 
>>> those that don't operate on real-time systems. Implementing this code 
>>> will introduce three additional MMIO transactions which will increase 
>>> the driver start time in various flows (up, probe, etc.).
>>>
>>> Is there a specific reason not to use if 
>>> (IS_ENABLED(CONFIG_PREEMPT_RT)) as Andrew initially suggested?
>>
>> Andrew made two suggestions: IS_ENABLED(CONFIG_PREEMPT_RT) which I used
>> in the first version after the RFC. And he suggested to check for a
>> compromise between RT and none RT performance, as some distros might
>> enable PREEMPT_RT in the future.
>> Przemek suggested to remove the PREEMPT_RT check as "this change sounds
>> reasonable also for the standard kernel" after the first version with
>> IS_ENABLED(CONFIG_PREEMPT_RT).
>>
>> I used the PREEMPT_RT dependency to limit effects to real-time systems,
>> to not make none real-time systems slower. But I could also follow the
>> reasoning of Andrew and Przemek. With that said, I have no problem to
>> add IS_ENABLED(CONFIG_PREEMPT_RT) again.
>>
>> Gerhard
> 
> I'm also fine with limiting the change to RT kernels.

I will add IS_ENABLED(CONFIG_PREEMPT_RT).

Thanks!

Gerhard
