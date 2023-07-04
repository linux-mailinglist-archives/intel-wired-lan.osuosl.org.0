Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE48746D9F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 11:35:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85E9460E36;
	Tue,  4 Jul 2023 09:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85E9460E36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688463321;
	bh=okz9miUJIqnOQkAyqWv4xtPkBJ2opAXv4QFcgfaOphs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lwfhq55S7vjfsW2WAGvK5jlDFgFgCEA++G/X8QndJP90or6xsVxf4DjvLJ8OHgPWe
	 duIIWf3qicylQ3Y/9VTgJrSGcA13J+OmdqemuqSGhsn5R/8141Tl3xtAEMtGv85Fbj
	 IUGNDKbLHPIjiB3aMSB8Rn4BXAY3k9r9dNiK7KP0lPihZ2wQMbabQrPFotPqIVFuLW
	 2NBa8cJfg+HMEg0tEcZB8j+RzocRoWT7EZ+BUQvfoN26ey+3yjtjy/zBrBWFVzFE6Z
	 X388HqPGhSCDgaUAhcBtAC6pMZmIlblDcxEmx/Ic8jAnATA0S0jibTjm1GqEi79be8
	 KtmqRTFHpI1ZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KE3DN4Kn6VpD; Tue,  4 Jul 2023 09:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35627606B0;
	Tue,  4 Jul 2023 09:35:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35627606B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD63C1BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B480681D46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B480681D46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ztJiS8UUWcN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 09:35:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AAE281CE7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AAE281CE7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:35:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="366564137"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="366564137"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="696093980"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="696093980"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.63])
 ([10.13.12.63])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:35:01 -0700
Message-ID: <6136a4bd-1818-f875-5355-547ffb3bd25b@linux.intel.com>
Date: Tue, 4 Jul 2023 12:34:58 +0300
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
 <20230619100858.116286-5-florian.kauer@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230619100858.116286-5-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688463306; x=1719999306;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KzSG8zPwxiuEhCxKa+1sGQKJsFvciwT8AUYmTM/7rrg=;
 b=g1pxPlxyDAQmUmUeTSFRPPMWeKPEU5JshDwtR8u0qmblmPGagqYn/A7R
 tzIOOMKzBXKzyfji3rVMSfeKsj9ZFXhR30ysK+3hOya7hOaE+1jKWiX26
 m2x9PWvJtdCm/zCKEhySDXUNGJm+fVp+0zLlQVoSMI95uOOxU2ToyQ82i
 yGFpMoTgZ0OfkIRM92fFa6B4fEz9DFLIC5+Fj0V6OIRJZlrCYTc9MRqgE
 fFOLQ3pAREKfM3v4v7OHBBDbDKFdBv1YuGkXXVv0lPSkqK5PUuDojGZYw
 r4SYB9O+Ch6D+Hsd+lYBml5O0TOE4bpfnUtqfK/2sIvf16E3Dvixtmygq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g1pxPlxy
Subject: Re: [Intel-wired-lan] [PATCH net v2 4/6] igc: No strict mode in
 pure launchtime/CBS offload
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
> The flags IGC_TXQCTL_STRICT_CYCLE and IGC_TXQCTL_STRICT_END
> prevent the packet transmission over slot and cycle boundaries.
> This is important for taprio offload where the slots and
> cycles correspond to the slots and cycles configured for the
> network.
> 
> However, the Qbv offload feature of the i225 is also used for
> enabling TX launchtime / ETF offload. In that case, however,
> the cycle has no meaning for the network and is only used
> internally to adapt the base time register after a second has
> passed.
> 
> Enabling strict mode in this case would unneccesarily prevent
> the transmission of certain packets (i.e. at the boundary of a
> second) and thus interfers with the ETF qdisc that promises
> transmission at a certain point in time.
> 
> Similar to ETF, this also applies to CBS offload that also should
> not be influenced by strict mode unless taprio offload would be
> enabled at the same time.
> 
> This fully reverts
> commit d8f45be01dd9 ("igc: Use strict cycles for Qbv scheduling")
> but its commit message only describes what was already implemented
> before that commit. The difference to a plain revert of that commit
> is that it now copes with the base_time = 0 case that was fixed with
> commit e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
> 
> In particular, enabling strict mode leads to TX hang situations
> under high traffic if taprio is applied WITHOUT taprio offload
> but WITH ETF offload, e.g. as in
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
>     TDH                  <d0>
>     TDT                  <f0>
>     next_to_use          <f0>
>     next_to_clean        <d0>
>   buffer_info[next_to_clean]
>     time_stamp           <ffff661f>
>     next_to_watch        <00000000245a4efb>
>     jiffies              <ffff6e48>
>     desc.status          <1048000>
> 
> Fixes: d8f45be01dd9 ("igc: Use strict cycles for Qbv scheduling")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 24 ++++++++++++++++++++++--
>   1 file changed, 22 insertions(+), 2 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
