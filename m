Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344EEB35776
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 10:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1BF46F7F9;
	Tue, 26 Aug 2025 08:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-QLUy3VlTe0; Tue, 26 Aug 2025 08:42:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D1C86F7F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756197769;
	bh=oRgiEanhPxOttL7pNHgJZb4BLjS3+2ylGjD7dJCCA5Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RC+2dHh/INifMRbcoZaMvaJnHZMiiKA+iKrBg2lhUHDveKBtr96A9ooArLkf7M4BM
	 hJB9MM5zrpS9Wnn1wI+sPnqyYJmavp/4eRAOUr4y7GJxr+kD2RbuvSqLOfQGCu0zs0
	 UWRLiWXFQy03M7lu9knNnT4YmHrMqB+hpKsxHu2/MVP1seBncguLI3WdZ90poqIQXk
	 39Tge6VWSBMX9z0H8/9AzQfwJMrDXQ8mHojjk9CTWyAnCF+Hea+kVVsDENhRO31PNq
	 UBsetl14VhTHoB13ldPGHIvZkgzfKEvPZUYKgymvGgrnQJRMsvpHZLF83SmIQx6El3
	 eM4ejTWyzrIIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D1C86F7F6;
	Tue, 26 Aug 2025 08:42:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 62D8DB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 08:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 519C46F7AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 08:42:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSvAV_tdENAW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 08:42:46 +0000 (UTC)
X-Greylist: delayed 430 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Aug 2025 08:42:46 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5A1536F516
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A1536F516
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A1536F516
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 08:42:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B85FD601F2;
 Tue, 26 Aug 2025 08:35:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 663CCC4CEF4;
 Tue, 26 Aug 2025 08:35:32 +0000 (UTC)
Message-ID: <85c2fea0-686f-435a-a539-81491a316e46@kernel.org>
Date: Tue, 26 Aug 2025 10:35:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Christoph Petrausch <christoph.petrausch@deepl.com>,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 kernel-team <kernel-team@cloudflare.com>
References: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756197334;
 bh=ELuQg+ou7xBiKz1KkvymWiic11oJC2+Yk/UNfmBu+XI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=XXUXTdHRtuhoBfx7d00zeUzkVHX5AMLytU7xc853AwzaweHoqfP7679erW9hA+Cam
 tfC2Om9SnPE5r44govsoh+aW/SmIZCBdClpao3GfRFNZTJ8A4osKgoA1sdGJ9+EwCh
 NDgrlQBEhZirqBbsJjulK6fVRUmweeuXDbjEKi9aliCU0+9W9NL1N9ttvzMF+p2Yp9
 JsbtjJRTJfJ9wJMhsLLICwiOuEX9BgPZxc/MFE4SHECgboSIYfvxdhjmNFZ7E4nMYn
 LNm1SnseEW2itd5T6oC9xCvDPRMUqLYlD12OBocPZBMA0o2Up2W1JfDbMNRbcdIuSn
 2d/ptXgZFbadA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XXUXTdHR
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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



On 26/08/2025 01.00, Jacob Keller wrote:
> XDP_DROP performance has been tested for this version, thanks to work from
> Michal Kubiak. The results are quite promising, with 3 versions being
> compared:
> 
> * baseline net-next tree
> * v1 applied
> * v2 applied
> 
> Michal said:
> 
>    I run the XDP_DROP performance comparison tests on my setup in the way I
>    usually do. I didn't have the pktgen configured on my link partner, but I
>    used 6 instances of the xdpsock running in Tx-only mode to generate
>    high-bandwith traffic. Also, I tried to replicate the conditions according
>    to Jesper's description, making sure that all the traffic is directed to a
>    single Rx queue and one CPU is 100% loaded.
> 

Thank you for replicating the test setup.  Using xdpsock as a traffic
generator is fine, as long as we make sure that the generator TX speeds
exceeds the Device Under Test RX XDP_DROP speed.  It is also important
for the test that packets hits a single RX queue and we verify one CPU 
is 100% load, as you describe.

As a reminder the pktgen kernel module comes with ready-to-use sample 
shell-scripts[1].

  [1] https://elixir.bootlin.com/linux/v6.16.3/source/samples/pktgen

> The performance hit from v1 is replicated, and shown to be gone in v2, with
> our results showing even an increase compared to baseline instead of a
> drop. I've included the relative packet per second deltas compared against
> a baseline test with neither v1 or v2.
> 

Thanks for also replicating the performance hit from v1 as I did in [2].

To Michal: What CPU did you use?
  - I used CPU: AMD EPYC 9684X (with SRSO=IBPB)

One of the reasons that I saw a larger percentage drop is that this CPU
doesn't have DDIO/DCA, which deliver the packet to L3 cache (and a L2
cache-miss will obviously take less time than a full main memory cache-
miss). (Details: Newer AMD CPUs will get something called PCIe TLP
Processing Hints (TPH), which resembles DDIO).

Point is that I see some opportunities in driver to move some of the
prefetches earlier. But we want to make sure it benefits both CPU types,
and I can test on the AMD platform. (This CPU is a large part of our
fleet so it makes sense for us to optimize this).

> baseline to v1, no-touch:
>    -8,387,677 packets per second (17%) decrease.
> 
> baseline to v2, no-touch:
>    +4,057,000 packets per second (8%) increase!
> 
> baseline to v1, read data:
>    -411,709 packets per second (1%) decrease.
> 
> baseline to v2, read data:
>    +4,331,857 packets per second (11%) increase!

Thanks for providing these numbers.
I would also like to know the throughput PPS packet numbers before and
after, as this allows me to calculate the nanosec difference. Using
percentages are usually useful, but it can be misleading when dealing
with XDP_DROP speeds, because a small nanosec change will get
"magnified" too much.

> ---
> Changes in v2:
> - Only access shared info for fragmented frames
> - Link to v1: https://lore.kernel.org/netdev/20250815204205.1407768-4-anthony.l.nguyen@intel.com/

[2] 
https://lore.kernel.org/netdev/6e2cbea1-8c70-4bfa-9ce4-1d07b545a705@kernel.org/

> ---
>   drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>   drivers/net/ethernet/intel/ice/ice_txrx.c | 80 +++++++++++++------------------
>   2 files changed, 34 insertions(+), 47 deletions(-)

Acked-by: Jesper Dangaard Brouer <hawk@kernel.org>
