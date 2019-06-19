Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 213664BFDC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 19:40:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A25A3203D4;
	Wed, 19 Jun 2019 17:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EhT2AsfpaR51; Wed, 19 Jun 2019 17:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDC95204D8;
	Wed, 19 Jun 2019 17:40:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A00251BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BB3A8669E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sW5rSwSDpRl8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 17:40:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81EBF86689
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:40:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 10:40:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="311413543"
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga004.jf.intel.com with ESMTP; 19 Jun 2019 10:40:20 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 19 Jun 2019 10:40:09 -0700
Message-Id: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
Subject: [Intel-wired-lan] [PATCH net-next v4 0/7] net/sched: Add
 txtime-assist support for taprio.
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
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 jakub.kicinski@netronome.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes in v4:
- Remove inline directive from functions in foo.c.
- Fix spacing in pkt_sched.h (for etf patch).

Changes in v3:
- Simplify implementation for taprio flags. 
- txtime_delay can only be set if txtime-assist mode is enabled.
- txtime_delay and flags will only be visible in tc output if set by user.
- Minor changes in error reporting.

Changes in v2:
- Txtime-offload has now been renamed to txtime-assist mode.
- Renamed the offload parameter to flags.
- Removed the code which introduced the hardware offloading functionality.

Original Cover letter (with above changes included)
--------------------------------------------------

Currently, we are seeing packets being transmitted outside their
timeslices. We can confirm that the packets are being dequeued at the right
time. So, the delay is induced after the packet is dequeued, because
taprio, without any offloading, has no control of when a packet is actually
transmitted.

In order to solve this, we are making use of the txtime feature provided by
ETF qdisc. Hardware offloading needs to be supported by the ETF qdisc in
order to take advantage of this feature. The taprio qdisc will assign
txtime (in skb->tstamp) for all the packets which do not have the txtime
allocated via the SO_TXTIME socket option. For the packets which already
have SO_TXTIME set, taprio will validate whether the packet will be
transmitted in the correct interval.

In order to support this, the following parameters have been added:
- flags (taprio): This is added in order to support different offloading
  modes which will be added in the future.
- txtime-delay (taprio): This indicates the minimum time it will take for
  the packet to hit the wire after it reaches taprio_enqueue(). This is
  useful in determining whether we can transmit the packet in the remaining
  time if the gate corresponding to the packet is currently open.
- skip_skb_check (ETF): ETF currently drops any packet which does not have
  the SO_TXTIME socket option set. This check can be skipped by specifying
  this option.

Following is an example configuration:

tc qdisc replace dev $IFACE parent root handle 100 taprio \\
    num_tc 3 \\
    map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \\
    queues 1@0 1@0 1@0 \\
    base-time $BASE_TIME \\
    sched-entry S 01 300000 \\
    sched-entry S 02 300000 \\
    sched-entry S 04 400000 \\
    flags 0x1 \\
    txtime-delay 200000 \\
    clockid CLOCK_TAI

tc qdisc replace dev $IFACE parent 100:1 etf \\
    offload delta 200000 clockid CLOCK_TAI skip_skb_check

Here, the "flags" parameter is indicating that the txtime-assist mode is
enabled. Also, all the traffic classes have been assigned the same queue.
This is to prevent the traffic classes in the lower priority queues from
getting starved. Note that this configuration is specific to the i210
ethernet card. Other network cards where the hardware queues are given the
same priority, might be able to utilize more than one queue.

Following are some of the other highlights of the series:
- Fix a bug where hardware timestamping and SO_TXTIME options cannot be
  used together. (Patch 1)
- Introduces the skip_skb_check option.  (Patch 2)
- Make TxTime assist mode work with TCP packets (Patch 7).

The following changes are recommended to be done in order to get the best
performance from taprio in this mode:
# TSN in general does not allow Jumbo frames.
ip link set dev enp1s0 mtu 1514
# Disable segmentation offload. This is to prevent NIC from sending packets
# after the gate for a traffic class has closed.
ethtool -K eth0 gso off 
ethtool -K eth0 tso off
# Disable energy efficient ethernet to make sure there are no latency
# spikes when NIC is trying to wake up when the packet is supposed to be
# sent.
ethtool --set-eee eth0 eee off

Thanks,
Vedang Patel

Vedang Patel (7):
  igb: clear out tstamp after sending the packet
  etf: Add skip_sock_check
  taprio: calculate cycle_time when schedule is installed
  taprio: Remove inline directive
  taprio: Add support for txtime-assist mode
  taprio: make clock reference conversions easier
  taprio: Adjust timestamps for TCP packets

 drivers/net/ethernet/intel/igb/igb_main.c |   1 +
 include/uapi/linux/pkt_sched.h            |   5 +
 net/sched/sch_etf.c                       |  10 +
 net/sched/sch_taprio.c                    | 431 +++++++++++++++++++++++++++---
 4 files changed, 413 insertions(+), 34 deletions(-)

-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
