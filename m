Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6A633714
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2019 19:47:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C8F50226DB;
	Mon,  3 Jun 2019 17:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yxQR3ii-OyU; Mon,  3 Jun 2019 17:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F40F22266F;
	Mon,  3 Jun 2019 17:47:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06C1B1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2019 13:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02FC385A58
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2019 13:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2gTAeCobSNUa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2019 13:51:52 +0000 (UTC)
X-Greylist: delayed 00:05:52 by SQLgrey-1.7.6
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2AE0F85551
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2019 13:51:52 +0000 (UTC)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x53Dju63027460;
 Mon, 3 Jun 2019 08:45:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559569556;
 bh=+gvH7Dpu2s1nIUjNP9+9ePDf/1nIaIoG15+exRbSbnI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=B5VxEsybgadMhy1IZs6tAR5T5C9tIiS6pgMCW7fyrDW3rije1i+E6tpVmenEpM+qT
 P4GJLylWd0KoLrxmM3c3i1P69w4kRi3keer6/GXKIJqycDHk19XJ03mm92Ys+xd0NG
 aYe3otm4OU3sIFxax7VAbnqmCFJjW4qlxT+LJcdE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x53Dju8D074458
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Jun 2019 08:45:56 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 3 Jun
 2019 08:45:56 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 3 Jun 2019 08:45:56 -0500
Received: from [158.218.117.39] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x53DjtSY112372;
 Mon, 3 Jun 2019 08:45:55 -0500
To: Vedang Patel <vedang.patel@intel.com>, <netdev@vger.kernel.org>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <007b6a78-48e7-e667-d84b-dec745f84603@ti.com>
Date: Mon, 3 Jun 2019 09:50:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Mailman-Approved-At: Mon, 03 Jun 2019 17:47:06 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] net/sched: Add txtime
 assist support for taprio
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
Cc: jiri@resnulli.us, l@dorileo.org, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vedang,

On 05/28/2019 01:46 PM, Vedang Patel wrote:
> Currently, we are seeing packets being transmitted outside their timeslices. We
> can confirm that the packets are being dequeued at the right time. So, the
> delay is induced after the packet is dequeued, because taprio, without any
> offloading, has no control of when a packet is actually transmitted.
> 
> In order to solve this, we are making use of the txtime feature provided by ETF
> qdisc. Hardware offloading needs to be supported by the ETF qdisc in order to
> take advantage of this feature. The taprio qdisc will assign txtime (in
> skb->tstamp) for all the packets which do not have the txtime allocated via the
> SO_TXTIME socket option. For the packets which already have SO_TXTIME set,
> taprio will validate whether the packet will be transmitted in the correct
> interval.
> 
> In order to support this, the following parameters have been added:
> - offload (taprio): This is added in order to support different offloading
>    modes which will be added in the future.
> - txtime-delay (taprio): this is the time the packet takes to traverse through
>    the kernel to adapter card.

I am very new to this TC and QoS handling of Linux kernel and TSN. So 
sorry some of the  questions below are very basic in nature. I would 
soon would be working to add this support in our platform based on this.
So please answer.

Is txtime-delay from the instance qdisc de-queue the packet to the time
packets get onto the wire? I am wondering if this time is deterministic
or we have some way to ensure this can be tuned to meet a max value?
Also how would one calculate this value or have to measure it?

> - skip_sock_check (etf): etf qdisc currently drops any packet which does not
>    have the SO_TXTIME socket option set. This check can be skipped by specifying
>    this option.
> 
> Following is an example configuration:
> 
> $ tc qdisc replace dev $IFACE parent root handle 100 taprio \\
>        num_tc 3 \\
>        map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \\
>        queues 1@0 1@0 1@0 \\
>        base-time $BASE_TIME \\
>        sched-entry S 01 300000 \\
>        sched-entry S 02 300000 \\
>        sched-entry S 04 400000 \\
>        offload 2 \\
>        txtime-delay 40000 \\
>        clockid CLOCK_TAI
> 

Could you tell me what is CLOCK_TAI?? I see below in the source code for
the definition in include/uapi/linux/time.h

/*
  * The driver implementing this got removed. The clock ID is kept as a
  * place holder. Do not reuse!
  */
#define CLOCK_SGI_CYCLE			10
#define CLOCK_TAI			11

So why do I see such defines being used in the example that is being
removed?

AFAIK, From the usage point of view, TSN requires the network being
synchronized through linux PTP. For synchronization phc2sys is used to
synchronize system time to the PHC. So why don't one use system time for
this?

So application will use clock_gettime() to know current time and
schedule the packet for transmission as well as user would use scripts
or such to check current system time and issue tc command above. So the
command should use CLOCK_REALTIME in that case. So all h/w and software
are aligned to the same time source. Or Have I understood it wrong? I am
assuming that for the offloaded case, h/w schedule Gate open, send
packet etc are synchronized to the PHC or use a translated time w.r.t 
the common time (network time. Assuming PHC tracks this).

Thanks in advance for clarifying this.

> $ tc qdisc replace dev $IFACE parent 100:1 etf \\
>        offload delta 200000 clockid CLOCK_TAI skip_sock_check
> 
> Here, the "offload" parameter is indicating that the TXTIME_OFFLOAD mode is
> enabled. Also, that all the traffic classes have been assigned the same queue.
> This is to prevent the traffic classes in the lower priority queues from
> getting starved. Note that this configuration is specific to the i210 ethernet
> card. Other network cards where the hardware queues are given the same
> priority, might be able to utilize more than one queue.
> 
> Following are some of the other highlights of the series:
> - Fix a bug where hardware timestamping and SO_TXTIME options cannot be used
>    together. (Patch 1)
> - Introduce hardware offloading. This patch introduces offload parameter which
>    can be used to enable the txtime offload mode. It will also support enabling
>    full offload when the support is available in drivers. (Patch 3)
> - Make TxTime assist mode work with TCP packets. (Patch 6 & 7)
> 
> 
> The following changes are recommended to be done in order to get the best
> performance from taprio in this mode:
> # ip link set dev enp1s0 mtu 1514

May I know why MTU is changed to 1514 to include the Ethernet header?

> # ethtool -K eth0 gso off
> # ethtool -K eth0 tso off
> # ethtool --set-eee eth0 eee off

Could you please explain why these are needed?

Thanks

Murali
> 
> Thanks,
> Vedang Patel
> 
> Vedang Patel (6):
>    igb: clear out tstamp after sending the packet.
>    etf: Add skip_sock_check
>    taprio: calculate cycle_time when schedule is installed
>    taprio: Add support for txtime offload mode.
>    taprio: make clock reference conversions easier
>    taprio: Adjust timestamps for TCP packets.
> 
> Vinicius Costa Gomes (1):
>    taprio: Add the skeleton to enable hardware offloading
> 
>   drivers/net/ethernet/intel/igb/igb_main.c |   1 +
>   include/uapi/linux/pkt_sched.h            |   6 +
>   net/sched/sch_etf.c                       |  10 +
>   net/sched/sch_taprio.c                    | 548 ++++++++++++++++++++--
>   4 files changed, 532 insertions(+), 33 deletions(-)
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
