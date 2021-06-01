Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57103396DCC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 09:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D78C40230;
	Tue,  1 Jun 2021 07:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBQOrm5uTLgT; Tue,  1 Jun 2021 07:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56A76401F1;
	Tue,  1 Jun 2021 07:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7D431BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 07:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B453083CD7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 07:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-pgyO7Xi9FR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 07:13:42 +0000 (UTC)
X-Greylist: delayed 00:15:58 by SQLgrey-1.8.0
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 972F983CD4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 07:13:42 +0000 (UTC)
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@iogearbox.net>)
 id 1lnyLK-0008hf-AT; Tue, 01 Jun 2021 08:57:38 +0200
Received: from [85.7.101.30] (helo=linux-2.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1lnyLK-000OlJ-1v; Tue, 01 Jun 2021 08:57:38 +0200
To: robin.murphy@arm.com, jroedel@suse.de
References: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <cc58c09e-bbb5-354a-2030-bf8ebb2adc86@iogearbox.net>
Date: Tue, 1 Jun 2021 08:57:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26187/Mon May 31 13:15:33 2021)
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
Cc: Jussi Maki <joamaki@gmail.com>, netdev@vger.kernel.org, hch@lst.de,
 iommu@lists.linux-foundation.org, suravee.suthikulpanit@amd.com,
 intel-wired-lan@lists.osuosl.org, bpf <bpf@vger.kernel.org>,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[ ping Robin / Joerg, +Cc Christoph ]

On 5/28/21 10:34 AM, Jussi Maki wrote:
> Hi all,
> 
> While measuring the impact of a kernel patch on our lab machines I stumbled upon
> a performance regression affecting the 100Gbit ICE nic and bisected it
> from range v5.11.1..v5.13-rc3 to the commit:
> a250c23f15c2 iommu: remove DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE
> 
> Both recent bpf-next (d6a6a55518) and linux-stable (c4681547bc) are
> affected by the issue.
> 
> The regression shows as a significant drop in throughput as measured
> with "super_netperf" [0],
> with measured bandwidth of ~95Gbps before and ~35Gbps after:
> 
> commit 3189713a1b84 (a250c23^):
> $ ./super_netperf 32 -H 172.18.0.2 -l 10
> 97379.8
> 
> commit a250c23f15c2:
> $ ./super_netperf 32 -H 172.18.0.2 -l 10
> 34097.5
> 
> The pair of test machines have this hardware:
> CPU: AMD Ryzen 9 3950X 16-Core Processor
> MB: X570 AORUS MASTER
> 0a:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
> Controller E810-C for QSFP [8086:1592] (rev 02)
> Kernel config: https://gist.github.com/joamaki/9ee11294c78a8dd2776041f67e5620e7
> 
> [0] https://github.com/borkmann/stuff/blob/master/super_netperf
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
