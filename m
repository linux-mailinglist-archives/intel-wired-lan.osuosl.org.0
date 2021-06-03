Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D24A239A1E2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jun 2021 15:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63ECE83D5D;
	Thu,  3 Jun 2021 13:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ofOzYfP-QsR9; Thu,  3 Jun 2021 13:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8550F83CC0;
	Thu,  3 Jun 2021 13:10:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3970A1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 13:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2503B608F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 13:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4uIbphL4DXGV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jun 2021 13:09:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90CCE608DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 13:09:55 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C91721063;
 Thu,  3 Jun 2021 06:09:54 -0700 (PDT)
Received: from [10.57.73.64] (unknown [10.57.73.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14F733F774;
 Thu,  3 Jun 2021 06:09:52 -0700 (PDT)
To: Jussi Maki <joamaki@gmail.com>
References: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
 <cc58c09e-bbb5-354a-2030-bf8ebb2adc86@iogearbox.net>
 <7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com>
 <CAHn8xckNt3smeQPi3dgq5i_3vP7KwU45pnP5OCF8nOV_QEdyMA@mail.gmail.com>
 <7c04eeea-22d3-c265-8e1e-b3f173f2179f@iogearbox.net>
 <705f90c3-b933-8863-2124-3fea7fdbd81a@arm.com>
 <CAHn8xc=1g8bzV-uxaJAYpJ114rR7MLzth=4jyDG329ZwEG+kpg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c434b9b4-5a8c-a7a9-4e01-b6d8bd40b918@arm.com>
Date: Thu, 3 Jun 2021 14:09:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAHn8xc=1g8bzV-uxaJAYpJ114rR7MLzth=4jyDG329ZwEG+kpg@mail.gmail.com>
Content-Language: en-GB
Subject: Re: [Intel-wired-lan] Regression 5.12.0-rc4 net: ice: significant
 throughput drop
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
Cc: jroedel@suse.de, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, davem@davemloft.net, iommu@lists.linux-foundation.org,
 intel-wired-lan@lists.osuosl.org, gregkh@linuxfoundation.org,
 bpf <bpf@vger.kernel.org>, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-06-03 13:32, Jussi Maki wrote:
> On Wed, Jun 2, 2021 at 2:49 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>> Thanks for the quick response & patch. I tried it out and indeed it
>>>> does solve the issue:
>>
>> Cool, thanks Jussi. May I infer a Tested-by tag from that?
> 
> Of course!
> 
>> Given that the race looks to have been pretty theoretical until now, I'm
>> not convinced it's worth the bother of digging through the long history
>> of default domain and DMA ops movement to figure where it started, much
>> less attempt invasive backports. The flush queue change which made it
>> apparent only landed in 5.13-rc1, so as long as we can get this in as a
>> fix in the current cycle we should be golden - in the meantime, note
>> that booting with "iommu.strict=0" should also restore the expected
>> behaviour.
>>
>> FWIW I do still plan to resend the patch "properly" soon (in all honesty
>> it wasn't even compile-tested!)
> 
> BTW, even with the patch there's quite a bit of spin lock contention
> coming from ice_xmit_xdp_ring->dma_map_page_attrs->...->alloc_iova.
> CPU load drops from 85% to 20% (~80Mpps, 64b UDP) when iommu is
> disabled. Is this type of overhead to be expected?

Yes, IOVA allocation can still be a bottleneck - the percpu caching 
system mostly alleviates it, but certain workloads can still defeat 
that, and if you're spending significant time in alloc_iova() rather 
than alloc_iova_fast() then it sounds like yours is one of them.

If you're using small IOVA sizes which *should* be cached, then you 
might be running into a pathological case of thrashing the global depot. 
I've ranted before about the fixed MAX_GLOBAL_MAGS probably being too 
small for systems with more than 16 CPUs, which on a modern AMD system I 
imagine you may well have.

If on the other hand your workload is making larger mappings above the 
IOVA caching threshold, then please take a look at John's series for 
making that tuneable:

https://lore.kernel.org/linux-iommu/1622557781-211697-1-git-send-email-john.garry@huawei.com/

Cheers,
Robin.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
