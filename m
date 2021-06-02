Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB8E398A03
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jun 2021 14:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B744402E2;
	Wed,  2 Jun 2021 12:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uZddtNsnZh4f; Wed,  2 Jun 2021 12:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BEEC402F0;
	Wed,  2 Jun 2021 12:49:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 432891BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 12:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F8AD403A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 12:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RhadCZe8fBSD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jun 2021 12:49:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCD91402C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 12:49:02 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07AC46D;
 Wed,  2 Jun 2021 05:49:02 -0700 (PDT)
Received: from [10.57.73.64] (unknown [10.57.73.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 080E53F719;
 Wed,  2 Jun 2021 05:48:59 -0700 (PDT)
To: Daniel Borkmann <daniel@iogearbox.net>, Jussi Maki <joamaki@gmail.com>
References: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
 <cc58c09e-bbb5-354a-2030-bf8ebb2adc86@iogearbox.net>
 <7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com>
 <CAHn8xckNt3smeQPi3dgq5i_3vP7KwU45pnP5OCF8nOV_QEdyMA@mail.gmail.com>
 <7c04eeea-22d3-c265-8e1e-b3f173f2179f@iogearbox.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <705f90c3-b933-8863-2124-3fea7fdbd81a@arm.com>
Date: Wed, 2 Jun 2021 13:48:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <7c04eeea-22d3-c265-8e1e-b3f173f2179f@iogearbox.net>
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
Cc: jroedel@suse.de, netdev@vger.kernel.org, hch@lst.de,
 iommu@lists.linux-foundation.org, suravee.suthikulpanit@amd.com,
 gregkh@linuxfoundation.org, intel-wired-lan@lists.osuosl.org,
 bpf <bpf@vger.kernel.org>, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-06-02 09:09, Daniel Borkmann wrote:
> On 6/1/21 7:42 PM, Jussi Maki wrote:
>> Hi Robin,
>>
>> On Tue, Jun 1, 2021 at 2:39 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>> The regression shows as a significant drop in throughput as measured
>>>>> with "super_netperf" [0],
>>>>> with measured bandwidth of ~95Gbps before and ~35Gbps after:
>>>
>>> I guess that must be the difference between using the flush queue
>>> vs. strict invalidation. On closer inspection, it seems to me that
>>> there's a subtle pre-existing bug in the AMD IOMMU driver, in that
>>> amd_iommu_init_dma_ops() actually runs *after* amd_iommu_init_api()
>>> has called bus_set_iommu(). Does the patch below work?
>>
>> Thanks for the quick response & patch. I tried it out and indeed it
>> does solve the issue:

Cool, thanks Jussi. May I infer a Tested-by tag from that?

>> # uname -a
>> Linux zh-lab-node-3 5.13.0-rc3-amd-iommu+ #31 SMP Tue Jun 1 17:12:57
>> UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
>> root@zh-lab-node-3:~# ./super_netperf 32 -H 172.18.0.2
>> 95341.2
>>
>> root@zh-lab-node-3:~# uname -a
>> Linux zh-lab-node-3 5.13.0-rc3-amd-iommu-unpatched #32 SMP Tue Jun 1
>> 17:29:34 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
>> root@zh-lab-node-3:~# ./super_netperf 32 -H 172.18.0.2
>> 33989.5
> 
> Robin, probably goes without saying, but please make sure to include ...
> 
> Fixes: a250c23f15c2 ("iommu: remove DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE")
> 
> ... to your fix in [0], maybe along with another Fixes tag pointing to 
> the original
> commit adding this issue. But certainly a250c23f15c2 would be good given 
> the regression
> was uncovered on that one first, so that Greg et al have a chance to 
> pick this fix up
> for stable kernels.

Given that the race looks to have been pretty theoretical until now, I'm 
not convinced it's worth the bother of digging through the long history 
of default domain and DMA ops movement to figure where it started, much 
less attempt invasive backports. The flush queue change which made it 
apparent only landed in 5.13-rc1, so as long as we can get this in as a 
fix in the current cycle we should be golden - in the meantime, note 
that booting with "iommu.strict=0" should also restore the expected 
behaviour.

FWIW I do still plan to resend the patch "properly" soon (in all honesty 
it wasn't even compile-tested!)

Cheers,
Robin.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
