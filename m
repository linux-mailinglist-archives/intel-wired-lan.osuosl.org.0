Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F022D8B2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 11:10:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FD2B860CF;
	Wed, 29 May 2019 09:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuif-_JLZEF3; Wed, 29 May 2019 09:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D61C0860CB;
	Wed, 29 May 2019 09:10:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 41E681BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E3AC2278C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7jIrL4BaVBq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:46:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BBB322654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:46:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:46:57 -0700
X-ExtLoop1: 1
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2019 10:46:57 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 May 2019 10:46:41 -0700
Message-Id: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
X-Mailman-Approved-At: Wed, 29 May 2019 09:10:29 +0000
Subject: [Intel-wired-lan] [PATCH net-next v1 0/7] net/sched: Add txtime
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, we are seeing packets being transmitted outside their timeslices. We
can confirm that the packets are being dequeued at the right time. So, the
delay is induced after the packet is dequeued, because taprio, without any
offloading, has no control of when a packet is actually transmitted.

In order to solve this, we are making use of the txtime feature provided by ETF
qdisc. Hardware offloading needs to be supported by the ETF qdisc in order to
take advantage of this feature. The taprio qdisc will assign txtime (in
skb->tstamp) for all the packets which do not have the txtime allocated via the
SO_TXTIME socket option. For the packets which already have SO_TXTIME set,
taprio will validate whether the packet will be transmitted in the correct
interval.

In order to support this, the following parameters have been added:
- offload (taprio): This is added in order to support different offloading
  modes which will be added in the future.
- txtime-delay (taprio): this is the time the packet takes to traverse through
  the kernel to adapter card.
- skip_sock_check (etf): etf qdisc currently drops any packet which does not
  have the SO_TXTIME socket option set. This check can be skipped by specifying
  this option.

Following is an example configuration:

$ tc qdisc replace dev $IFACE parent root handle 100 taprio \\
      num_tc 3 \\
      map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \\
      queues 1@0 1@0 1@0 \\
      base-time $BASE_TIME \\
      sched-entry S 01 300000 \\
      sched-entry S 02 300000 \\
      sched-entry S 04 400000 \\
      offload 2 \\
      txtime-delay 40000 \\
      clockid CLOCK_TAI

$ tc qdisc replace dev $IFACE parent 100:1 etf \\
      offload delta 200000 clockid CLOCK_TAI skip_sock_check

Here, the "offload" parameter is indicating that the TXTIME_OFFLOAD mode is
enabled. Also, that all the traffic classes have been assigned the same queue.
This is to prevent the traffic classes in the lower priority queues from
getting starved. Note that this configuration is specific to the i210 ethernet
card. Other network cards where the hardware queues are given the same
priority, might be able to utilize more than one queue.

Following are some of the other highlights of the series:
- Fix a bug where hardware timestamping and SO_TXTIME options cannot be used
  together. (Patch 1)
- Introduce hardware offloading. This patch introduces offload parameter which
  can be used to enable the txtime offload mode. It will also support enabling
  full offload when the support is available in drivers. (Patch 3)
- Make TxTime assist mode work with TCP packets. (Patch 6 & 7)


The following changes are recommended to be done in order to get the best
performance from taprio in this mode:
# ip link set dev enp1s0 mtu 1514
# ethtool -K eth0 gso off
# ethtool -K eth0 tso off
# ethtool --set-eee eth0 eee off

Thanks,
Vedang Patel

Vedang Patel (6):
  igb: clear out tstamp after sending the packet.
  etf: Add skip_sock_check
  taprio: calculate cycle_time when schedule is installed
  taprio: Add support for txtime offload mode.
  taprio: make clock reference conversions easier
  taprio: Adjust timestamps for TCP packets.

Vinicius Costa Gomes (1):
  taprio: Add the skeleton to enable hardware offloading

 drivers/net/ethernet/intel/igb/igb_main.c |   1 +
 include/uapi/linux/pkt_sched.h            |   6 +
 net/sched/sch_etf.c                       |  10 +
 net/sched/sch_taprio.c                    | 548 ++++++++++++++++++++--
 4 files changed, 532 insertions(+), 33 deletions(-)

-- 
2.17.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
