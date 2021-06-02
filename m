Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1D63983DF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jun 2021 10:09:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43C3540349;
	Wed,  2 Jun 2021 08:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oI6_1EbGzsIr; Wed,  2 Jun 2021 08:09:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF49240354;
	Wed,  2 Jun 2021 08:09:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0D8E1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 08:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD3BA8293D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 08:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YbqlbRbqVnP3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jun 2021 08:09:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6BA9828FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 08:09:40 +0000 (UTC)
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@iogearbox.net>)
 id 1loLwV-0002ok-8U; Wed, 02 Jun 2021 10:09:35 +0200
Received: from [85.7.101.30] (helo=linux-2.home)
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1loLwU-000CT0-Vm; Wed, 02 Jun 2021 10:09:35 +0200
To: Jussi Maki <joamaki@gmail.com>, Robin Murphy <robin.murphy@arm.com>
References: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
 <cc58c09e-bbb5-354a-2030-bf8ebb2adc86@iogearbox.net>
 <7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com>
 <CAHn8xckNt3smeQPi3dgq5i_3vP7KwU45pnP5OCF8nOV_QEdyMA@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <7c04eeea-22d3-c265-8e1e-b3f173f2179f@iogearbox.net>
Date: Wed, 2 Jun 2021 10:09:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAHn8xckNt3smeQPi3dgq5i_3vP7KwU45pnP5OCF8nOV_QEdyMA@mail.gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26188/Tue Jun  1 13:07:16 2021)
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

On 6/1/21 7:42 PM, Jussi Maki wrote:
> Hi Robin,
> 
> On Tue, Jun 1, 2021 at 2:39 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>> The regression shows as a significant drop in throughput as measured
>>>> with "super_netperf" [0],
>>>> with measured bandwidth of ~95Gbps before and ~35Gbps after:
>>
>> I guess that must be the difference between using the flush queue
>> vs. strict invalidation. On closer inspection, it seems to me that
>> there's a subtle pre-existing bug in the AMD IOMMU driver, in that
>> amd_iommu_init_dma_ops() actually runs *after* amd_iommu_init_api()
>> has called bus_set_iommu(). Does the patch below work?
> 
> Thanks for the quick response & patch. I tried it out and indeed it
> does solve the issue:
> 
> # uname -a
> Linux zh-lab-node-3 5.13.0-rc3-amd-iommu+ #31 SMP Tue Jun 1 17:12:57
> UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
> root@zh-lab-node-3:~# ./super_netperf 32 -H 172.18.0.2
> 95341.2
> 
> root@zh-lab-node-3:~# uname -a
> Linux zh-lab-node-3 5.13.0-rc3-amd-iommu-unpatched #32 SMP Tue Jun 1
> 17:29:34 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
> root@zh-lab-node-3:~# ./super_netperf 32 -H 172.18.0.2
> 33989.5

Robin, probably goes without saying, but please make sure to include ...

Fixes: a250c23f15c2 ("iommu: remove DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE")

... to your fix in [0], maybe along with another Fixes tag pointing to the original
commit adding this issue. But certainly a250c23f15c2 would be good given the regression
was uncovered on that one first, so that Greg et al have a chance to pick this fix up
for stable kernels.

Thanks everyone!

   [0] https://lore.kernel.org/bpf/7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
