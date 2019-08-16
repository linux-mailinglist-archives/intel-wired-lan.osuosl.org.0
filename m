Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DD78FAE4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 08:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B1D7884EA;
	Fri, 16 Aug 2019 06:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3bIPY81h7ru9; Fri, 16 Aug 2019 06:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90403884E7;
	Fri, 16 Aug 2019 06:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D13931BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 06:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CAABF884E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 06:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjGzKpJzlKvr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 06:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B279884E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 06:26:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 23:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="182095397"
Received: from samudral-mobl1.amr.corp.intel.com (HELO [10.251.21.3])
 ([10.251.21.3])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2019 23:25:55 -0700
To: Jakub Kicinski <jakub.kicinski@netronome.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <20190815122844.52eeda08@cakuba.netronome.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <f9df4d0e-c5f2-036d-994c-3162274820ea@intel.com>
Date: Thu, 15 Aug 2019 23:25:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815122844.52eeda08@cakuba.netronome.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, tom.herbert@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/15/2019 12:28 PM, Jakub Kicinski wrote:
> On Wed, 14 Aug 2019 20:46:18 -0700, Sridhar Samudrala wrote:
>> This patch series introduces XDP_SKIP_BPF flag that can be specified
>> during the bind() call of an AF_XDP socket to skip calling the BPF
>> program in the receive path and pass the buffer directly to the socket.
>>
>> When a single AF_XDP socket is associated with a queue and a HW
>> filter is used to redirect the packets and the app is interested in
>> receiving all the packets on that queue, we don't need an additional
>> BPF program to do further filtering or lookup/redirect to a socket.
>>
>> Here are some performance numbers collected on
>>    - 2 socket 28 core Intel(R) Xeon(R) Platinum 8180 CPU @ 2.50GHz
>>    - Intel 40Gb Ethernet NIC (i40e)
>>
>> All tests use 2 cores and the results are in Mpps.
>>
>> turbo on (default)
>> ---------------------------------------------	
>>                        no-skip-bpf    skip-bpf
>> ---------------------------------------------	
>> rxdrop zerocopy           21.9         38.5
>> l2fwd  zerocopy           17.0         20.5
>> rxdrop copy               11.1         13.3
>> l2fwd  copy                1.9          2.0
>>
>> no turbo :  echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo
>> ---------------------------------------------	
>>                        no-skip-bpf    skip-bpf
>> ---------------------------------------------	
>> rxdrop zerocopy           15.4         29.0
>> l2fwd  zerocopy           11.8         18.2
>> rxdrop copy                8.2         10.5
>> l2fwd  copy                1.7          1.7
>> ---------------------------------------------	
> 
> Could you include a third column here - namely the in-XDP performance?
> AFAIU the way to achieve better performance with AF_XDP is to move the
> fast path into the kernel's XDP program..

The in-xdp drop that can be measured with xdp1 is lower than rxdrop
zerocopy with skip-bpf although in-xdp drop uses only 1 core. af-xdp 
1-core performance would improve with need-wakeup or busypoll patches 
and based on early experiments so far af-xdp with need-wakeup/busypoll + 
skip-bpf perf is higher than in-xdp drop.

Will include in-xdp drop data too in the next revision.

> 
> Maciej's work on batching XDP program's execution should lower the
> retpoline overhead, without leaning close to the bypass model.
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
