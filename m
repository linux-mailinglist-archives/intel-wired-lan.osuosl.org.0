Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 394B2D0737
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 08:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4AF887739;
	Wed,  9 Oct 2019 06:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bffj6iI-s--k; Wed,  9 Oct 2019 06:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 554628772F;
	Wed,  9 Oct 2019 06:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95D701BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 06:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90F0A2286F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 06:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yhbu8JDRPEFQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 06:30:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 8638D204B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 06:30:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 23:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="200037603"
Received: from samudral-mobl1.amr.corp.intel.com (HELO [10.254.13.114])
 ([10.254.13.114])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2019 23:30:00 -0700
To: Jakub Kicinski <jakub.kicinski@netronome.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <20191008174919.2160737a@cakuba.netronome.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <ce255470-6bf7-0ba4-c24f-0808e3331977@intel.com>
Date: Tue, 8 Oct 2019 23:29:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008174919.2160737a@cakuba.netronome.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/4] Enable direct receive on
 AF_XDP sockets
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



On 10/8/2019 5:49 PM, Jakub Kicinski wrote:
> On Mon,  7 Oct 2019 23:16:51 -0700, Sridhar Samudrala wrote:
>> This is a rework of the following patch series
>> https://lore.kernel.org/netdev/1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com/#r
>> that tried to enable direct receive by bypassing XDP program attached
>> to the device.
>>
>> Based on the community feedback and some suggestions from Bjorn, changed
>> the semantics of the implementation to enable direct receive on AF_XDP
>> sockets that are bound to a queue only when there is no normal XDP program
>> attached to the device.
>>
>> This is accomplished by introducing a special BPF prog pointer (DIRECT_XSK)
>> that is attached at the time of binding an AF_XDP socket to a queue of a
>> device. This is done only if there is no other XDP program attached to
>> the device. The normal XDP program has precedence and will replace the
>> DIRECT_XSK prog if it is attached later. The main reason to introduce a
>> special BPF prog pointer is to minimize the driver changes. The only change
>> is to use the bpf_get_prog_id() helper when QUERYING the prog id.
>>
>> Any attach of a normal XDP program will take precedence and the direct xsk
>> program will be removed. The direct XSK program will be attached
>> automatically when the normal XDP program is removed when there are any
>> AF_XDP direct sockets associated with that device.
>>
>> A static key is used to control this feature in order to avoid any overhead
>> for normal XDP datapath when there are no AF_XDP sockets in direct-xsk mode.
> 
> Don't say that static branches have no overhead. That's dishonest.

I didn't mean to say no overhead, but the overhead is minimized using 
static_branch_unlikely()

> 
>> Here is some performance data i collected on my Intel Ivybridge based
>> development system (Intel(R) Xeon(R) CPU E5-2697 v2 @ 2.70GHz)
>> NIC: Intel 40Gb ethernet (i40e)
>>
>> xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
>>     default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
>>     direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
>> 6.1x improvement in drop rate
>>
>> xdpsock rxdrop 2 core (app and queue's irq pinned to different cores)
>>     default : taskset -c 3 ./xdpsock -i enp66s0f0 -r -q 1
>>     direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -r -d -q 1
>> 6x improvement in drop rate
>>
>> xdpsock l2fwd 1 core (both app and queue's irq pinned to the same core)
>>     default : taskset -c 1 ./xdpsock -i enp66s0f0 -l -q 1
>>     direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -l -d -q 1
>> 3.5x improvement in l2fwd rate
>>
>> xdpsock rxdrop 2 core (app and queue'sirq pinned to different cores)
>>     default : taskset -c 3 ./xdpsock -i enp66s0f0 -l -q 1
>>     direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -l -d -q 1
>> 4.5x improvement in l2fwd rate
> 
> I asked you to add numbers for handling those use cases in the kernel
> directly.

Forgot to explicitly mention that I didn't see any regressions with 
xdp1, xdp2 or xdpsock in default mode with these patches. Performance 
remained the same.

> 
>> dpdk-pktgen is used to send 64byte UDP packets from a link partner and
>> ethtool ntuple flow rule is used to redirect packets to queue 1 on the
>> system under test.
> 
> Obviously still nack from me.
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
