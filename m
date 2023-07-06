Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BE1749ACC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 13:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1C9541875;
	Thu,  6 Jul 2023 11:36:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1C9541875
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688643402;
	bh=s6wwNMD7eey0N8bBV/up1kB50LwUiYr9haXqK6vPxlY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jNCAweKj0eNJnO7wOLtHe6VifjCnNePgrSiBvuv0Ds7YRXyp/whOJn8GU1OOfkn4G
	 xMp5Q0PmoGknAL/Hba+Cd6XTpkQx+SKGH3WRstDoLvo5xFWuCi0wb8SDsGgPu3sylY
	 mjQkCYyYwNoPL0+q9CFQWpu/8R9f3ZStaDRbeJS80yVBcbvRq9bzVIVKH7gK8eVLtW
	 lxMimnYC6BGNeSKO0QRfomH3s8gOim0/7rObuxcxFYFIDKnLNyvpSeX+66sk95tkrX
	 LZVwmcOjlIRtfKcrmcy2sioVHdsNZBYhwSM5l32oGnGRr5iYDf0voVX40TBsmSKtP8
	 xnHnhQbhFG7Zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NzSILQf4c48z; Thu,  6 Jul 2023 11:36:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80BE740422;
	Thu,  6 Jul 2023 11:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80BE740422
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 142FE1BF345
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 11:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE79241809
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 11:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE79241809
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZT18MEWm__d8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 11:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A1BB417FB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A1BB417FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 11:36:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="348366967"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="348366967"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 04:36:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="832912315"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="832912315"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.251.186.106])
 ([10.251.186.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 04:36:29 -0700
Message-ID: <5ba1add3-c2a0-127b-49d8-509bc0508b59@linux.intel.com>
Date: Thu, 6 Jul 2023 14:36:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Florian Kauer <florian.kauer@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
 <20230619100858.116286-7-florian.kauer@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230619100858.116286-7-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688643394; x=1720179394;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8zcb7k+92vQ8AkY1CLmC+r+SOKYrdc1egYkxSlfdBG8=;
 b=hUW/W82o/v2dGCvSB3Qq1aX06KAZQmouDJRHddhJGkFoICcr3LrXvXFx
 HXsJI7H0oFUDOhB2cmREcRiUMfabVVHDFBwtBt7nEkOFaocKscEM91qLc
 MW9GVu4xqgzeiRet88VMyfHr07nkyITa8p5SyXPxVSs3Ut+Ld2KCxewgr
 jrnYz8uItlH0ZHxJyOHNGIlUT9EYr8LlzSD1JjA+dNy2hV8CIapoE6xVx
 NzWbItcXdSeCB7kXu+wV2QnmqO55EIuPV7JU1Yekljxuom9YyDeD24mJ8
 wErmvs35G42FWkkIC/+l5lXB2p17VM28ZL4C51vXptFeU6L5kIB6ZYmaF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hUW/W82o
Subject: Re: [Intel-wired-lan] [PATCH net v2 6/6] igc: Fix inserting of
 empty frame for launchtime
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/19/2023 13:08, Florian Kauer wrote:
> The insertion of an empty frame was introduced with
> commit db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
> in order to ensure that the current cycle has at least one packet if
> there is some packet to be scheduled for the next cycle.
> 
> However, the current implementation does not properly check if
> a packet is already scheduled for the current cycle. Currently,
> an empty packet is always inserted if and only if
> txtime >= end_of_cycle && txtime > last_tx_cycle
> but since last_tx_cycle is always either the end of the current
> cycle (end_of_cycle) or the end of a previous cycle, the
> second part (txtime > last_tx_cycle) is always true unless
> txtime == last_tx_cycle.
> 
> What actually needs to be checked here is if the last_tx_cycle
> was already written within the current cycle, so an empty frame
> should only be inserted if and only if
> txtime >= end_of_cycle && end_of_cycle > last_tx_cycle.
> 
> This patch does not only avoid an unnecessary insertion, but it
> can actually be harmful to insert an empty packet if packets
> are already scheduled in the current cycle, because it can lead
> to a situation where the empty packet is actually processed
> as the first packet in the upcoming cycle shifting the packet
> with the first_flag even one cycle into the future, finally leading
> to a TX hang.
> 
> The TX hang can be reproduced on a i225 with:
> 
>      sudo tc qdisc replace dev enp1s0 parent root handle 100 taprio \
> 	    num_tc 1 \
> 	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
> 	    queues 1@0 \
> 	    base-time 0 \
> 	    sched-entry S 01 300000 \
> 	    flags 0x1 \
> 	    txtime-delay 500000 \
> 	    clockid CLOCK_TAI
>      sudo tc qdisc replace dev enp1s0 parent 100:1 etf \
> 	    clockid CLOCK_TAI \
> 	    delta 500000 \
> 	    offload \
> 	    skip_sock_check
> 
> and traffic generator
> 
>      sudo trafgen -i traffic.cfg -o enp1s0 --cpp -n0 -q -t1400ns
> 
> with traffic.cfg
> 
>      #define ETH_P_IP        0x0800
> 
>      {
>        /* Ethernet Header */
>        0x30, 0x1f, 0x9a, 0xd0, 0xf0, 0x0e,  # MAC Dest - adapt as needed
>        0x24, 0x5e, 0xbe, 0x57, 0x2e, 0x36,  # MAC Src  - adapt as needed
>        const16(ETH_P_IP),
> 
>        /* IPv4 Header */
>        0b01000101, 0,   # IPv4 version, IHL, TOS
>        const16(1028),   # IPv4 total length (UDP length + 20 bytes (IP header))
>        const16(2),      # IPv4 ident
>        0b01000000, 0,   # IPv4 flags, fragmentation off
>        64,              # IPv4 TTL
>        17,              # Protocol UDP
>        csumip(14, 33),  # IPv4 checksum
> 
>        /* UDP Header */
>        10,  0, 48, 1,   # IP Src - adapt as needed
>        10,  0, 48, 10,  # IP Dest - adapt as needed
>        const16(5555),   # UDP Src Port
>        const16(6666),   # UDP Dest Port
>        const16(1008),   # UDP length (UDP header 8 bytes + payload length)
>        csumudp(14, 34), # UDP checksum
> 
>        /* Payload */
>        fill('W', 1000),
>      }
> 
> and the observed message with that is for example
> 
>   igc 0000:01:00.0 enp1s0: Detected Tx Unit Hang
>     Tx Queue             <0>
>     TDH                  <32>
>     TDT                  <3c>
>     next_to_use          <3c>
>     next_to_clean        <32>
>   buffer_info[next_to_clean]
>     time_stamp           <ffff26a8>
>     next_to_watch        <00000000632a1828>
>     jiffies              <ffff27f8>
>     desc.status          <1048000>
> 
> Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
