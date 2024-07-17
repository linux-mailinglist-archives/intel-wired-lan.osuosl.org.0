Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C5D933789
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jul 2024 09:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E40C4072B;
	Wed, 17 Jul 2024 07:02:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D-YeDKAAtrUA; Wed, 17 Jul 2024 07:02:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0DC44072E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721199738;
	bh=iXRA388MfklRXRxJXMNza5/v9HRWCxRrwaiuWMaPZHk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UxhnfS7qXr0Ih4kIKrnWgyKfUbAI5YCSfejUnz89OC6FH7pvkBpmPOgonpD4O0yjK
	 Jh2S6lEymwo/KLA/SQLO7xVE0Z7uImKSCQggyGICBhNWKtL8EUrlpLIsmHqPJcibmK
	 8L6xJDh3HTZLAtut5USKnRxDRLZeXL+1qWCDInBqpwkYzen1JbeG840xcAwiDR5U22
	 bCVEmxnCdfoPwmhVsG9JPfxj5QeG1o87NvTTDsvmJIPDmoOkWr0oKm5bTGvp6W6n6L
	 Xa3UZTDVvrpi8PMQUNfV7IiI9hk3R3/qk7z5Kvud7zIG6218+UNdq1EvA7ji2aOatJ
	 jES2UyH+zoBCA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0DC44072E;
	Wed, 17 Jul 2024 07:02:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43A9C1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 07:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B6B040728
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 07:02:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pgWpFXTYQiQO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2024 07:02:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C793140343
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C793140343
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C793140343
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 07:02:14 +0000 (UTC)
X-CSE-ConnectionGUID: t16OwmIjTy2SNHH0352Psg==
X-CSE-MsgGUID: b+vFzWijQX+y4tHdgI7H+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18530203"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18530203"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 00:02:14 -0700
X-CSE-ConnectionGUID: rO4h8ZivQwSuMP6Vw7fHag==
X-CSE-MsgGUID: V3QDW3qFR165M/E/9SLH2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,213,1716274800"; d="scan'208";a="55151063"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.74.239])
 ([10.247.74.239])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 00:02:09 -0700
Message-ID: <2c5a0dcf-f9b0-49da-9dea-0a276fa4a0d9@linux.intel.com>
Date: Wed, 17 Jul 2024 15:02:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
 <87o774u807.fsf@intel.com>
 <6bb1ba4a-41ba-4bc1-9c4b-abfb27944891@linux.intel.com>
 <87le27ssu4.fsf@intel.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <87le27ssu4.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721199735; x=1752735735;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2ORkHDg/IQyH91IGyRuUQbp/VHjRmcrzMEI+fNTKUJw=;
 b=W7yR4IY0UvpW7cpYjvHH2FBUrLqZdmGNoDqziz6xMVpgsKXmCERyE4Hf
 xG454zWa3Zk1Y2XgdtDR+XeTP1f1y4vaf/BHfCpB/0BIb/i4sgdaUGgIn
 rvmQ88sh/tdReTDalzKZXQCeUC0mMTlUd9dU3Ap9JvgY5lSDfWDT178Xz
 5V2cCEbU44Lbufv1Up30k922FO3hu3jTxrv0VlDP9qyWRpqNwSyLTRYHn
 4IkBx4rgoEhfKdwIVDXjkm2g2hizOvHCs8JPcpJSKnAaZYy0nlhbAFrK7
 cMDvxAU/CvjDPNOSv7xGpkYv/vkIPxOojX8aIclmesZqea7COPWDRAfNA
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W7yR4IY0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/7/2024 1:10 am, Vinicius Costa Gomes wrote:
> "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> writes:
> 
>> Hi Vinicius,
>>
>> On 11/7/2024 6:44 am, Vinicius Costa Gomes wrote:
>>> Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:
>>>
>>>> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
>>>> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
>>>> have been observed:
>>>>
>>>> 1. The reset adapter logics for i225 and i226 differ, although they should
>>>>      be the same according to the guidelines in I225/6 HW Design Section
>>>>      7.5.2.1 on software initialization during tx mode changes.
>>>> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>>>>      This occurs solely based on the condition  igc_is_device_id_i225() when
>>>>      calling schedule_work().
>>>> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>>>>      resets adapter for legacy->tsn tx mode transitions.
>>>> 4. qbv_count introduced in the patch is actually not needed; in this
>>>>      context, a non-zero value of qbv_count is used to indicate if tx mode
>>>>      was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>>>>      be replaced by checking the existing register
>>>>      IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
>>>>
>>>> This patch resolves all issues and enters schedule_work() to reset the
>>>> adapter only when changing tx mode. It also removes reliance on qbv_count.
>>>>
>>>> qbv_count field will be removed in a future patch.
>>>>
>>>> Test ran:
>>>>
>>>> 1. Verify reset adapter behaviour in i225/6:
>>>>      a) Enrol a new GCL
>>>>         Reset adapter observed (tx mode change legacy->tsn)
>>>>      b) Enrol a new GCL without deleting qdisc
>>>>         No reset adapter observed (tx mode remain tsn->tsn)
>>>>      c) Delete qdisc
>>>>         Reset adapter observed (tx mode change tsn->legacy)
>>>>
>>>> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>>>>      to confirm it remains resolved.
>>>>
>>>> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
>>>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>>> Reviewed-by: Simon Horman <horms@kernel.org>
>>>> ---
>>>
>>> There were a quite a few bugs, some of them my fault, on this part of
>>> the code, changing between the modes in the hardware.
>>>
>>> So I would like some confirmation that ETF offloading/LaunchTime was
>>> also tested with this change. Just to be sure.
>>>
>>> But code-wise, looks good:
>>>
>>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>>>
>>>
>>> Cheers,
>>
>>
>> Tested etf with offload, looks like working correctly.
>>
>> 1. mqprio
>> tc qdisc add dev enp1s0 handle 100: parent root mqprio num_tc 3 \
>> map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>> queues 1@0 1@1 2@2 \
>> hw 0
>>
>> No reset adapter observed.
>>
>> 2. etf with offload
>> tc qdisc replace dev enp1s0 parent 100:1 etf \
>> clockid CLOCK_TAI delta 300000 offload
>>
>> Reset adapter observed (tx mode legacy -> tsn).
>>
>> 3. delete qdisc
>> tc qdisc delete dev enp1s0 parent root handle 100
>>
>> Reset adapter observed (tx mode tsn -> legacy).
>>
> 
> That no unexpected resets are happening, is good.
> 
> But what I had in mind was some functional tests that ETF is working. I
> guess that's the only way of knowing that it's still working. Sorry that
> I wasn't clear about that.
> 
> 
> Cheers,

My bad.

Just tested ETF functionality and it is working.

1. On Tx Board
a) mqprio
    tc qdisc add dev enp1s0 handle 100: parent root mqprio num_tc 3 \
    map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
    queues 1@0 1@1 2@2 \
    hw 0
b) etf with offload
    tc qdisc replace dev enp1s0 parent 100:1 etf \
    clockid CLOCK_TAI delta 300000 offload
c) use UDP TAI app to send packets where tx timestamp is set to
    current_time + 1ms for each packet.

2. On Rx Board
a) Checked .pcap log. Observed that interval duration between each rx
    packet is 1ms


Thanks for your help.
